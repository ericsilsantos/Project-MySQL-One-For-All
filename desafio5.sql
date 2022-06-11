SELECT c.nome AS "cancao",
COUNT(h.id_usuario) AS "reproducoes"
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.id = h.id_cancao
GROUP BY c.nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;