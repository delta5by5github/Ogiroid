CREATE TABLE
IF NOT EXISTS tags
(
    tag_id TEXT,
    content TEXT,
    owner INTEGER,
    created_at INTEGER,
    views INTEGER
);

CREATE TABLE
IF NOT EXISTS tag_relations
(
    tag_id TEXT,
    alias TEXT
);

CREATE TABLE
IF NOT EXISTS blacklist
(
    user_id INTEGER,
    reason TEXT,
    bot BOOLEAN,
    tickets BOOLEAN,
    tags BOOLEAN,
    expires INTEGER
);

CREATE TABLE
IF NOT EXISTS flag_quizz
(
    user_id INTEGER,
    tries INTEGER,
    correct INTEGER,
    completed INTEGER
);

CREATE TABLE
IF NOT EXISTS trivia
(
    id INTEGER,
    correct INTEGER,
    incorrect INTEGER,
    streak INTEGER,
    longest_streak INTEGER
);

CREATE TABLE
IF NOT EXISTS reaction_roles
(
    message_id INTEGER,
    role_id INTEGER,
    emoji TEXT,
    roles_given INTEGER DEFAULT 0
);

CREATE TABLE
IF NOT EXISTS warnings
(
    warning_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    moderator_id INTEGER,
    reason TEXT
);


CREATE TABLE
IF NOT EXISTS levels
(
    guild_id INTEGER,
    user_id INTEGER,
    level INTEGER DEFAULT 0,
    xp INTEGER DEFAULT 0,
    total_xp INTEGER DEFAULT 0
);
