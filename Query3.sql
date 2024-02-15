--Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.
SELECT TrackId FROM Track WHERE Name = 'Voodoo';
INSERT INTO MusicVideo (TrackId, VideoDirector) VALUES (15, 'New Video Director');