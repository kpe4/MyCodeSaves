# MyCodeSaves

CREATE TABLE user_videos(
  id primary key AUTOINCREMENT
);

CREATE TABLE users(
  id integer PRIMARY KEY AUTOINCREMENT,
  user_videos_id integer,
  
  foreign key (user_videos_id) references user_videos(id)
);

CREATE TABLE videos(
  id PRIMARY KEY AUTOINCREMENT,
  user_videos_id INTEGER,
  
  foreign key (user_videos_id) REFERENCES user_videos(id)
);

Create table watch_history(
  id integer primary key AUTOINCREMENT,
  user_videos_id integer,
  
  FOREIGN key (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE table department(
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table moderators( 
  id integer PRIMARY KEY AUTOINCREMENT,
  FOREIGN key (videos_id) REFERENCES cideo(id)
);
create table comments(
  id integer PRIMARY KEY AUTOINCREMENT,
  user_id integer,
  cideos_id integer,
  content text not null,
  foreign key (videos_id) REFERENCES videos(id),
  foreign key (user_id) REFERENCES user(id)
);

create table playlist(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id integer,
  foreign key (user_id) REFERENCES user(id)
);

create table user_subscribe(
  user_notification primary key AUTOINCREMENT,
  foreign key(user_notification) references user(notification)
)
