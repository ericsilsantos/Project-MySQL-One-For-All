SELECT c.name AS "cancao",
COUNT(h.id_usuario) AS "reproducoes"
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON c.id = h.id
GROUP BY c.cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;