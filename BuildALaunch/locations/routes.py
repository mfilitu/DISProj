from BuildALaunch import app, conn
from flask import Flask, render_template, request

# Countries page of the website where the user can choose a country
@app.route('/countries', methods=['POST', 'GET'])
def countries():
	cid = request.args.get('cid')
	rid = request.args.get('rid')
	countries = get_countries(conn)
	locations = get_locations(conn)
	return render_template('countries.html', countries=countries, locations=locations, cid=cid, rid=rid)

# This function returns all distinct countries in the Locations table.
def get_countries(conn):
	cur = conn.cursor()
	cur.execute("""SELECT DISTINCT country 
				   FROM Locations
				   ORDER BY country;""")
	countries = cur.fetchall()
	return countries


# This code gets all the location names from the database and returns them as a list. 
def get_locations(conn):
	cur = conn.cursor()
	cur.execute("""SELECT locations.id, locations.country, locations.location_name, success_rate
				   FROM locations
				   JOIN location_success_rate 
				   ON locations.id = location_success_rate.location_id;""")
	locations = cur.fetchall()
	return locations
