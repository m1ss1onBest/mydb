CREATE TABLE Countries (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    population INT NOT NULL
);

CREATE TABLE Currencies (
    id INT PRIMARY KEY,
    code VARCHAR(20) UNIQUE NOT NULL,
    symbol VARCHAR(5) UNIQUE NOT NULL
);

CREATE TABLE TouristsArrivals (
    id INT PRIMARY KEY,
    source_country_id INT,
    destination_country_id INT,
    arrival_date DATETIME,
    total_visitors INT,
    FOREIGN KEY (source_country_id) REFERENCES Countries(id),
    FOREIGN KEY (destination_country_id) REFERENCES Countries(id)
);

CREATE TABLE Tourists (
    id INT PRIMARY KEY,
    country_id INT,
    birth_date DATE,
    gender BOOLEAN,
    FOREIGN KEY (country_id) REFERENCES Countries(id)
);

CREATE TABLE Revenue (
    id INT PRIMARY KEY,
    tourist_id INT,
    country_id INT,
    revenue_date DATE,
    revenue_value INT,
    currency_id INT,
    FOREIGN KEY (tourist_id) REFERENCES Tourists(id),
    FOREIGN KEY (country_id) REFERENCES Countries(id),
    FOREIGN KEY (currency_id) REFERENCES Currencies(id)
);
