-- Task 4

CREATE TABLE teacher (
    id serial PRIMARY KEY,
    name varchar(25),
    city varchar(25)
);

INSERT INTO teacher(name, city) VALUES
    ('Peter Smith', 'New York'),
    ('Laura Wild', 'Chicago'),
    ('Julius Maxim', 'Berlin'),
    ('Melinda O''Connor', 'Berlin'),
    ('Patricia Boulard', 'Marseille'),
    ('Julia Vila', 'Barcelona'),
    ('Fabienne Martin', 'Paris'),
    ('Rose Dupond', 'Brussels'),
    ('Ahmed Ali', 'Marseille');

ALTER TABLE webinar ADD COLUMN teacher_id integer;
ALTER TABLE webinar ADD CONSTRAINT webinar_teacher_fkey FOREIGN KEY (teacher_id) REFERENCES teacher(id);
