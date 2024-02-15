-- Create a new Table Music Video

CREATE TABLE MusicVideo (
    TrackId INTEGER PRIMARY KEY,
    VideoDirector TEXT,
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);
