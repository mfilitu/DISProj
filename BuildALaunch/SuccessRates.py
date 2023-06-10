import psycopg2
def Insert_RocketSuccesRate(conn):
    """
    Calulates and inserts the success rate of each rocket in the database.

    Args:
        conn (connection): The connection with the database.

    Returns:
        None
    """
    RID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    RID_cursor.execute("SELECT id FROM Rockets")
    Rocket_rows = RID_cursor.fetchall()
    for Rocket in Rocket_rows:
        rid = Rocket[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s AND succesful = TRUE", (rid,))
        successful = MID_cursor.fetchone()[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s", (rid,))
        total = MID_cursor.fetchone()[0]
        sql = None
        if (total != 0):
            RocketSuccesRate = successful / total
            sql = "INSERT INTO Rocket_success_rate (rocket_id, success_rate) VALUES ({}, {});".format(rid, RocketSuccesRate)
        else:
            sql = "INSERT INTO Rocket_success_rate (rocket_id, success_rate)VALUES (%s, NULL);".format(rid)
        INS_cursor.execute(sql)
        conn.commit()
    return None


def Insert_CompanySuccesRate(conn):
    """
    Calulates and inserts the success rate of each company in the database.

    Args:
        conn (connection): The connection with the database.

    Returns:
        None
    """
    CID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    CID_cursor.execute("SELECT id FROM Companies")
    Companies = CID_cursor.fetchall()
    for company in Companies:
        cid = company[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s AND succesful = TRUE", (cid,))
        successful = MID_cursor.fetchone()[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s", (cid,))
        total = MID_cursor.fetchone()[0]
        sql = None
        if (total == 0):
            sql = "INSERT INTO Company_success_rate (company_id, success_rate) VALUES ({}, NULL);".format(cid)
        else:
            CompanySuccesRate = successful / total
            sql = "INSERT INTO Company_success_rate (company_id, success_rate) VALUES ({}, {});".format(cid, CompanySuccesRate)
        INS_cursor.execute(sql)
        conn.commit()
    return None

def Insert_LocationSuccesRate(conn):
    """
    Calulates and inserts the success rate of each location in the database.

    Args:
        conn (connection): The connection with the database.

    Returns:
        None
    """
    LID_cursor = conn.cursor()
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()
    LID_cursor.execute("SELECT id FROM Locations")
    Locations = LID_cursor.fetchall()

    for location in Locations:
        lid = location[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s AND succesful = TRUE", (lid,))
        successful = MID_cursor.fetchone()[0]
        MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s", (lid,))
        total = MID_cursor.fetchone()[0]

        sql = None
        if (total == 0):
            sql = "INSERT INTO Location_success_rate (location_id, success_rate) VALUES ({}, NULL);".format(lid)
        else:
            LocationSuccesRate = successful / total
            sql = "INSERT INTO Location_success_rate (location_id, success_rate) VALUES ({}, {});".format(lid, LocationSuccesRate)
        INS_cursor.execute(sql)
        conn.commit()

def Update_RocketSuccesRate(conn, rocket_id): 
    """
    Calulates and updates the success rate of each location in the database.

    Args:
        conn (connection): The connection with the database.
        rocket_id (integer): the ID of the rocket which success rate needs updated. 

    Returns:
        None
    """
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()

    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s AND succesful = TRUE", (rocket_id,))
    successful_mission_rows = MID_cursor.fetchone()
    successful = successful_mission_rows[0]
    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s", (rocket_id,))
    total_mission_rows = MID_cursor.fetchone()
    total = total_mission_rows[0]
    RocketSuccesRate = successful / total
    
    INS_cursor.execute("""UPDATE Rocket_success_rate
                          SET success_rate = %s
                          WHERE rocket_id = %s;""", (RocketSuccesRate, rocket_id))
    conn.commit()
    return None

def Update_RocketSuccesRate(conn, rocket_id): 
    """
    Calulates and updates the success rate of each location in the database.

    Args:
        conn (connection): The connection with the database.
        rocket_id (integer): the ID of the rocket which success rate needs updating. 

    Returns:
        None
    """ 
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()

    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s AND succesful = TRUE", (rocket_id,))
    successful_mission_rows = MID_cursor.fetchone()
    successful = successful_mission_rows[0]
    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE rocket_id = %s", (rocket_id,))
    total_mission_rows = MID_cursor.fetchone()
    total = total_mission_rows[0]
    RocketSuccesRate = successful / total
    
    INS_cursor.execute("""UPDATE Rocket_success_rate
                          SET success_rate = %s
                          WHERE rocket_id = %s;""", (RocketSuccesRate, rocket_id))
    conn.commit()
    return None

def Update_CompanySuccesRate(conn, company_id): 
    """
    Calulates and updates the success rate of each location in the database.

    Args:
        conn (connection): The connection with the database.
        company_id (integer): the ID of the company which success rate needs updating. 

    Returns:
        None
    """
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()

    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s AND succesful = TRUE", (company_id,))
    successful_mission_rows = MID_cursor.fetchone()
    successful = successful_mission_rows[0]
    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE company_id = %s", (company_id,))
    total_mission_rows = MID_cursor.fetchone()
    total = total_mission_rows[0]
    SuccesRate = successful / total
    
    INS_cursor.execute("""UPDATE Company_success_rate
                          SET success_rate = %s
                          WHERE company_id = %s;""", (SuccesRate, company_id))
    conn.commit()
    return None

def Update_LocationSuccesRate(conn, location_id): 
    """
    Calulates and updates the success rate of each location in the database.

    Args:
        conn (connection): The connect with the database.
        location_id (integer): the ID of the location which success rate needs updating. 

    Returns:
        None
    """
    MID_cursor = conn.cursor()
    INS_cursor = conn.cursor()

    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s AND succesful = TRUE", (location_id,))
    successful_mission_rows = MID_cursor.fetchone()
    successful = successful_mission_rows[0]
    MID_cursor.execute("SELECT COUNT(succesful) FROM Missions WHERE location_id = %s", (location_id,))
    total_mission_rows = MID_cursor.fetchone()
    total = total_mission_rows[0]
    SuccesRate = successful / total
    
    INS_cursor.execute("""UPDATE Location_success_rate
                          SET success_rate = %s
                          WHERE location_id = %s;""", (SuccesRate, location_id))
    conn.commit()
    return None
    

def Insert_SuccesRates(conn):
    """
    Calulates and inserts the success rate of each rocket, company,
    and location in the database.

    Args:
        conn (connection): The connection with the database.

    Returns:
        None
    """
    Insert_RocketSuccesRate(conn)
    print("Inserted Rocket succes rate")
    Insert_CompanySuccesRate(conn)
    print("Inserted company succes rate")
    Insert_LocationSuccesRate(conn)
    print("Inserted location succes rate")
    return None

def Update_SuccesRates(conn, mission_id):
    """
    Calulates and updates the success rate of each rocket, company,
    and location in the database.

    Args:
        conn (connection): The connection with the database.
        mission_id (integer): the ID of the newly inserted mission. 

    Returns:
        None
    """
    print("MID =", mission_id)
    cursor = conn.cursor()
    cursor.execute("""SELECT rocket_id, company_id, location_id 
                      FROM Missions
                      WHERE id = %s""", (mission_id,))
    rid, cid, lid = cursor.fetchone()
    Update_RocketSuccesRate(conn, rid)
    print("Updatede rocket succes rate")
    Update_CompanySuccesRate(conn, cid)
    print("Updatede company succes rate")
    Update_LocationSuccesRate(conn, lid)
    print("Updatede location succes rate")
    return None

# db = "dbname=distest user=postgres password=1074"
# conn = psycopg2.connect(db)
# Insert_SuccesRates(conn)