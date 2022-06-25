CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) DEFAULT NULL,
    email  VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    date_of_joining DATE,
    password     VARCHAR(255) NOT NULL,
    account_status ENUM('active', 'inactive', 'block', 'suspended') DEFAULT 'inactive',
    email_verification_status   ENUM('verified', 'unverified') DEFAULT 'unverified',
    PRIMARY KEY ( id ),
    UNIQUE KEY (email)
);