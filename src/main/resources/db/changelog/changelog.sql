CREATE TABLE clients
(
    id        INT PRIMARY KEY,
    name      VARCHAR(255),
    discount1 DECIMAL(5, 2) DEFAULT 0,
    discount2 DECIMAL(5, 2) DEFAULT 0
);

CREATE TABLE products
(
    id          INT PRIMARY KEY,
    name        VARCHAR(255),
    price       DOUBLE PRECISION,
    description TEXT
);

CREATE TABLE sale_items
(
    id INT,
    client_id        INT,
    product_id     INT,
    quantity       INT,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES clients (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

CREATE TABLE discounts
(
    id INT,
    product_id INT,
    start_time TIMESTAMP,
    end_time   TIMESTAMP,
    discount   DECIMAL(5, 2),
    PRIMARY KEY (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

CREATE TABLE ratings
(
    id         INT,
    client_id  INT,
    product_id INT,
    rating     INT,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES clients (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);
