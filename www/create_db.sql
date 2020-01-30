USE mysql;

CREATE TABLE utilisateurs(
  id INT NOT NULL auto_increment,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  pays VARCHAR(2),

  PRIMARY KEY(id)
);

INSERT INTO utilisateurs(name, age, pays)
VALUES
  ("Kelly Diote", 69, 'fr'),
  ("Mehdi Cale", 33, 'en'),
  ("Camille Honnete", 48, 'it'),
  ("Sophie Fonfek", 34, 'uk'),
  ("Sarah Fraichi", 17, 'es')
;

CREATE USER 'marion'@'localhost' IDENTIFIED BY 'marion';
GRANT ALL PRIVILEGES ON *.* TO 'marion'@'localhost' WITH GRANT OPTION;
CREATE USER 'marion'@'%' IDENTIFIED BY 'marion';
GRANT ALL PRIVILEGES ON *.* TO 'marion'@'%' WITH GRANT OPTION;