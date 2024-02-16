--Write the queries that insert at least 10 videos, respecting the problem rules.
INSERT INTO MusicVideo (musicVideo, VideoDirector)
 SELECT DISTINCT Trackid AS musicVideo_id, "director Name"
 FROM tracks
 LIMIT
 10;
 SELECT * FROM MusicVideo;
