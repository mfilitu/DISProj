-- \i schema_drop.sql

CREATE TABLE IF NOT EXISTS Rockets(
    id SERIAL PRIMARY KEY,
    rocket_name UNIQUE VARCHAR(255),
    active BOOLEAN
);

CREATE TABLE IF NOT EXISTS Companies(
    id SERIAL PRIMARY KEY,
    company_name UNIQUE VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Locations(
    id SERIAL PRIMARY KEY,
    country VARCHAR(255),
    location_name UNIQUE VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Missions(
    id SERIAL PRIMARY KEY,
    launch_data DATE,
    succesful BOOLEAN,
    cost DOUBLE PRECISION,
    rocket_id INTEGER,
    company_id INTEGER,
    location_id INTEGER,
    FOREIGN KEY (rocket_id) REFERENCES Rockets(id),
    FOREIGN KEY (company_id) REFERENCES Companies(id),
    FOREIGN KEY (location_id) REFERENCES Locations(id)
);

CREATE TABLE IF NOT EXISTS Company_success_rate (
    company_id INTEGER,
    success_rate NUMERIC(3, 2),
    PRIMARY KEY (company_id),
    FOREIGN KEY (company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS Location_success_rate (
    location_id INTEGER,
    success_rate NUMERIC(3, 2),
    PRIMARY KEY (location_id),
    FOREIGN KEY (location_id) REFERENCES Locations(id)
);

CREATE TABLE IF NOT EXISTS Rocket_success_rate (
    rocket_id INTEGER,
    success_rate NUMERIC(3, 2),
    PRIMARY KEY (rocket_id),
    FOREIGN KEY (rocket_id) REFERENCES Rockets(id)
);

CREATE TABLE IF NOT EXISTS Produces (
    rocket_id INTEGER,
    company_id INTEGER,
    PRIMARY KEY (rocket_id),
    FOREIGN KEY (company_id) REFERENCES Companies(id),
    FOREIGN KEY (rocket_id) REFERENCES Rockets(id)
);