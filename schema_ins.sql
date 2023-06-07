DELETE FROM rockets;
DELETE FROM companies;
DELETE FROM locations;
DELETE FROM missions;
-- DATA FROM https://www.kaggle.com/datasets/agirlcoding/all-space-missions-from-1957
-- We picked 11 companies from the dataset
-- ====================================================================================================
--                                      COMPANIES
-- ====================================================================================================
INSERT INTO companies(name) VALUES ('SpaceX');
INSERT INTO companies(name) VALUES ('US Air Force');
INSERT INTO companies(name) VALUES ('RVSN USSR');
INSERT INTO companies(name) VALUES ('NASA');
INSERT INTO companies(name) VALUES ('Arianespace');
INSERT INTO companies(name) VALUES ('Boeing');
INSERT INTO companies(name) VALUES ('Blue Origin');
INSERT INTO companies(name) VALUES ('CASC');
INSERT INTO companies(name) VALUES ('General Dynamics');
INSERT INTO companies(name) VALUES ('KCST');

-- ====================================================================================================
--                                      LOCATIONS
-- ====================================================================================================
-- SpaceX locations
INSERT INTO locations(country, location_name) VALUES ('Marshall Islands', 'Omelek Island');
INSERT INTO locations(country, location_name) VALUES ('USA', 'Cape Canaveral AFS');
INSERT INTO locations(country, location_name) VALUES ('USA', 'Vandenberg AFB');
INSERT INTO locations(country, location_name) VALUES ('USA', 'Kennedy Space Center');
INSERT INTO locations(country, location_name) VALUES ('USA', 'Boca Chica');
-- US Air Force locations different from the above
-- RVSN USSR locations different from the above
INSERT INTO locations(country, location_name) VALUES ('Kazakhstan', 'Baikonur Cosmodrome');
INSERT INTO locations(country, location_name) VALUES ('Russia', 'Kapustin Yar');
INSERT INTO locations(country, location_name) VALUES ('Russia', 'Plesetsk Cosmodrome');
-- NASA locations different from the above
INSERT INTO locations(country, location_name) VALUES ('USA', 'Wallops Flight Facility');
-- Arianespace locations different from the above
INSERT INTO locations(country, location_name) VALUES ('France', 'Guiana Space Centre');
-- Boeing locations different from the above
-- Blue Origin locations different from the above
INSERT INTO locations(country, location_name) VALUES ('USA', 'Blue Origin Launch Site');
-- CASC locations different from the above
INSERT INTO locations(country, location_name) VALUES ('China', 'Jiuquan Satellite Launch Center');
INSERT INTO locations(country, location_name) VALUES ('China', 'Xichang Satellite Launch Center');
INSERT INTO locations(country, location_name) VALUES ('China', 'Taiyuan Satellite Launch Center');
INSERT INTO locations(country, location_name) VALUES ('China', 'Wenchang Satellite Launch Center');
INSERT INTO locations(country, location_name) VALUES ('China', 'Tai Rui Barge'); -- Was actually in the Yellow Sea
-- General Dynamics locations different from the above
-- KCST locations different from the above
INSERT INTO locations(country, location_name) VALUES ('North Korea', 'Tonghae Satellite Launching Ground'); 
INSERT INTO locations(country, location_name) VALUES ('North Korea', 'Sohae Satellite Launching Station'); 


-- ====================================================================================================
--                                      ROCKETS
-- ====================================================================================================
-- SpaceX rockets
INSERT INTO rockets(name, active) VALUES ('Falcon 1', false);
INSERT INTO rockets(name, active) VALUES ('Falcon Heavy', true);
INSERT INTO rockets(name, active) VALUES ('Falcon 9', true);
INSERT INTO rockets(name, active) VALUES ('Starship Prototype', true);
-- US Air Force rockets  
INSERT INTO rockets(name, active) VALUES ('SM-65B Atlas', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-18', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-19', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-2M', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-21', false);
INSERT INTO rockets(name, active) VALUES ('Delta', false);
INSERT INTO rockets(name, active) VALUES ('Scout X', false);
INSERT INTO rockets(name, active) VALUES ('Titan III', false);

-- RVSN USSR rockets
INSERT INTO rockets(name, active) VALUES ('Cosmos-1', false);
INSERT INTO rockets(name, active) VALUES ('Cosmos-2I', false);
INSERT INTO rockets(name, active) VALUES ('Cosmos-3', false);
INSERT INTO rockets(name, active) VALUES ('Cosmos-3M', false);
INSERT INTO rockets(name, active) VALUES ('Cosmos-3MRB', false);
INSERT INTO rockets(name, active) VALUES ('Energiya/Buran', false);
INSERT INTO rockets(name, active) VALUES ('Energiya/Polyus', false);
INSERT INTO rockets(name, active) VALUES ('Molniya', false);
INSERT INTO rockets(name, active) VALUES ('Molniya-M', false);
INSERT INTO rockets(name, active) VALUES ('N1-L3', false);
INSERT INTO rockets(name, active) VALUES ('Poliot', false);
INSERT INTO rockets(name, active) VALUES ('Proton K', false);
INSERT INTO rockets(name, active) VALUES ('Soyuz', false);
INSERT INTO rockets(name, active) VALUES ('Soyuz L', false);
INSERT INTO rockets(name, active) VALUES ('Soyuz M', false);
INSERT INTO rockets(name, active) VALUES ('Soyuz U', false);
INSERT INTO rockets(name, active) VALUES ('Sputnik', false);
INSERT INTO rockets(name, active) VALUES ('Tsyklon', false);
INSERT INTO rockets(name, active) VALUES ('Tsyklon-2', false);
INSERT INTO rockets(name, active) VALUES ('Tsyklon-2A', false);
INSERT INTO rockets(name, active) VALUES ('Tsyklon-3', false);
INSERT INTO rockets(name, active) VALUES ('Voskhod', false);
INSERT INTO rockets(name, active) VALUES ('Vostok-2', false);
INSERT INTO rockets(name, active) VALUES ('Vostok-2M', false);
INSERT INTO rockets(name, active) VALUES ('Zenit-2', false);

-- NASA rockets
INSERT INTO rockets(name, active) VALUES ('Ares 1-X', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-D', false);
INSERT INTO rockets(name, active) VALUES ('Blue Scout II', false);
INSERT INTO rockets(name, active) VALUES ('Mercury-Redstone', false);
INSERT INTO rockets(name, active) VALUES ('Saturn I', false);
INSERT INTO rockets(name, active) VALUES ('Saturn IB', false);
INSERT INTO rockets(name, active) VALUES ('Saturn V', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-1', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-2', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-3', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-4', false);
INSERT INTO rockets(name, active) VALUES ('Space Shuttle Atlantis', false);
INSERT INTO rockets(name, active) VALUES ('Space Shuttle Challenger', false);
INSERT INTO rockets(name, active) VALUES ('Space Shuttle Columbia', false);
INSERT INTO rockets(name, active) VALUES ('Space Shuttle Discovery', false);
INSERT INTO rockets(name, active) VALUES ('Space Shuttle Endeavour', false);
INSERT INTO rockets(name, active) VALUES ('Thor-DM 18 Able I', false);
INSERT INTO rockets(name, active) VALUES ('Titan II GLV', false);

-- Arianespace rockets
INSERT INTO rockets(name, active) VALUES ('Ariane 1', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 2', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 3', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 40', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 42L', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 42P', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 44L', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 44LP', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 44P', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 5 ECA', true);
INSERT INTO rockets(name, active) VALUES ('Ariane 5 ES', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 5 G', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 5 G+', false);
INSERT INTO rockets(name, active) VALUES ('Ariane 5 GS', false);
INSERT INTO rockets(name, active) VALUES ('Soyuz 2.1b/Fregat', true);
INSERT INTO rockets(name, active) VALUES ('Soyuz ST-A/Fregat', true);
INSERT INTO rockets(name, active) VALUES ('Soyuz ST-B/Fregat-M', true);
INSERT INTO rockets(name, active) VALUES ('Vega', true);

-- Boeing rockets
INSERT INTO rockets(name, active) VALUES ('Delta II', false);
INSERT INTO rockets(name, active) VALUES ('Delta III', false);
INSERT INTO rockets(name, active) VALUES ('Delta IV', true);
-- Blue Origin rockets
INSERT INTO rockets(name, active) VALUES ('New Shepard', true);

-- CASC rockets
INSERT INTO rockets(name, active) VALUES ('Fang Bao 1', false);
INSERT INTO rockets(name, active) VALUES ('Jielong-1', true);
INSERT INTO rockets(name, active) VALUES ('Long March 1', false);
INSERT INTO rockets(name, active) VALUES ('Long March 2', false);
INSERT INTO rockets(name, active) VALUES ('Long March 11', true);
INSERT INTO rockets(name, active) VALUES ('Long March 3', false);
INSERT INTO rockets(name, active) VALUES ('Long March 5', true);
INSERT INTO rockets(name, active) VALUES ('Long March 6', true);
INSERT INTO rockets(name, active) VALUES ('Long March 7', true);


-- General Dynamics rockets 
INSERT INTO rockets(name, active) VALUES ('Atlas-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3', false);
INSERT INTO rockets(name, active) VALUES ('Atlas I', false);
INSERT INTO rockets(name, active) VALUES ('Atlas II', false);

-- KCST Rockets
INSERT INTO rockets(name, active) VALUES ('Taepodong', false);
INSERT INTO rockets(name, active) VALUES ('Unha', true);


-- ====================================================================================================
--                                      Missions
-- ====================================================================================================
-- Please note that this is not all mission from 1957, but a select few.
-- SpaceX Missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-10-08', false, 59.5, 
    (SELECT id from rockets where name = 'Falcon 9')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-08-07', true, 50, 
    (SELECT id from rockets where name = 'Falcon 9')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Kennedy Space Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-03-24', false, 7, 
    (SELECT id from rockets where name = 'Falcon 1')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-07-14', true, 7, 
    (SELECT id from rockets where name = 'Falcon 1')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2008-08-03', false, 7, 
    (SELECT id from rockets where name = 'Falcon 1')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2018-02-06', true, 90, 
    (SELECT id from rockets where name = 'Falcon Heavy')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Kennedy Space Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-08-04', true, 90, 
    (SELECT id from rockets where name = 'Starship Prototype')
    (SELECT id from companies where name = 'SpaceX')
    (SELECT id from locations where location_name = 'Boca Chica'));
-- US Air Force missions  

-- RVSN USSR missions

-- NASA missions

-- Arianespace missions

-- Boeing missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1995-01-14', false, NULL, 
    (SELECT id from rockets where name = 'Delta II')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-07-15', true, NULL, 
    (SELECT id from rockets where name = 'Delta II')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Vandenberg AFB'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1989-08-27', true, NULL, 
    (SELECT id from rockets where name = 'Delta II')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1989-08-27', true, NULL, 
    (SELECT id from rockets where name = 'Delta II')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where name = 'Delta III')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-08-27', false, NULL, 
    (SELECT id from rockets where name = 'Delta III')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2000-08-23', true, NULL, 
    (SELECT id from rockets where name = 'Delta III')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where name = 'Delta III')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where name = 'Delta III')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-05-24', true, 164.0, 
    (SELECT id from rockets where name = 'Delta IV')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-06-28', true, 164.0, 
    (SELECT id from rockets where name = 'Delta IV')
    (SELECT id from companies where name = 'Boeing')
    (SELECT id from locations where location_name = 'Vandenberg AFB'));

-- Blue Origin missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-12-11', true, NULL, 
    (SELECT id from rockets where name = 'New Shepard')
    (SELECT id from companies where name = 'Blue Origin')
    (SELECT id from locations where location_name = 'Blue Origin Launch Site'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2015-04-29', true, NULL, 
    (SELECT id from rockets where name = 'New Shepard')
    (SELECT id from companies where name = 'Blue Origin')
    (SELECT id from locations where location_name = 'Blue Origin Launch Site'));

-- CASC missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1973-09-18', false, NULL, 
    (SELECT id from rockets where name = 'Fang Bao 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1976-11-10', false, NULL, 
    (SELECT id from rockets where name = 'Fang Bao 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-09-19', true, NULL, 
    (SELECT id from rockets where name = 'Fang Bao 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1979-07-27', false, NULL, 
    (SELECT id from rockets where name = 'Fang Bao 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-08-17', true, 7.5, 
    (SELECT id from rockets where name = 'Jielong-1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-03-03', true, NULL, 
    (SELECT id from rockets where name = 'Long March 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1969-11-16', false, NULL, 
    (SELECT id from rockets where name = 'Long March 1')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-06-05', true, 5.3, 
    (SELECT id from rockets where name = 'Long March 11')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Tai Rui Barge'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1982-09-09', true, 30.8, 
    (SELECT id from rockets where name = 'Long March 2')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-07-25', true, 30.8, 
    (SELECT id from rockets where name = 'Long March 2')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Taiyuan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-01-10', true, 29.15, 
    (SELECT id from rockets where name = 'Long March 3')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Xichang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2017-07-02', false, NULL, 
    (SELECT id from rockets where name = 'Long March 5')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-07-23', true, NULL, 
    (SELECT id from rockets where name = 'Long March 5')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2017-11-21', true, NULL, 
    (SELECT id from rockets where name = 'Long March 6')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Taiyuan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-03-16', false, NULL, 
    (SELECT id from rockets where name = 'Long March 7')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2016-06-25', true, NULL, 
    (SELECT id from rockets where name = 'Long March 7')
    (SELECT id from companies where name = 'CASC')
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
-- General Dynamics missions 
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-04-18', false, NULL, 
    (SELECT id from rockets where name = 'Atlas I')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1990-07-25', true, NULL, 
    (SELECT id from rockets where name = 'Atlas I')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1959-11-26', false, NULL, 
    (SELECT id from rockets where name = 'Atlas-D')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-12-11', true, NULL, 
    (SELECT id from rockets where name = 'Atlas-D')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Vandenberg AFB'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1992-02-11', true, NULL, 
    (SELECT id from rockets where name = 'Atlas II')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1964-09-23', true, NULL, 
    (SELECT id from rockets where name = 'Atlas-SLV3')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Vandenberg AFB'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1972-12-20', true, NULL, 
    (SELECT id from rockets where name = 'Atlas-SLV3')
    (SELECT id from companies where name = 'General Dynamics')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
-- KCST missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-08-31', false, NULL, 
    (SELECT id from rockets where name = 'Taepodong')
    (SELECT id from companies where name = 'KCST')
    (SELECT id from locations where location_name = 'Tonghae Satellite Launching Ground'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-04-05', false, NULL, 
    (SELECT id from rockets where name = 'Unha')
    (SELECT id from companies where name = 'KCST')
    (SELECT id from locations where location_name = 'Tonghae Satellite Launching Ground'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-04-12', false, NULL, 
    (SELECT id from rockets where name = 'Unha')
    (SELECT id from companies where name = 'KCST')
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-12-12', true, NULL, 
    (SELECT id from rockets where name = 'Unha')
    (SELECT id from companies where name = 'KCST')
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2016-02-07', true, NULL, 
    (SELECT id from rockets where name = 'Unha')
    (SELECT id from companies where name = 'KCST')
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));