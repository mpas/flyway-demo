SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE measurement;
TRUNCATE TABLE user;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO user(first_name, last_name)
VALUES
       ('jane', 'doe'),
       ('foo', 'bar')
;

INSERT INTO measurement(user_id, weight)
VALUES
       (1, 80),
       (2, 75)
;
