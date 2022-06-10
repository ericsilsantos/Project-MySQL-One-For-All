SELECT ar.nome AS "artista", al.nome AS "album"
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.id
WHERE ar.nome = "Walter Phoenix";