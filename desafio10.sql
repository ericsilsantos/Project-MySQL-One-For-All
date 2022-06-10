SELECT c.nome AS "nome", COUNT(*) AS "reproducoes"
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.id = h.id_cancao
INNER JOIN SpotifyClone.usuario AS u
ON h.id_usuario = u.id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY c.nome
ORDER BY reproducoes DESC, nome;