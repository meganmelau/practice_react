CREATE TABLE restaurants (
    restaurant_id INTEGER PRIMARY KEY, 
    FOREIGN KEY (menu_id) REFERENCES menu (menu_id),
    restaurant_name VARCHAR(25), 
    restaurant_address VARCHAR(50), 
    city VARCHAR(25), 
    restaurant_state VARCHAR(15), 
    FOREIGN KEY (hours_id) REFERENCES hours_of_operation (hours_id), 
    zip INTEGER(10), 
    phone VARCHAR(15), 
    email VARCHAR(50), 
    website VARCHAR(100), 
    FOREIGN KEY (category_id) REFERENCES category (Category_id),
    restaurant_description VARCHAR(100)
);

INSERT INTO restaurants VALUES(1, "Popeyes", "123 Ct", "Fremont", "CA", "94539", 911, "@gmail.com", "pop.com", "good chicken");

CREATE TABLE category (
    category_id INTEGER PRIMARY KEY,
    category VARCHAR(25)
);

CREATE TABLE hours_of_operation (
    hours_id INTEGER PRIMARY KEY, 

    mon VARCHAR(25), 
    tue VARCHAR(25), 
    wed VARCHAR(25), 
    thu VARCHAR(25), 
    fri VARCHAR(25), 
    sat VARCHAR(25), 
    sun VARCHAR(25)
);

CREATE TABLE food_ingredient (
    ingredient_id INTEGER PRIMARY KEY,
    FOREIGN KEY (ingredient_id) REFERENCES ingredient (ingredient_id),
    FOREIGN KEY (food_id) REFERENCES food (food_id)
);


CREATE TABLE ingredient (
    ingredient_id INTEGER PRIMARY KEY,
    ingredient_name VARCHAR(15)
);

CREATE TABLE club (
    club_id INTEGER PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES person (user_id),
);
