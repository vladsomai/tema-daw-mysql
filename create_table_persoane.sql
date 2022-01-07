drop table if exists persoane;
CREATE TABLE persoane (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NUME VARCHAR(30) NOT NULL,
    VARSTA INT NOT NULL
);