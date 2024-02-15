--Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.
INSERT INTO musicVideo (director)
SELECT DISTINCT Name AS director
FROM artist
WHERE Name = 'Voodoo';
