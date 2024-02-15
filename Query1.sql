-- Create a new Table Music Video

CREATE TABLE MusicVideo (
    trackId INTEGER PRIMARY KEY,
    musicvideo_id INTEGER PRIMARY KEY AUTOINCREMENT REFERENCES Track(TrackId),
    director TEXT,
);
