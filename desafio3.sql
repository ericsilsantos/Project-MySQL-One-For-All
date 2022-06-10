SELECT u.name AS "usuario", 
	COUNT(h.cancao_id) AS "qtde_musicas_ouvidas", 
	ROUND(SUM(c.duracao) / 60, 2) AS "total_minutos"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY u.usuario