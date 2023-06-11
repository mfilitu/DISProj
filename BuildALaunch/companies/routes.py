from BuildALaunch import app, conn
from flask import Flask, render_template, request


# Companies page of the website where the user can choose a company
@app.route('/companies', methods=['POST', 'GET'])
def companies():
	companies = get_company_info(conn)
	
	# render_template() is a function that takes a template filename and a variable list of template
	# arguments and returns the same template, but with all the placeholders in it replaced with actual values
	return render_template('companies.html', companies=companies)

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
				   GROUP BY companies.company_name, companies.id, company_success_rate.success_rate
				   ORDER BY company_name;
				   """)
	companies = cur.fetchall()
	return companies