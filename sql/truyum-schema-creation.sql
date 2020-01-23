create database if not exists truyum;

use truyum;

CREATE TABLE menu_item (
    me_id INT(11) NOT NULL AUTO_INCREMENT,
    me_name VARCHAR(100),
    me_price DECIMAL(8 , 2),
    me_active VARCHAR(3),
    me_date_of_launch DATE,
    me_category VARCHAR(45),
    me_free_delivery VARCHAR(3),
    PRIMARY KEY (me_id)
);

CREATE TABLE user (
    us_id INT(11) NOT NULL AUTO_INCREMENT,
    us_name VARCHAR(60),
    PRIMARY KEY (us_id)
);

CREATE TABLE cart (
    ct_id INT(11) NOT NULL AUTO_INCREMENT,
    ct_us_id INT(11),
    ct_pr_id INT(11),
    PRIMARY KEY (ct_id),
    FOREIGN KEY (ct_us_id)
        REFERENCES user (us_id),
    FOREIGN KEY (ct_pr_id)
        REFERENCES menu_item (me_id)
);
