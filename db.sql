CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE communities(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    description TEXT NOT NULL,
    contact VARCHAR(200) NOT NULL,
    contact2 VARCHAR(200) DEFAULT '',
    contact3 VARCHAR(200) DEFAULT ''
);

CREATE TABLE users_communities(
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    community_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id),
    UNIQUE (user_id, community_id)
);

INSERT INTO users(name)
VALUES ('Ada'),
    ('Elisa'),
    ('Roberto');

INSERT INTO communities(name, description)
VALUES('Kotlin', 'Amazing'),
    ('Java', 'Gorgeous'),
    ('C', 'Cool'),
    ('Assembly', 'Awesome'),
    ('Prolog', 'No'),
    ('Ruby', 'Legendary');

INSERT INTO users_communities(user_id, community_id)
VALUES(1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 4);
