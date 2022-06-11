SELECT COUNT(h.id_cancao) AS "quantidade_musicas_no_historico"
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.id_usuario = u.id
WHERE u.nome = "Bill";