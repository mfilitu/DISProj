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
INSERT INTO rockets(name, active) VALUES ('Falcon 9 v1.0', false);
INSERT INTO rockets(name, active) VALUES ('Falcon 9 v1.1', false);
INSERT INTO rockets(name, active) VALUES ('Falcon 9 Block 3', false);
INSERT INTO rockets(name, active) VALUES ('Falcon 9 Block 4', false);
INSERT INTO rockets(name, active) VALUES ('Falcon Heavy', true);
INSERT INTO rockets(name, active) VALUES ('Falcon 9 Block 5', true);
INSERT INTO rockets(name, active) VALUES ('Starship Prototype', true);
-- US Air Force rockets  
INSERT INTO rockets(name, active) VALUES ('Thor-DM 18 Able I', false);
INSERT INTO rockets(name, active) VALUES ('SM-65B Atlas', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-18 Able-III', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-18 Able-II', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-18 Able-IV', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-18 Able-II', false);
INSERT INTO rockets(name, active) VALUES ('Thor-DM21 Ablestar', false);
INSERT INTO rockets(name, active) VALUES ('Thor-DM18 Agena-A', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-19 Delta', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-21 Agena-B', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-2M', false);
INSERT INTO rockets(name, active) VALUES ('Delta A', false);
INSERT INTO rockets(name, active) VALUES ('Thor DM-21 Agena-D', false);
INSERT INTO rockets(name, active) VALUES ('Delta B', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-3', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-3M', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-4', false);
INSERT INTO rockets(name, active) VALUES ('Scout X-2B', false);
INSERT INTO rockets(name, active) VALUES ('Titan IIIA', false);
INSERT INTO rockets(name, active) VALUES ('Titan IIIB', false);
INSERT INTO rockets(name, active) VALUES ('Titan III(23)B', false);
INSERT INTO rockets(name, active) VALUES ('Titan III(24)B', false);

-- RVSN USSR rockets
-- NASA rockets

-- Arianespace rockets
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);
INSERT INTO rockets(name, active) VALUES ('', false);

-- Boeing rockets

-- Blue Origin rockets

-- CASC rockets

-- General Dynamics rockets 
INSERT INTO rockets(name, active) VALUES ('Atlas-D Able', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3 Agena-A', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3 Agena-B', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C Centaur-A', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3 Agena-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C Centaur-B', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C Centaur-C', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3 Agena-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-D OV1', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-LV3C Centaur-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3C Centaur-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F OV1', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3 Burner-2', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F Burner', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3A Agena-D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F PTS', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F Star-17A', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3D Centaur-D1A', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-SLV3D Centaur-D1AR', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F MSD', false);

INSERT INTO rockets(name, active) VALUES ('Atlas-E/F SGS-1', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F Agena D', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F Star-37S-ISS', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-E/F OIS', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-H MSD', false);
INSERT INTO rockets(name, active) VALUES ('Atlas-G Centaur-D1AR', false);
INSERT INTO rockets(name, active) VALUES ('Atlas I', false);
INSERT INTO rockets(name, active) VALUES ('Atlas II', false);
INSERT INTO rockets(name, active) VALUES ('Atlas IIA', false);
-- KCST Rockets
INSERT INTO rockets(name, active) VALUES ('Taepodong-1', false);
INSERT INTO rockets(name, active) VALUES ('Unha-2', false);
INSERT INTO rockets(name, active) VALUES ('Unha-3', true);

