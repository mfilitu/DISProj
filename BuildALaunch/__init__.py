from flask import Flask, render_template, request
from BuildALaunch.SuccessRates import Insert_SuccesRates
import psycopg2

#psql -U postgres -d distest -f .\schema.sql
#psql -U postgres -d distest -f .\schema_ins.sql
app = Flask(__name__, template_folder='templates', static_folder='templates/css')
app.config['SECRET_KEY'] = 'secret'

# set your own database
#db = "dbname='bank' user='postgres' host='127.0.0.1' password = 'UIS'"
db = "dbname=distest user=postgres password=1074"
conn = psycopg2.connect(db)

# Inserts the succesrates of all rockets, companies and location in the db
# Insert_SuccesRates(conn)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/companies', methods=['POST', 'GET'])
def companies():
	companies = get_company_info(conn)
	
	return render_template('companies.html', companies=companies)

@app.route('/rockets', methods=['POST', 'GET'])
def rockets():
	cid = request.args.get('cid')
	rocketInfo = get_rocket_info(conn)
	companies = get_companies_id(conn)
	return render_template('rockets.html', rocketInfo=rocketInfo, cid=cid, companies=companies)

@app.route('/locations', methods=['POST', 'GET'])
def location():
	cid = request.args.get('cid')
	rid = request.args.get('rid')
	in_company = request.args.get('rocket')
	locations = get_location(conn)
	return render_template('locations.html', locations=locations, cid=cid, rid=rid)


@app.route('/countries', methods=['POST', 'GET'])
def countries():
	countries = get_country(conn)
	if request.method == 'POST':
		selected_country = request.form.get('country')
		return render_template('countries.html', countries=countries, country1=selected_country)
	return render_template('countries.html', countries=countries)

@app.route('/launch', methods=['POST', 'GET'])
def launch():
    country = request.form.get('country')
    rocket = request.form.get('rocket')
    company = request.form.get('company')
    location = request.form.get('location')
    
    return render_template('launch.html', country=country, rocket=rocket, company=company, location=location)


def get_company_info(conn):
	cur = conn.cursor()
	cur.execute("""SELECT companies.company_name, COUNT(*) AS mission_count,
	 			   company_success_rate.success_rate, companies.id
				   FROM companies
				   JOIN missions on companies.id = missions.company_id
				   JOIN company_success_rate on companies.id = company_success_rate.company_id
				   GROUP BY companies.company_name, companies.id, company_success_rate.success_rate;
				   """)
	companies = cur.fetchall()
	return companies

def get_companies_id(conn):
	cur = conn.cursor()
	cur.execute("""SELECT company_name, id FROM companies""")
	return cur.fetchall()

def get_rocket_info(conn):
	cur = conn.cursor()
	cur.execute("""SELECT companies.id, rocket_name, success_rate, rockets.id FROM Rockets
					JOIN produces ON produces.rocket_id = rockets.id
					JOIN companies ON produces.company_id = companies.id 
					JOIN rocket_success_rate ON rockets.id = rocket_success_rate.rocket_id
					""")
	rockets = cur.fetchall()
	return rockets

def get_location(conn):
	cur = conn.cursor()
	cur.execute("SELECT location_name FROM Locations;")
	locations = cur.fetchall()
	return locations

def get_country(conn):
	cur = conn.cursor()
	cur.execute("SELECT DISTINCT country FROM Locations;")
	countries = cur.fetchall()
	return countries