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
