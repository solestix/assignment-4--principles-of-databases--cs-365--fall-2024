CREATE TABLE IF NOT EXISTS artist (
  artist_id   INT          NOT NULL,
  artist_name VARCHAR(128) NOT NULL,

  PRIMARY KEY (artist_id)
);

CREATE TABLE IF NOT EXISTS album (
  artist_id  INT          NOT NULL,
  album_id   INT          NOT NULL,
  album_name VARCHAR(128) NOT NULL,

  PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS track (
  artist_id  INT          NOT NULL,
  album_id   INT          NOT NULL,
  track_id   INT          NOT NULL,
  track_name VARCHAR(128) NOT NULL,
  time       DECIMAL(5,2) NOT NULL,

  PRIMARY KEY (artist_id, album_id, track_id)
);

CREATE TABLE IF NOT EXISTS played (
  played TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (played)
);
