CREATE TABLE Equipment (
    equipment_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(100),
    serial_number VARCHAR(20) UNIQUE,
    status VARCHAR(50),
    received_date DATE
);

CREATE TABLE Unit (
    unit_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    commander VARCHAR(255)
);

CREATE TABLE Personnel (
    personnel_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(255),
    rank VARCHAR(100),
    unit_id VARCHAR(20),
    role VARCHAR(255),
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id)
);

CREATE TABLE Assignment (
    assignment_id VARCHAR(20) PRIMARY KEY,
    equipment_id VARCHAR(20),
    unit_id VARCHAR(20),
    assigned_date DATE,
    return_date DATE,
    personnel_id VARCHAR(20),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id),
    FOREIGN KEY (personnel_id) REFERENCES Personnel(personnel_id)
);
