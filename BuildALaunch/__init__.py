from flask import Flask, render_template, request
from BuildALaunch.SuccessRates import Insert_SuccesRates
import psycopg2

#psql -U postgres -d distest -f .\schema.sql
#psql -U postgres -d distest -f .\schema_ins.sql

app = Flask(__name__, template_folder='templates', static_folder='templates/css')
app.config['SECRET_KEY'] = 'secret'

# set your own database
#db = "dbname='' user='' host='' password = ''"
db = "dbname=distest user=postgres password=1074"
conn = psycopg2.connect(db)

# Inserts the succesrates of all rockets, companies and location in the db
# Insert_SuccesRates(conn)

# Home page of the website
# app.route is a decorator that tells the application which URL should call the associated function
@app.route('/')
def home():
    return render_template('home.html')

# Companies page of the website where the user can choose a company
@app.route('/companies', methods=['POST', 'GET'])
def companies():
	companies = get_company_info(conn)
	
	# render_template() is a function that takes a template filename and a variable list of template
	# arguments and returns the same template, but with all the placeholders in it replaced with actual values
	return render_template('companies.html', companies=companies)

# Rockets page of the website where the user can choose a rocket
@app.route('/rockets', methods=['POST', 'GET'])
def rockets():
	cid = request.args.get('cid')
	rocketInfo = get_rocket_info(conn)
	companies = get_companies_id(conn)
	return render_template('rockets.html', rocketInfo=rocketInfo, cid=cid, companies=companies)

# Countries page of the website where the user can choose a country
@app.route('/countries', methods=['POST', 'GET'])
def countries():
	cid = request.args.get('cid')
	rid = request.args.get('rid')
	countries = get_country(conn)
	return render_template('countries.html', countries=countries, cid=cid, rid=rid)

# Locations page of the website where the user can choose a location
@app.route('/locations', methods=['POST', 'GET'])
def location():
	cid = request.args.get('cid')
	rid = request.args.get('rid')
	locations = get_location(conn)
	countries = get_country(conn)
	return render_template('locations.html', locations=locations, countries=countries, cid=cid, rid=rid)



# Launch page of the website where the user can see the launch information and the success rate
@app.route('/launch', methods=['POST', 'GET'])
def launch():
	cid = request.args.get('cid')
	rid = request.args.get('rid')
	lid = request.args.get('lid')
	cname, rname, lname = get_names(conn, cid, rid, lid)
	# company = request.form.get('company')
	# location = request.form.get('location')
    
	#rules of the launch
	# 1 - if the rocket is from the same company then the success rate is + 10%
	# 2 - if the rocket has been launched from the same location then the succ rate + 10%
	# 3 - noise 0.98
	
	#successrate = success_rate()

	return render_template('launch.html', cname=cname, rname=rname, lname=lname)

# Fetches the cid, rid and lid of rocket, company and location
def get_names(conn, cid, rid, lid):
	cur = conn.cursor()
	cur.execute(""" SELECT company_name 
					FROM companies 
					WHERE id = %s
				""", (cid,))
	cname = cur.fetchone()
	cur.execute("""SELECT rocket_name
					FROM rockets
					WHERE id = %s
				""", (rid,))
	rname = cur.fetchone()
	cur.execute(""" SELECT location_name 
					FROM locations 
					WHERE id = %s
				""", (lid,))
	lname = cur.fetchone()
	return cname, rname, lname

# This code gets the company name, the number of missions the company has, the company success rate,
# and the company id from the companies table, missions table, and company_success_rate table.
#  It then stores the results of the query in a variable called companies.
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

# This code gets a list of all the companies in the database, 
# and creates a list of all the company names and their ids.
def get_companies_id(conn):
	cur = conn.cursor()
	cur.execute("""SELECT company_name, id FROM companies""")
	return cur.fetchall()


# This code gets all the rocket information from the database and returns it in a list of tuples
def get_rocket_info(conn):
	cur = conn.cursor()
	cur.execute("""SELECT companies.id, rocket_name, success_rate, rockets.id FROM Rockets
					JOIN produces ON produces.rocket_id = rockets.id
					JOIN companies ON produces.company_id = companies.id 
					JOIN rocket_success_rate ON rockets.id = rocket_success_rate.rocket_id
					""")
	rockets = cur.fetchall()
	return rockets

# This code gets all the location names from the database and returns them as a list. 
def get_location(conn):
	cur = conn.cursor()
	cur.execute("SELECT location_name, id FROM Locations;")
	locations = cur.fetchall()
	return locations

# This function returns all distinct countries in the Locations table.
def get_country(conn):
	cur = conn.cursor()
	cur.execute("SELECT DISTINCT country FROM Locations;")
	countries = cur.fetchall()
	return countries