CREATE TABLE message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    phone VARCHAR(31),
    email VARCHAR(63),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE produkti (
    produkta_id INT AUTO_INCREMENT PRIMARY KEY,
    nosaukums VARCHAR(255) NOT NULL,
    apraksts TEXT,
    cena DECIMAL(10, 2) NOT NULL,
    pieejamiba INT NOT NULL,
    krajumu_daudzums INT NOT NULL,
    kategorijas_id INT,
    razotajs VARCHAR(255),
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

    CREATE TABLE pasutijumi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pasutijuma_id INT,
    lietotaja_id INT,
    produkta_id INT,
    datums TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statuss VARCHAR(255),
    piegades_adrese TEXT,
    cena DECIMAL(10, 2)
);

CREATE TABLE lietotaji (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vards VARCHAR(255),
    uzvards VARCHAR(255),
    epasta_adrese VARCHAR(255) NOT NULL,
    parole VARCHAR(255) NOT NULL,
    adrese TEXT,
    talrunis VARCHAR(20)
);

CREATE TABLE kategorijas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produkta_id INT NOT NULL, -- Produkta kods vai ID
    kategorijas_nosaukums VARCHAR(255) NOT NULL,
    apraksts TEXT
);

CREATE TABLE noliktavas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    noliktavas_nosaukums VARCHAR(255) NOT NULL,
    adrese TEXT,
    kapacitate INT
);

CREATE TABLE atsauksmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produkta_id INT,
    lietotaja_id INT,
    atsauksmes_teksts TEXT,
    vertejums INT
);

