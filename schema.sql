\i schema_drop.sql

CREATE TABLE IF NOT EXISTS Rockets(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    active BOOLEAN
);

CREATE TABLE IF NOT EXISTS Companies(
    id SERIAL PRIMARY KEY
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Locations(
    id SERIAL PRIMARY KEY
    country VARCHAR(255),
    location_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Missions(
    id SERIAL PRIMARY KEY
    launch_data DATE,
    location TEXT,
    succesful BOOLEAN,
    cost DOUBLE PRECISION,
    FOREIGN KEY (rocket_id) REFERENCES Rocket(id),
    FOREIGN KEY (company_id) REFERENCES Company(id),
    FOREIGN KEY (location_id) REFERENCES Location(id)
);

CREATE TABLE IF NOT EXISTS Company_success_rate (
    company_id INTEGER,
    success_rate DOUBLE PRECISION,
    PRIMARY KEY (company_id),
    FOREIGN KEY (company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS Location_success_rate (
    location_id INTEGER,
    success_rate DOUBLE PRECISION,
    PRIMARY KEY (location_id),
    FOREIGN KEY (location_id) REFERENCES Locations(id)
);

CREATE TABLE IF NOT EXISTS Rocket_success_rate (
    rocket_id INTEGER,
    success_rate DOUBLE PRECISION,
    PRIMARY KEY (rocket_id),
    FOREIGN KEY (rocket_id) REFERENCES Rockets(id)
);