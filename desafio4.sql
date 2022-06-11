SELECT u.nome AS "usuario",
IF (MAX(YEAR(h.data_reproducao)) = 2021, "Usuário ativo", "Usuário inativo") AS "condicao_usuario"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.id = h.id_usuario
GROUP BY u.nome
ORDER BY u.nome;