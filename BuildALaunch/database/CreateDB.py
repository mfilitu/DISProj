from BuildALaunch.database.SuccessRates import Insert_SuccesRates

def createDatabase(conn):
    cur = conn.cursor()
    cur.execute(open("BuildALaunch/database/schema_drop.sql", "r").read())
    cur.execute(open("BuildALaunch/database/schema.sql", "r").read())
    cur.execute(open("BuildALaunch/database/schema_ins.sql", "r").read())
    conn.commit()
    Insert_SuccesRates(conn)