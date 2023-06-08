DELETE FROM rockets;
DELETE FROM companies;
DELETE FROM locations;
DELETE FROM missions;
-- DATA FROM https://www.kaggle.com/datasets/agirlcoding/all-space-missions-from-1957
-- We picked 11 companies from the dataset
-- ====================================================================================================
--                                      COMPANIES
-- ====================================================================================================
INSERT INTO companies(company_name) VALUES ('SpaceX');
INSERT INTO companies(company_name) VALUES ('US Air Force');
INSERT INTO companies(company_name) VALUES ('RVSN USSR');
INSERT INTO companies(company_name) VALUES ('NASA');
INSERT INTO companies(company_name) VALUES ('Arianespace');
INSERT INTO companies(company_name) VALUES ('Boeing');
INSERT INTO companies(company_name) VALUES ('Blue Origin');
INSERT INTO companies(company_name) VALUES ('CASC');
INSERT INTO companies(company_name) VALUES ('General Dynamics');
INSERT INTO companies(company_name) VALUES ('KCST');

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
INSERT INTO rockets(rocket_name, active) VALUES ('Falcon 1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Falcon Heavy', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Falcon 9', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Starship Prototype', true);
-- US Air Force rockets  
INSERT INTO rockets(rocket_name, active) VALUES ('SM-65B Atlas', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Thor DM-18', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Thor DM-19', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X-2M', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Thor DM-21', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Delta', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Titan III', false);

-- RVSN USSR rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Cosmos-1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Cosmos-2I', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Cosmos-3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Cosmos-3M', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Cosmos-3MRB', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Energiya/Buran', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Energiya/Polyus', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Molniya', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Molniya-M', false);
INSERT INTO rockets(rocket_name, active) VALUES ('N1-L3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Poliot', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Proton K', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz L', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz M', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz U', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Sputnik', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Tsyklon', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Tsyklon-2', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Tsyklon-2A', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Tsyklon-3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Voskhod', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Vostok-2', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Vostok-2M', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Zenit-2', false);

-- NASA rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Ares 1-X', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Atlas-D Mercury', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Blue Scout II', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Mercury-Redstone', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Saturn I', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Saturn IB', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Saturn V', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X-1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X-2', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X-3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Scout X-4', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Space Shuttle Atlantis', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Space Shuttle Challenger', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Space Shuttle Columbia', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Space Shuttle Discovery', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Space Shuttle Endeavour', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Thor-DM 18 Able I', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Titan II GLV', false);

-- Arianespace rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 2', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 40', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 42L', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 42P', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 44L', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 44LP', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 44P', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 5 ECA', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 5 ES', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 5 G', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 5 G+', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Ariane 5 GS', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz 2.1b/Fregat', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz ST-A/Fregat', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Soyuz ST-B/Fregat-M', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Vega', true);

-- Boeing rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Delta II', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Delta III', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Delta IV', true);
-- Blue Origin rockets
INSERT INTO rockets(rocket_name, active) VALUES ('New Shepard', true);

-- CASC rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Fang Bao 1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Jielong-1', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 1', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 2', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 11', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 5', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 6', true);
INSERT INTO rockets(rocket_name, active) VALUES ('Long March 7', true);


-- General Dynamics rockets 
INSERT INTO rockets(rocket_name, active) VALUES ('Atlas-D', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Atlas-SLV3', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Atlas I', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Atlas II', false);

-- KCST Rockets
INSERT INTO rockets(rocket_name, active) VALUES ('Taepodong', false);
INSERT INTO rockets(rocket_name, active) VALUES ('Unha', true);


-- ====================================================================================================
--                                      Missions
-- ====================================================================================================
-- Please note that this is not all mission from 1957, but a select few.
-- SpaceX Missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-10-08', false, 59.5, 
    (SELECT id from rockets where rocket_name = 'Falcon 9'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-08-07', true, 50, 
    (SELECT id from rockets where rocket_name = 'Falcon 9'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-03-24', false, 7, 
    (SELECT id from rockets where rocket_name = 'Falcon 1'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-07-14', true, 7, 
    (SELECT id from rockets where rocket_name = 'Falcon 1'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2008-08-03', false, 7, 
    (SELECT id from rockets where rocket_name = 'Falcon 1'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Omelek Island'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2018-02-06', true, 90, 
    (SELECT id from rockets where rocket_name = 'Falcon Heavy'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-08-04', true, 90, 
    (SELECT id from rockets where rocket_name = 'Starship Prototype'),
    (SELECT id from companies where company_name = 'SpaceX'),
    (SELECT id from locations where location_name = 'Boca Chica'));

-- US Air Force Missions  
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-04-17', true, 59.0,
    (SELECT id from rockets where rocket_name = 'Titan III'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Vanenber AFB'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1963-09-27', false, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Vanenber AFB'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-10-27', true, NULL,
    (SELECT id from rockets where rocket_name = 'Delta'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-10-27', false, NULL,
    (SELECT id from rockets where rocket_name = 'Thor DM-21'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Vandenberg AFB'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-05-24', false, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X-2M'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Vanenber AFB'));


INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-11-23', true, NULL,
    (SELECT id from rockets where rocket_name = 'Thor DM-19'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-08-12', true, NULL,
    (SELECT id from rockets where rocket_name = 'Thor DM-18'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1958-12-18', true, NULL,
    (SELECT id from rockets where rocket_name = 'SM-65B Atlas'),
    (SELECT id from companies where company_name = 'US Air Force'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- RVSN USSR Missions
-- Cosmos-1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-12-28', true, NULL,
    (SELECT id from rockets where rocket_name = 'Cosmos-1'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Cosmos-2I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-10-25', false, NULL,
    (SELECT id from rockets where rocket_name = 'Cosmos-2I'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Kapustin Yar'));

-- Cosmos-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-16', true, NULL,
    (SELECT id from rockets where rocket_name = 'Cosmos-3'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

--Cosmos-3M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-12-27', true, NULL,
    (SELECT id from rockets where rocket_name = 'Cosmos-3M'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome'));

-- Cosmos-3MRB
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1970-07-31', true, NULL,
    (SELECT id from rockets where rocket_name = 'Cosmos-3MRB'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Kapustin Yar'));

-- Energiya/Buran
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1988-11-15', true, 5000.0,
    (SELECT id from rockets where rocket_name = 'Energiya/Buran'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Energiya/Polyus
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1987-05-15', true, 5000.0,
    (SELECT id from rockets where rocket_name = 'Energiya/Polyus'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Molniya
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-10-10', false, NULL,
    (SELECT id from rockets where rocket_name = 'Molniya'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Molniya-M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1978-06-28', true, NULL,
    (SELECT id from rockets where rocket_name = 'Molniya-M'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome'));

-- N1-L3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1969-02-21', false, NULL,
    (SELECT id from rockets where rocket_name = 'N1-L3'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Poliot
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1963-11-01', true, NULL,
    (SELECT id from rockets where rocket_name = 'Poliot'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Proton K
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-10-22', false, NULL,
    (SELECT id from rockets where rocket_name = 'Proton K'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Soyuz
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-28', true, NULL,
    (SELECT id from rockets where rocket_name = 'Soyuz'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Soyuz L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1970-11-24', true, NULL,
    (SELECT id from rockets where rocket_name = 'Soyuz L'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Soyuz M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-12-27', false, NULL,
    (SELECT id from rockets where rocket_name = 'Soyuz M'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome'));

-- Soyuz U
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1978-04-06', true, NULL,
    (SELECT id from rockets where rocket_name = 'Soyuz U'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Sputnik
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1957-04-27', false, NULL,
    (SELECT id from rockets where rocket_name = 'Sputnik'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Tsyklon
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1967-01-25', true, NULL,
    (SELECT id from rockets where rocket_name = 'Tsyklon'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Tsyklon-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1979-04-25', true, NULL,
    (SELECT id from rockets where rocket_name = 'Tsyklon-2'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Tsyklon-2A
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1968-04-24', false, NULL,
    (SELECT id from rockets where rocket_name = 'Tsyklon-2A'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Tsyklon-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-01-23', false, NULL,
    (SELECT id from rockets where rocket_name = 'Tsyklon-3'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome'));

-- Voskhod
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-11-12', true, NULL,
    (SELECT id from rockets where rocket_name = 'Voskhod'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Plesetsk Cosmodrome'));

-- Vostok-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-01-07', false, NULL,
    (SELECT id from rockets where rocket_name = 'Vostok-2'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Vostok-2M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1965-12-17', true, NULL,
    (SELECT id from rockets where rocket_name = 'Vostok-2M'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Zenit-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-08-30', false, NULL,
    (SELECT id from rockets where rocket_name = 'Zenit-2'),
    (SELECT id from companies where company_name = 'RVSN USSR'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- NASA Missions
-- Ares 1-X
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-10-28', true, 450.0,
    (SELECT id from rockets where rocket_name = 'Ares 1-X'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Atlas-D
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-05-24', true, NULL,
    (SELECT id from rockets where rocket_name = 'Atlas-D Mercury'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Blue Scout II
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-11-01', false, NULL,
    (SELECT id from rockets where rocket_name = 'Blue Scout II'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Mercury-Redstone
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-05-05', true, NULL,
    (SELECT id from rockets where rocket_name = 'Mercury-Redstone'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Saturn I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1964-05-28', true, NULL,
    (SELECT id from rockets where rocket_name = 'Saturn I'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Saturn IB
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-01-27', false, NULL,
    (SELECT id from rockets where rocket_name = 'Saturn IB'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Saturn V
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1967-11-09', true, 1160.0,
    (SELECT id from rockets where rocket_name = 'Saturn V'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Scout X-1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1960-12-04', false, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X-1'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Wallops Flight Facility'));

-- Scout X-2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-04-26', false, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X-2'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Wallops Flight Facility'));

-- Scout X-3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1961-12-16', true, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X-3'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Wallops Flight Facility'));

-- Scout X-4
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1962-12-19', true, NULL,
    (SELECT id from rockets where rocket_name = 'Scout X-4'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Vandenbergh AFB'));

-- Space Shuttle Atlantis
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1985-10-03', true, 450.0,
    (SELECT id from rockets where rocket_name = 'Space Shuttle Atlantis'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Space Shuttle Challenger
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1986-01-28', false, 450.0,
    (SELECT id from rockets where rocket_name = 'Space Shuttle Challenger'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Space Shuttle Columbia
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-03-08', true, 450.0,
    (SELECT id from rockets where rocket_name = 'Space Shuttle Columbia'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Space Shuttle Discovery
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-08-30', true, 450.0,
    (SELECT id from rockets where rocket_name = 'Space Shuttle Discovery'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Space Shuttle Endeavour
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1992-05-07', true, 450.0,
    (SELECT id from rockets where rocket_name = 'Space Shuttle Endeavour'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Kennedy Space Center'));

-- Thor-DM 18 Able I
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1958-11-08', false, NULL,
    (SELECT id from rockets where rocket_name = 'Thor-DM 18 Able I'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

-- Titan II GLV
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-06-03', false, NULL,
    (SELECT id from rockets where rocket_name = 'Titan II GLV'),
    (SELECT id from companies where company_name = 'NASA'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));


-- Arianespace Missions
-- Ariane 1
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1985-07-02', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 1'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 2
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1986-05-31', false, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 2'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 3
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1984-08-04', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 3'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 40
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-07-17', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 40'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 42L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1995-10-19', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 42L'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 42P
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1994-12-01', false, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 42P'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 44L
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1990-02-22', false, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 44L'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 44LP
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-09-16', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 44LP'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 44P
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2001-01-10', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 44P'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 5 ECA
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2002-12-11', false, 200.0,
    (SELECT id from rockets where rocket_name = 'Ariane 5 ECA'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 5 ES
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2013-06-05', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 5 ES'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 5 G
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2005-10-13', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 5 G'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 5 G+
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-12-18', true, 190.0,
    (SELECT id from rockets where rocket_name = 'Ariane 5 G+'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Ariane 5 GS
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-12-18', true, NULL,
    (SELECT id from rockets where rocket_name = 'Ariane 5 GS'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Soyuz 2.1b/Fregat
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-02-06', true, 48.5,
    (SELECT id from rockets where rocket_name = 'Soyuz 2.1b/Fregat'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Baikonur Cosmodrome'));

-- Soyuz ST-A/Fregat
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-12-02', true, 80.0,
    (SELECT id from rockets where rocket_name = 'Soyuz ST-A/Fregat'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Soyuz ST-B/Fregat-M
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2018-11-07', true, NULL,
    (SELECT id from rockets where rocket_name = 'Soyuz ST-B/Fregat-M'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));

-- Vega
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-07-11', false, 37.0,
    (SELECT id from rockets where rocket_name = 'Vega'),
    (SELECT id from companies where company_name = 'Arianespace'),
    (SELECT id from locations where location_name = 'Guiana Space Centre'));


-- Boeing missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1995-01-14', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta II'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-07-15', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta II'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Vandenberg AFB'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1989-08-27', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta II'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1989-08-27', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta II'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta III'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-08-27', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta III'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2000-08-23', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta III'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta III'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1999-05-05', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Delta III'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-05-24', true, 164.0, 
    (SELECT id from rockets where rocket_name = 'Delta IV'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2006-06-28', true, 164.0, 
    (SELECT id from rockets where rocket_name = 'Delta IV'),
    (SELECT id from companies where company_name = 'Boeing'),
    (SELECT id from locations where location_name = 'Vandenberg AFB'));

-- Blue Origin missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-12-11', true, NULL, 
    (SELECT id from rockets where rocket_name = 'New Shepard'),
    (SELECT id from companies where company_name = 'Blue Origin'),
    (SELECT id from locations where location_name = 'Blue Origin Launch Site'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2015-04-29', true, NULL, 
    (SELECT id from rockets where rocket_name = 'New Shepard'),
    (SELECT id from companies where company_name = 'Blue Origin'),
    (SELECT id from locations where location_name = 'Blue Origin Launch Site'));

-- CASC missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1973-09-18', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Fang Bao 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1976-11-10', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Fang Bao 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1981-09-19', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Fang Bao 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1979-07-27', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Fang Bao 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-08-17', true, 7.5, 
    (SELECT id from rockets where rocket_name = 'Jielong-1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1971-03-03', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1969-11-16', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 1'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-06-05', true, 5.3, 
    (SELECT id from rockets where rocket_name = 'Long March 11'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Tai Rui Barge'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1982-09-09', true, 30.8, 
    (SELECT id from rockets where rocket_name = 'Long March 2'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Jiuquan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2004-07-25', true, 30.8, 
    (SELECT id from rockets where rocket_name = 'Long March 2'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Taiyuan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2019-01-10', true, 29.15, 
    (SELECT id from rockets where rocket_name = 'Long March 3'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Xichang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2017-07-02', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 5'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-07-23', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 5'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2017-11-21', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 6'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Taiyuan Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2020-03-16', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 7'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2016-06-25', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Long March 7'),
    (SELECT id from companies where company_name = 'CASC'),
    (SELECT id from locations where location_name = 'Wenchang Satellite Launch Center'));
-- General Dynamics missions 
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1991-04-18', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas I'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1990-07-25', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas I'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1959-11-26', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas-D'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1966-12-11', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas-D'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Vandenberg AFB'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1992-02-11', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas II'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));

INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1964-09-23', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas-SLV3'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Vandenberg AFB'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1972-12-20', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Atlas-SLV3'),
    (SELECT id from companies where company_name = 'General Dynamics'),
    (SELECT id from locations where location_name = 'Cape Canaveral AFS'));
-- KCST missions
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('1998-08-31', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Taepodong'),
    (SELECT id from companies where company_name = 'KCST'),
    (SELECT id from locations where location_name = 'Tonghae Satellite Launching Ground'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2009-04-05', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Unha'),
    (SELECT id from companies where company_name = 'KCST'),
    (SELECT id from locations where location_name = 'Tonghae Satellite Launching Ground'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-04-12', false, NULL, 
    (SELECT id from rockets where rocket_name = 'Unha'),
    (SELECT id from companies where company_name = 'KCST'),
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2012-12-12', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Unha'),
    (SELECT id from companies where company_name = 'KCST'),
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));
INSERT INTO Missions(launch_data, succesful, cost, rocket_id, company_id, location_id)
VALUES ('2016-02-07', true, NULL, 
    (SELECT id from rockets where rocket_name = 'Unha'),
    (SELECT id from companies where company_name = 'KCST'),
    (SELECT id from locations where location_name = 'Sohae Satellite Launching Station'));