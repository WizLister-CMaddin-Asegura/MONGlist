USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS user_ad_posts;
DROP TABLE IF EXISTS post_ad_image;
DROP TABLE IF EXISTS category_properties;
DROP TABLE IF EXISTS category;


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


CREATE TABLE ads
(
    id             INT UNSIGNED AUTO_INCREMENT
        PRIMARY KEY,
    user_id        INT UNSIGNED     NOT NULL,
    title          VARCHAR(200)     NOT NULL,
    description    VARCHAR(500)     NOT NULL,
    category_id    INT UNSIGNED     NOT NULL,
    created_date   DATETIME         NULL,
    is_active      TINYINT          NULL,
    is_seller      TINYINT          NULL,
    is_buyer       TINYINT          NULL,
    expected_price DECIMAL UNSIGNED NULL,
    last_updated   DATE             NULL,
    CONSTRAINT ads_users_id_fk
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT ads_category_id_fk
    FOREIGN KEY (category_id) REFERENCES category (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
    ENGINE = InnoDB;

CREATE INDEX ads_users_id_fk
    ON ads (user_id);

CREATE INDEX ads_category_id_fk
    ON ads (category_id);



CREATE TABLE user_ad_posts
(
    id              INT UNSIGNED AUTO_INCREMENT
        PRIMARY KEY,
    user_account_id INT UNSIGNED NOT NULL,
    create_date     DATETIME     NULL,
    valid_for       DATE         NULL,
    category_id     INT UNSIGNED NOT NULL,
    search_context  VARCHAR(100) NULL,
    CONSTRAINT user_ad_posts_users_id_fk
    FOREIGN KEY (user_account_id) REFERENCES users (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT user_ad_posts_category_id_fk
    FOREIGN KEY (category_id) REFERENCES category (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
    ENGINE = InnoDB;

CREATE INDEX user_ad_posts_users_id_fk
    ON user_ad_posts (user_account_id);

CREATE INDEX user_ad_posts_category_id_fk
    ON user_ad_posts (category_id);


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


CREATE TABLE category_properties
(
    id            INT UNSIGNED AUTO_INCREMENT
        PRIMARY KEY,
    category_id   INT UNSIGNED NOT NULL,
    property_name VARCHAR(255) NULL,
    property_unit VARCHAR(255) NULL,
    CONSTRAINT category_properties_category_id_fk
    FOREIGN KEY (category_id) REFERENCES category (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
    ENGINE = InnoDB;

CREATE INDEX category_properties_category_id_fk
    ON category_properties (category_id);


CREATE TABLE category
(
    id                 INT UNSIGNED AUTO_INCREMENT
        PRIMARY KEY,
    parent_category_id INT UNSIGNED NOT NULL,
    category_name      VARCHAR(300) NOT NULL,
    maximum_images     INT(1)       NULL,
    CONSTRAINT category_category_id_fk
    FOREIGN KEY (parent_category_id) REFERENCES category (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
    ENGINE = InnoDB;

CREATE INDEX category_category_id_fk
    ON category (parent_category_id);