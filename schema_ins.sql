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
INSERT INTO rockets(name, active) VALUES ('Long March 2C', true);
INSERT INTO rockets(name, active) VALUES ('Long March 3', false);
INSERT INTO rockets(name, active) VALUES ('Long March 3B', true); 
INSERT INTO rockets(name, active) VALUES ('Long March 5', true);
INSERT INTO rockets(name, active) VALUES ('Long March 6', true);
INSERT INTO rockets(name, active) VALUES ('Long March 7', true);


-- General Dynamics rockets 
INSERT INTO rockets(name, active) VALUES ('Atlas-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3C', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-H', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-G', false);
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

-- US Air Force rockets  
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-04-17', true, 59.0,
    (SELECT id from rockets where name = 'Titan III')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Vanenber AFB, CA, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1963-09-27', false, 0.0,
    (SELECT id from rockets where name = 'Scout X')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Vanenber AFB, CA, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-10-27', true, 0.0,
    (SELECT id from rockets where name = 'Delta')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, FL, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-10-27', false, 0.0,
    (SELECT id from rockets where name = 'Thor DM-21')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Vandenberg AFB, CA, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-05-24', false, 0.0,
    (SELECT id from rockets where name = 'Scout X-2M')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Vanenber AFB, CA, USA'));


INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-11-23', true, 0.0,
    (SELECT id from rockets where name = 'Thor DM-19')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, FL, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-08-12', true, 0.0,
    (SELECT id from rockets where name = 'Thor DM-18')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, FL, USA'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1958-12-18', true, 0.0,
    (SELECT id from rockets where name = 'SM-65B Atlas')
    (SELECT id from companies where name = 'US Air Force')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, FL, USA'));

-- RVSN USSR rockets
-- Cosmos-1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-12-28', true, 0.0,
    (SELECT id from rockets where name = 'Cosmos-1')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Cosmos-2I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-10-25', false, 0.0,
    (SELECT id from rockets where name = 'Cosmos-2I')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Kapustin Yar, Russian Federation'));

-- Cosmos-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-16', true, 0.0,
    (SELECT id from rockets where name = 'Cosmos-3')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

--Cosmos-3M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-12-27', true, 0.0,
    (SELECT id from rockets where name = 'Cosmos-3M')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome, Russian Federation'));

-- Cosmos-3MRB
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1970-07-31', true, 0.0,
    (SELECT id from rockets where name = 'Cosmos-3MRB')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Kapustin Yar, Russian Federation'));

-- Energiya/Buran
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1988-11-15', true, 5000.0,
    (SELECT id from rockets where name = 'Energiya/Buran')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Energiya/Polyus
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1987-05-15', true, 5000.0,
    (SELECT id from rockets where name = 'Energiya/Polyus')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Molniya
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-10-10', false, 0.0,
    (SELECT id from rockets where name = 'Molniya')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Molniya-M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1978-06-28', true, 0.0,
    (SELECT id from rockets where name = 'Molniya-M')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome, Russian Federation'));

-- N1-L3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1969-02-21', false, 0.0,
    (SELECT id from rockets where name = 'N1-L3')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Poliot
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1963-11-01', true, 0.0,
    (SELECT id from rockets where name = 'Poliot')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Proton K
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-10-22', false, 0.0,
    (SELECT id from rockets where name = 'Proton K')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Soyuz
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-28', true, 0.0,
    (SELECT id from rockets where name = 'Soyuz')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Soyuz L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1970-11-24', true, 0.0,
    (SELECT id from rockets where name = 'Soyuz L')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Soyuz M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-12-27', false, 0.0,
    (SELECT id from rockets where name = 'Soyuz M')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome, Russian Federation'));

-- Soyuz U
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1978-04-06', true, 0.0,
    (SELECT id from rockets where name = 'Soyuz U')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Sputnik
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1957-04-27', false, 0.0,
    (SELECT id from rockets where name = 'Sputnik')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Tsyklon
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1967-01-25', true, 0.0,
    (SELECT id from rockets where name = 'Tsyklon')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Tsyklon-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1979-04-25', true, 0.0,
    (SELECT id from rockets where name = 'Tsyklon-2')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Tsyklon-2A
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1968-04-24', false, 0.0,
    (SELECT id from rockets where name = 'Tsyklon-2A')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Tsyklon-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-01-23', false, 0.0,
    (SELECT id from rockets where name = 'Tsyklon-3')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome, Russian Federation'));

-- Voskhod
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-12', true, 0.0,
    (SELECT id from rockets where name = 'Voskhod')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome, Russian Federation'));

-- Vostok-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-01-07', false, 0.0,
    (SELECT id from rockets where name = 'Vostok-2')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Vostok-2M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-12-17', true, 0.0,
    (SELECT id from rockets where name = 'Vostok-2M')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Zenit-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-08-30', false, 0.0,
    (SELECT id from rockets where name = 'Zenit-2')
    (SELECT id from companies where name = 'RVSN USSR')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- NASA rockets
-- Ares 1-X
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-10-28', true, 450.0,
    (SELECT id from rockets where name = 'Ares 1-X')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Atlas-D
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-05-24', true, 0.0,
    (SELECT id from rockets where name = 'Atlas-D')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Blue Scout II
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-11-01', false, 0.0,
    (SELECT id from rockets where name = 'Blue Scout II')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Mercury-Redstone
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-05-05', true, 0.0,
    (SELECT id from rockets where name = 'Mercury-Redstone')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Saturn I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1964-05-28', true, 0.0,
    (SELECT id from rockets where name = 'Saturn I')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Saturn IB
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-01-27', false, 0.0,
    (SELECT id from rockets where name = 'Saturn IB')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Saturn V
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1967-11-09', true, 1160.0,
    (SELECT id from rockets where name = 'Saturn V')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Scout X-1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-12-04', false, 0.0,
    (SELECT id from rockets where name = 'Scout X-1')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Wallops Flight Facility, Virginia, USA'));

-- Scout X-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-04-26', false, 0.0,
    (SELECT id from rockets where name = 'Scout X-2')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Wallops Flight Facility, Virginia, USA'));

-- Scout X-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-12-16', true, 0.0,
    (SELECT id from rockets where name = 'Scout X-3')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Wallops Flight Facility, Virginia, USA'));

-- Scout X-4
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-12-19', true, 0.0,
    (SELECT id from rockets where name = 'Scout X-4')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Vandenbergh AFB, California, USA'));

-- Space Shuttle Atlantis
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1985-10-03', true, 450.0,
    (SELECT id from rockets where name = 'Space Shuttle Atlantis')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Space Shuttle Challenger
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1986-01-28', false, 450.0,
    (SELECT id from rockets where name = 'Space Shuttle Challenger')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Space Shuttle Columbia
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-03-08', true, 450.0,
    (SELECT id from rockets where name = 'Space Shuttle Columbia')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Space Shuttle Discovery
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-08-30', true, 450.0,
    (SELECT id from rockets where name = 'Space Shuttle Discovery')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Space Shuttle Endeavour
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1992-05-07', true, 450.0,
    (SELECT id from rockets where name = 'Space Shuttle Endeavour')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Kennedy Space Center, Florida, USA'));

-- Thor-DM 18 Able I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1958-11-08', false, 0.0,
    (SELECT id from rockets where name = 'Thor-DM 18 Able I')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));

-- Titan II GLV
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-06-03', false, 0.0,
    (SELECT id from rockets where name = 'Titan II GLV')
    (SELECT id from companies where name = 'NASA')
    (SELECT id from locations where location_name = 'Cape Canaveral AFS, Florida, USA'));


-- Arianespace rockets
-- Ariane 1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1985-07-02', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 1')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1986-05-31', false, 0.0,
    (SELECT id from rockets where name = 'Ariane 2')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-08-04', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 3')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 40
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-07-17', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 40')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 42L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1995-10-19', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 42L')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 42P
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1994-12-01', false, 0.0,
    (SELECT id from rockets where name = 'Ariane 42P')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 44L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1990-02-22', false, 0.0,
    (SELECT id from rockets where name = 'Ariane 44L')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 44LP
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-09-16', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 44LP')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 44P
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2001-01-10', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 44P')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 5 ECA
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2002-12-11', false, 200.0,
    (SELECT id from rockets where name = 'Ariane 5 ECA')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 5 ES
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2013-06-05', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 5 ES')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 5 G
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2005-10-13', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 5 G')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 5 G+
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-12-18', true, 190.0,
    (SELECT id from rockets where name = 'Ariane 5 G+')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Ariane 5 GS
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-12-18', true, 0.0,
    (SELECT id from rockets where name = 'Ariane 5 GS')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Soyuz 2.1b/Fregat
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-02-06', true, 48.5,
    (SELECT id from rockets where name = 'Soyuz 2.1b/Fregat')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome, Republic of Kazakhstan'));

-- Soyuz ST-A/Fregat
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-12-02', true, 80.0,
    (SELECT id from rockets where name = 'Soyuz ST-A/Fregat')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Soyuz ST-B/Fregat-M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2018-11-07', true, 0.0,
    (SELECT id from rockets where name = 'Soyuz ST-B/Fregat-M')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));

-- Vega
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-07-11', false, 37.0,
    (SELECT id from rockets where name = 'Vega')
    (SELECT id from companies where name = 'Arianespace')
    (SELECT id from locations where location_name = 'Guiana Space Centre, French Guiana, France'));


-- Boeing rockets

-- Blue Origin rockets

-- CASC rockets

-- General Dynamics rockets 

-- KCST Rockets

