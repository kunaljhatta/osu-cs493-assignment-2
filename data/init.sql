CREATE TABLE businesses (
  id mediumint NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state char(2) NOT NULL,
  zip char(5) NOT NULL,
  phone varchar(255) NOT NULL,
  category varchar(255) NOT NULL,
  subcategory varchar(255) NOT NULL,
  website varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  ownerid mediumint DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE reviews (
      id INT NOT NULL AUTO_INCREMENT,
      userid INT NOT NULL,
      businessid MEDIUMINT NOT NULL,
      dollars INT NOT NULL,
      stars INT NOT NULL,
      review VARCHAR(255),
      PRIMARY KEY (id),
      FOREIGN KEY (businessid) REFERENCES businesses(id)
);


CREATE TABLE photos (
      id INT NOT NULL AUTO_INCREMENT,
      userid INT NOT NULL,
      businessid MEDIUMINT NOT NULL,
      caption VARCHAR(255),
      PRIMARY KEY (id),
      FOREIGN KEY (businessid) REFERENCES businesses(id)
);


-- INSERT INTO businesses SET 
--   name = 'My Marvelous Mansion',
--   address = '7200 NW Grandview Dr.',
--   city = 'Corvallis',
--   state = 'OR',
--   zip = '97330',
--   phone = '23423121',
--   category = 'test',
--   subcategory = 'supertest',
--   website = 'test.com',
--   email = 'test@test.com',
--   ownerid = 2;
INSERT INTO businesses (name, address, city, state, zip, phone, category, subcategory, website, email, ownerid)
VALUES ('Papa John''s Pizza', '123 Main St', 'Chicago', 'IL', '60601', '312-555-1234', 'Food', 'Pizza', 'https://www.papajohns.com', 'info@papajohns.com', 1);
