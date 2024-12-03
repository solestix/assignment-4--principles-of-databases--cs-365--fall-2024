-- 1
SELECT CONCAT(artist.artist_name, ' recorded ', album.album_name) AS Recording
FROM artist
JOIN compiles ON artist.artist_id = compiles.artist_id
JOIN album ON compiles.album_id = album.album_id;

-- 2

-- 3
SELECT artist.artist_name, album.album_name
FROM artist
JOIN compiles ON artist.artist_id = compiles.artist_id
JOIN album ON compiles.album_id = album.album_id;

-- 4
SELECT album.album_name, track.track_name
FROM album
JOIN contains ON album.album_id = contains.album_id
JOIN track ON contains.track_id = track.track_id;

-- 5
SELECT track.track_name, track.time, played.played
FROM track
JOIN wasPlayedAt ON track.track_id = wasPlayedAt.track_id
JOIN played ON wasPlayedAt.played = played.played;
