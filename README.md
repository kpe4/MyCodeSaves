# БД ютуб

CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categories(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE channels(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE videos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_id INTEGER,
    category_id INTEGER,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES channels(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE shorts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_id INTEGER,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES channels(id)
);

CREATE TABLE playlists(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_id INTEGER,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES channels(id)
);

CREATE TABLE playlist_items(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    playlist_id INTEGER,
    video_id INTEGER,
    FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

CREATE TABLE tags(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE video_tags(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    video_id INTEGER,
    tag_id INTEGER,
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);

CREATE TABLE comments(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    video_id INTEGER,
    parent_comment_id INTEGER,
    content TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (parent_comment_id) REFERENCES comments(id)
);

CREATE TABLE comment_likes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    comment_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (comment_id) REFERENCES comments(id)
);

CREATE TABLE likes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    video_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

CREATE TABLE subscriptions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subscriber_id INTEGER,
    channel_id INTEGER,
    FOREIGN KEY (subscriber_id) REFERENCES users(id),
    FOREIGN KEY (channel_id) REFERENCES channels(id)
);

CREATE TABLE views(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    video_id INTEGER,
    user_id INTEGER,
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE watch_history(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    video_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

CREATE TABLE notifications(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    channel_id INTEGER,
    video_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (channel_id) REFERENCES channels(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

CREATE TABLE ads(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiser_id INTEGER,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (advertiser_id) REFERENCES users(id)
);

CREATE TABLE ad_impressions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad_id INTEGER,
    video_id INTEGER,
    user_id INTEGER,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE live_streams(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_id INTEGER,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES channels(id)
);

CREATE TABLE reports(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    reporter_id INTEGER,
    video_id INTEGER,
    comment_id INTEGER,
    reason VARCHAR(255) NOT NULL,
    FOREIGN KEY (reporter_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (comment_id) REFERENCES comments(id)
);
