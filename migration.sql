USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS user_ad_posts;
DROP TABLE IF EXISTS post_ad_image;
DROP TABLE IF EXISTS category_properties;
DROP TABLE IF EXISTS category_pivot;
DROP TABLE IF EXISTS category;


CREATE TABLE ads
(
  id             INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  user_id        INT UNSIGNED     NOT NULL,
  title          VARCHAR(200)     NULL,
  description    VARCHAR(500)     NULL,
  category_id    INT UNSIGNED     NULL,
  expected_price DECIMAL UNSIGNED NULL,
  ad_image       BLOB             NULL
)
  ENGINE = InnoDB;

CREATE INDEX ads_users_id_fk
  ON ads (user_id);

CREATE INDEX ads_category_id_fk
  ON ads (category_id);

CREATE TABLE category
(
  parent_ad_id       INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  parent_category_id INT UNSIGNED NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE category_pivot
(
  parent_ad_id       INT UNSIGNED NOT NULL,
  parent_category_id INT UNSIGNED NOT NULL,
  CONSTRAINT category_pivot_ibfk_1
  FOREIGN KEY (parent_ad_id) REFERENCES ads (id)
)
  ENGINE = InnoDB;

CREATE INDEX parent_ad_id
  ON category_pivot (parent_ad_id);

CREATE INDEX parent_category_id
  ON category_pivot (parent_category_id);

CREATE TABLE category_properties
(
  id            INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  property_name VARCHAR(255) NULL,
  property_unit VARCHAR(255) NULL
)
  ENGINE = InnoDB;

ALTER TABLE category_pivot
  ADD CONSTRAINT category_pivot_ibfk_2
FOREIGN KEY (parent_category_id) REFERENCES category_properties (id);

CREATE TABLE language
(
  id            INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  language_name CHAR(3) NULL
)
  ENGINE = InnoDB;

CREATE TABLE post_ad_image
(
  id      INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  post_id INT UNSIGNED NULL,
  image   BLOB         NULL,
  CONSTRAINT post_ad_image_ads_id_fk
  FOREIGN KEY (post_id) REFERENCES ads (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
)
  ENGINE = InnoDB;

CREATE INDEX post_ad_image_ads_id_fk
  ON post_ad_image (post_id);

CREATE TABLE user_ad_posts
(
  id              INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  user_account_id INT UNSIGNED NOT NULL,
  create_date     DATETIME     NULL,
  valid_for       DATE         NULL,
  category_id     INT UNSIGNED NOT NULL,
  search_context  VARCHAR(100) NULL
)
  ENGINE = InnoDB;

CREATE INDEX user_ad_posts_users_id_fk
  ON user_ad_posts (user_account_id);

CREATE INDEX user_ad_posts_category_id_fk
  ON user_ad_posts (category_id);

CREATE TABLE users
(
  id            INT UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  username      VARCHAR(200) NOT NULL,
  email         VARCHAR(200) NOT NULL,
  password      VARCHAR(150) NOT NULL,
  first_name    VARCHAR(225) NULL,
  last_name     VARCHAR(225) NULL,
  zipcode       INT(5)       NULL,
  mobile_number INT          NOT NULL,
  CONSTRAINT username
  UNIQUE (username),
  CONSTRAINT email
  UNIQUE (email)
)
  ENGINE = InnoDB;

ALTER TABLE ads
  ADD CONSTRAINT ads_users_id_fk
FOREIGN KEY (user_id) REFERENCES users (id)
  ON UPDATE CASCADE
  ON DELETE CASCADE;

ALTER TABLE user_ad_posts
  ADD CONSTRAINT user_ad_posts_users_id_fk
FOREIGN KEY (user_account_id) REFERENCES users (id)
  ON UPDATE CASCADE
  ON DELETE CASCADE;

