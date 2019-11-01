--testando a tabela autor
insert into autor (nome_autor, nacionalidade_autor)
                    values ('João da Silva', 'brasileira')

--testando a tabela autoria
insert into autoria (livro_id, autor_id, tipo_autoria)
                      values (2, 1, 'Principal')

--testanto a tabela categoria_livro
insert into categoria_livro (descricao_categ) values ('Direito')

--testando a tabela editora
insert into editora (nome_editora, nacionalidade_editora, end_editora, contato_editora)
                      values ('Editora Rocco', 'Brasileira', '231, Av. Pres. Wilson, Rio de Janeiro, RJ, BR', '+552135252000')

--testando a tabela emprestimo
insert into emprestimo (num_empres, dt_hora_empres, dt_hora_devolucao, valor_multa, usuario_id, reserva_id)
                         values (20321, '2019-10-15 09:30:00', '2019-10-24 22:25:00', 0.00, 1, 4)

--testando a tabela exemplar
insert into exemplar (isbn, num_exemplar, num_edicao, qtde_paginas, ano_publicacao, valor_exemplar, localizacao, origem_id, livro_id, obs_exemplar, situacao_exemplar)
                        values ('72579937562367', 47, 1, 1022, 2019, 592.15, 'Acervo', 1, 3, 'Livro bem conservado', 'D')

--testanto a tabela itens_emprestimo
insert into itens_emprestimo (emprestimo_id, exemplar_id, dt_hora_devolucao, situacao_itens_emprestimo)
                                values (7, 6, '2019-10-24 22:25:00', 'Bom')

--testando a tabela itens_reserva
insert into itens_reserva (reserva_id, livro_id) values (1, 4)

--testando a tabela livro
insert into livro (titulo_livro, titulo_original, idioma_original, situacao_livro, editora_id, categ_id)
                    values ('Fogo e Sangue', 'Fire and Blood', 'Inglês', 'Novo', 5, 9)

--testando a tabela origem_exemplar
insert into origem_exemplar (tipo_origem) values ('Compra')

--testando a tabela reserva
insert into reserva (num_reserva, dt_hora_reserva, prazo_reserva, situacao_reserva, usuario_id)
                      values (2351, '2019-10-14 19:25:00', '2019-10-25 18:00:00', 'D', 3)

--testando a tabela usuario
insert into usuario (numero_identificador, nome_usuario, end_usuario, fone_usuario, sexo_usuario, dt_nascto_usuario, cpf_usuario, rg_usuario, tipo_usuario, tipo_identificador, area_vinculacao, cargo, situacao_usuario)
                      values (1240, 'Carlos Henrique', '199, Rua dos Alfeneiros, Nova Andradina, MS', '+5567996587365', 'M', '1999-10-22', '01769578296', '216516544', 'A', 'RA', 'ICT', 'Estudante', 'A')

--testando desafio
insert into emprestimo (valor_multa, usuario_id, reserva_id) values (0.00, 1, 4)
