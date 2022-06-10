SELECT ar.nome AS "artista", al.nome AS "album",
COUNT(c.artista_id) AS "seguidores"
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.id
INNER JOIN SpotifyClone.seguindo_artistas AS c
ON c.id = al.id
GROUP BY ar.nome, al.nome
ORDER BY seguidores DESC, artista ASC, album ASC;