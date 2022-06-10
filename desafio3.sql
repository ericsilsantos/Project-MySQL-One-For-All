SELECT u.name AS "usuario", 
	COUNT(h.id_cancao) AS "qtde_musicas_ouvidas", 
	ROUND(SUM(c.duracao) / 60, 2) AS "total_minutos"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.id = h.id
INNER JOIN SpotifyClone.cancoes AS c
ON h.id = c.id
GROUP BY u.name;