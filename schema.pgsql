-- ---
-- Table 'locations'
-- 
-- ---

DROP TABLE IF EXISTS locations CASCADE;

CREATE TABLE locations (
  id BIGSERIAL NOT NULL,
  name VARCHAR(40),
  coordinates VARCHAR,
  PRIMARY KEY (id)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id BIGSERIAL NOT NULL,
  username VARCHAR(20),
  PRIMARY KEY (id)
);

-- ---
-- Table 'photos'
-- 
-- ---

DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id BIGSERIAL NOT NULL,
  location_id INTEGER REFERENCES locations(id),
  user_id INTEGER REFERENCES users(id),
  uri VARCHAR(50),
  date DATE,
  PRIMARY KEY (id)
);

-- ---
-- Table 'comments'
-- 
-- ---

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  id BIGSERIAL NOT NULL,
  location_id INTEGER REFERENCES locations(id),
  user_id INTEGER REFERENCES users(id),
  content TEXT,
  date DATE,
  PRIMARY KEY (id)
);

-- ---
-- Table 'quotes'
-- 
-- ---

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
  id BIGSERIAL NOT NULL,
  content VARCHAR(50),
  PRIMARY KEY (id)
);

-- ---
-- Table 'landing_images'
-- 
-- ---

DROP TABLE IF EXISTS landing_images;

CREATE TABLE landing_images (
  id BIGSERIAL NOT NULL,
  uri TEXT,
  name VARCHAR(20),
  PRIMARY KEY (id)
);