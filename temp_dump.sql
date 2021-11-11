CREATE TABLE users(id SERIAL PRIMARY KEY, name VARCHAR NOT NULL);
CREATE TABLE communities(id SERIAL PRIMARY KEY, name VARCHAR NOT NULL);

CREATE TABLE users_communities(
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    community_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id),
    UNIQUE (user_id, community_id)
);

INSERT INTO users(name) VALUES ('Ada');

INSERT INTO communities(name)
VALUES('Kotlin'),
    ('Java'),
    ('C'),
    ('Assembly'),
    ('Ruby');
