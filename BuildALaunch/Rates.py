import psycopg2
import numpy as np
conn = psycopg2.connect("dbname=distest user=postgres password=1074")

def Insert_RocketSuccesRate(conn): 
    RID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    RID_cursor.execute("SELECT id FROM Rockets")
    Rocket_rows = RID_cursor.fetchall()
    for Rocket in Rocket_rows:
        rid = Rocket[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s AND succesful = TRUE", (rid,))
        successful_mission_rows = MID_cursor.fetchall()
        successful = successful_mission_rows[0][0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s", (rid,))
        total_mission_rows = MID_cursor.fetchall()
        total = total_mission_rows[0][0]
        if (total != 0):
            RocketSuccesRate = successful / total
            INS_cursor.execute("""INSERT INTO Rocket_success_rate (rocket_id, success_rate)VALUES (%s, %s);""", (rid, RocketSuccesRate))
            conn.commit()

def Insert_CompanySuccesRate(conn): 
    CID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    CID_cursor.execute("SELECT id FROM Companies")
    Companies = CID_cursor.fetchall()
    for company in Companies:
        cid = company[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s AND succesful = TRUE", (cid,))
        successful_mission_rows = MID_cursor.fetchone()
        successful = successful_mission_rows[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s", (cid,))
        total_mission_rows = MID_cursor.fetchone()
        total = total_mission_rows[0]
        if (total != 0):
            CompanySuccesRate = successful / total
            INS_cursor.execute("""INSERT INTO Company_success_rate (company_id, success_rate)VALUES (%s, %s);""", (cid, CompanySuccesRate))
            conn.commit()

def Insert_LocationSuccesRate(conn): 
    LID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    LID_cursor.execute("SELECT id FROM Locations")
    Locations = LID_cursor.fetchall()
    for location in Locations:
        lid = location[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s AND succesful = TRUE", (lid,))
        successful_mission_rows = MID_cursor.fetchone()
        successful = successful_mission_rows[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s", (lid,))
        total_mission_rows = MID_cursor.fetchone()
        total = total_mission_rows[0]
        if (total != 0):
            LocationSuccesRate = successful / total
            INS_cursor.execute("""INSERT INTO Location_success_rate (location_id, success_rate)VALUES (%s, %s);""", (lid, LocationSuccesRate))
            conn.commit()

Insert_RocketSuccesRate(conn)
Insert_CompanySuccesRate(conn)
Insert_LocationSuccesRate(conn)