SELECT u.nome AS "usuario", 
	COUNT(h.id_cancao) AS "qtde_musicas_ouvidas", 
	ROUND(SUM(c.duracao) / 60, 2) AS "total_minutos"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.id = h.id_usuario
INNER JOIN SpotifyClone.cancao AS c
ON h.id_cancao = c.id
GROUP BY u.nome
ORDER BY u.nome;