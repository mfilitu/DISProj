from flask import Flask, render_template, request, Blueprint
from BuildALaunch.database.SuccessRates import Insert_SuccesRates, Update_SuccesRates
import psycopg2
from BuildALaunch.database.CreateDB import createDatabase


app = Flask(__name__, template_folder='templates', static_folder='templates/css')
app.config['SECRET_KEY'] = 'secret'



# set your own database
#db = "dbname='' user='' host='' password = ''"
db = "dbname=distest user=postgres password=1074"
conn = psycopg2.connect(db)


# Creates the schemas for our tables and inserts all of the data
createDatabase(conn)

# Home page of the website
# app.route is a decorator that tells the application which URL should call the associated function
@app.route('/')
def home():
    return render_template('home.html')

import BuildALaunch.companies.routes
import BuildALaunch.rockets.routes
import BuildALaunch.locations.routes
import BuildALaunch.launch.routes
