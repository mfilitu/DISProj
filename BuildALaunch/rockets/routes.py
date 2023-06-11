from BuildALaunch import app, conn
from flask import Flask, render_template, request

# Rockets page of the website where the user can choose a rocket
@app.route('/rockets', methods=['POST', 'GET'])
def rockets():
	cid = request.args.get('cid')
	rocketInfo = get_rocket_info(conn)
	companies = get_companies_id(conn)
	return render_template('rockets.html', rocketInfo=rocketInfo, cid=cid, companies=companies)

# This code gets all the rocket information from the database and returns it in a list of tuples
def get_rocket_info(conn):
	cur = conn.cursor()
	cur.execute("""SELECT companies.id, rocket_name, success_rate, rockets.id FROM Rockets
					JOIN produces ON produces.rocket_id = rockets.id
					JOIN companies ON produces.company_id = companies.id 
					JOIN rocket_success_rate ON rockets.id = rocket_success_rate.rocket_id
					ORDER BY rocket_name;
					""")
	rockets = cur.fetchall()
	return rockets

# This code gets a list of all the companies in the database, 
# and creates a list of all the company names and their ids.
def get_companies_id(conn):
	cur = conn.cursor()
	cur.execute("""SELECT company_name, id 
				   FROM companies
				   ORDER BY company_name""")
	return cur.fetchall()