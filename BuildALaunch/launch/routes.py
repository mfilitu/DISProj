from BuildALaunch import app, conn
from flask import Flask, render_template, request
import datetime
from BuildALaunch.database.SuccessRates import Update_SuccesRates
import random as rnd

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
	
	company_success_rate, rocket_success_rate, location_success_rate = fetch_success_rate(cid, rid, lid)
	company_success_rate = float(company_success_rate[0])
	rocket_success_rate = float(rocket_success_rate[0])
	location_success_rate = float(location_success_rate[0])
	
	if company_success_rate == 0:
		company_success_rate = 0.01
	if rocket_success_rate == 0:
		rocket_success_rate = 0.01
	if location_success_rate == 0:
		location_success_rate = 0.01

	print(company_success_rate, rocket_success_rate, location_success_rate)
	final_success_rate = (float(0.98) * float((company_success_rate * rocket_success_rate * location_success_rate)))*100

	cur = conn.cursor()
	#rules of the launch
	# 1 - if the rocket is from the same company then the success rate is + 10% in sql
	# 2 - if the rocket has been launched from the same location then the succ rate + 10% in sql
	# 3 - noise 0.98
	print("bf:",final_success_rate)
	cur.execute("""SELECT * FROM Produces WHERE company_id = %s AND rocket_id = %s""", (cid, rid))
	rule1 = cur.fetchall()
	if rule1 != []:
		final_success_rate = final_success_rate * 1.1
		print("dur:",final_success_rate)
	
	cur.execute("""SELECT * FROM Missions WHERE location_id = %s AND rocket_id = %s""", (lid, rid))
	rule2 = cur.fetchall()
	if rule2 != []:
		final_success_rate = final_success_rate * 1.1
		print("dur:",final_success_rate)
	
	print("aft:",final_success_rate)
	return render_template('launch.html', cname=cname, rname=rname, lname=lname, 
			company_success_rate=company_success_rate, 
			rocket_success_rate=rocket_success_rate, 
			location_success_rate=location_success_rate, final_success_rate=final_success_rate, rid=rid, cid=cid, lid=lid)

#rng from 0.00 to 100.00
def rng():
	return rnd.uniform(0.00, 100.00)

# coutcomes of the launch
@app.route('/outcome', methods=['POST', 'GET'])
def outcome():
	rng1 = rng()
	final_success_rate = float(request.args.get('final_success_rate'))
	cur = conn.cursor()
	rid = int(request.args.get('rid'))
	cid = int(request.args.get('cid'))
	lid = int(request.args.get('lid'))
	
    
	if rng1 <= final_success_rate:
		#INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
		cur.execute("""INSERT INTO Missions (launch_data, succesful, cost, rocket_id, company_id, location_id) 
		VALUES (%s, true, NULL, %s, %s, %s);""",
		(datetime.datetime.now(), rid, cid, lid))
		conn.commit()
		cur.execute("""SELECT max(id) FROM Missions;""")
		mission_id = cur.fetchall()[0][0]
		Update_SuccesRates(conn, mission_id)
		print(rng1, final_success_rate)
		print(mission_id)
		print(datetime.datetime.now())
		return render_template("success.html")
	else:
		cur.execute("""INSERT INTO Missions (launch_data, succesful, cost, rocket_id, company_id, location_id) 
		VALUES (%s, false, NULL, %s, %s, %s);""",
		(datetime.datetime.now(), rid, cid, lid))
		conn.commit()
		cur.execute("""SELECT max(id) FROM Missions;""")
		mission_id = cur.fetchall()[0][0]
		Update_SuccesRates(conn, mission_id)
		print(rng1, final_success_rate)
		print(mission_id)
		print(datetime.datetime.now())
		return render_template("fail.html")
    
# Fetches the company, rocket and location success rates where the id matches     
def fetch_success_rate(cid, rid, lid):
	cur = conn.cursor()
	cur.execute("""SELECT success_rate 
				FROM company_success_rate 
				WHERE company_id = %s;""", (cid,))
	company_success_rate = cur.fetchone()
	cur.execute("""SELECT success_rate
				FROM rocket_success_rate
				WHERE rocket_id = %s;""", (rid,))
	rocket_success_rate = cur.fetchone()
	cur.execute("""SELECT success_rate
				FROM location_success_rate
				WHERE location_id = %s;""", (lid,))
	location_success_rate = cur.fetchone()
	return company_success_rate, rocket_success_rate, location_success_rate

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