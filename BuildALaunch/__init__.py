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

@app.route('/companies')
def companies():
	companies = get_company_name(conn)
	
	return render_template('companies.html', companies=companies)

@app.route('/rockets', methods=['POST', 'GET'])
def rockets():
	
	rockets = get_rockets_by_company(conn)
	return render_template('rockets.html', rockets=rockets)

@app.route('/locations', methods=['POST', 'GET'])
def location():
	locations = get_location(conn)
	return render_template('locations.html', locations=locations)


def get_company_name(conn):
	cur = conn.cursor()
	cur.execute("SELECT company_name FROM Companies;")
	companies = cur.fetchall()
	return companies

def get_rockets_by_company(conn):
	cur = conn.cursor()
	cur.execute("SELECT rocket_name FROM Rockets;")
	rockets = cur.fetchall()
	return rockets

def get_location(conn):
	cur = conn.cursor()
	cur.execute("SELECT location_name FROM Locations;")
	locations = cur.fetchall()
	return locations

