from flask import Flask, render_template, request
import psycopg2

#psql -U postgres -d distest -f .\schema.sql
#psql -U postgres -d distest -f .\schema_ins.sql
app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret'

# set your own database
#db = "dbname='bank' user='postgres' host='127.0.0.1' password = 'UIS'"
db = "dbname=distest user=postgres password=1074"
conn = psycopg2.connect(db)

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

def get_company_name(conn):
	cur = conn.cursor()
	cur.execute("SELECT company_name FROM Companies")
	companies = cur.fetchall()
	return companies

def get_rockets_by_company(conn):
	cur = conn.cursor()
	cur.execute("SELECT rocket_name FROM Rockets")
	rockets = cur.fetchall()
	return rockets

