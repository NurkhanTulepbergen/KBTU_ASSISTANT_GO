
CREATE TABLE IF NOT EXISTS users
(
    id            BIGSERIAL PRIMARY KEY,
    created_at    TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name          TEXT                        NOT NULL,
    email         CITEXT UNIQUE               NOT NULL,
    password_hash BYTEA                       NOT NULL,
    activated     BOOLEAN                       NOT NULL,
    version       INTEGER                     NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS discipline(
    cipher    VARCHAR(8) PRIMARY KEY,
    name      TEXT UNIQUE NOT NULL,
    is_active BOOLEAN NOT NULL,
    passed    BOOLEAN NOT NULL,
    price     INTEGER
);

CREATE TABLE IF NOT EXISTS lecture(
    lecture_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    cipher VARCHAR(8) NOT NULL,
    FOREIGN KEY(cipher) references discipline(cipher)
);

CREATE TABLE IF NOT EXISTS  task(
    task_id INTEGER PRIMARY KEY,
    lecture_id INTEGER,
    FOREIGN KEY(lecture_id) references lecture(lecture_id),
    title TEXT NOT NULL,
    description TEXT,
    picture TEXT,
    answer_picture TEXT,
    answer_text TEXT
);

CREATE TABLE IF NOT EXISTS topic(
    topic_id INTEGER PRIMARY KEY,
    lecture_id INTEGER,
    FOREIGN KEY(lecture_id) references lecture(lecture_id),
    title TEXT,
    description TEXT,
    picture TEXT
);