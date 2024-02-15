-- Create a new Table Music Video

CREATE TABLE MusicVideo (
    trackId INTEGER PRIMARY KEY,
    videoDirector TEXT,
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);
