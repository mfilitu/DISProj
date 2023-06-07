from flask import Flask, render_template, request
import psycopg2
#psql -U postgres -d DIStest -f .\schema.sql
#psql -U postgres -d DIStest -f .\schema_ins.sql
app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret'

@app.route('/')
def home():
	Companies = get_company_name()

	return render_template('home.html', Companies=Companies)

@app.route('/rockets', methods=['POST'])
def rockets():
	company_name = request.form['Companies']
	rockets = get_rockets_by_company(company_name)
	return render_template('rockets.html', rockets=rockets)

def get_company_name():
	conn = psycopg2.connect("dbname=distest user=postgres password=1074")
	cur = conn.cursor()
	cur.execute("SELECT name FROM Companies")
	companies = cur.fetchall()
	conn.close()
	return companies

def get_rockets_by_company(company_name):
	conn = psycopg2.connect("dbname=distest user=postgres password=1074")
	cur = conn.cursor()
	cur.execute("SELECT launch_data, succesful, cost, rocket_id, company_id, location_id FROM rockets WHERE company_id = (SELECT name FROM company WHERE name = %s)", (company_name,))
	rockets = cur.fetchall()
	conn.close()
	return rockets

if __name__ == '__main__':
	app.run(debug=True)