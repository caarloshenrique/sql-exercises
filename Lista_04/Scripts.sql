--criando gerador para tabela autor
create generator genid_autor

--posicionando generator
set generator genid_autor to 7

--criando a trigger
create trigger tincid_autor for autor
active before insert  position 0
as
begin
    new.id_autor = gen_id(genid_autor,1);
end


--criando gerador para tabela autoria
create generator genid_autoria

--posicionando generator
set generator genid_autoria to 10

-- criando a trigger
create trigger tincid_autoria for autoria
active before insert position 0
as
begin
    new.id_autoria = gen_id(genid_autoria, 1);
end


--criando gerador para a tabela categoria_livro
create generator genid_categoria_livro

--posicionando generator
set generator genid_categoria_livro to 9

--criando a trigger
create trigger tincid_categoria_livro for categoria_livro
active before insert position 0
as
begin
    new.id_categ = gen_id(genid_categoria_livro, 1);
end


--criando gerador para a tabela editora
create generator genid_editora

--posicionando generator
set generator genid_editora to 4

--criando a trigger
create trigger tincid_editora for editora
active before insert position 0
as
begin
    new.id_editora = gen_id(genid_editora, 1);
end


--criando o gerador para a tabela emprestimo
create generator genid_emprestimo

--posicionando generator
set generator genid_emprestimo to 6

--criando a trigger
create trigger tincid_emprestimo for emprestimo
active before insert position 0
as
begin
    new.id_empres = gen_id(genid_emprestimo, 1);
end


--criando o gerador para a tabela exemplar
create generator genid_exemplar

--posicionando generator
set generator genid_exemplar to 10

--criando a trigger
create trigger tincid_exemplar for exemplar
active before insert position 0
as
begin
    new.id_exemplar = gen_id(genid_exemplar, 1);
end


--criando o gerador para a tabela itens_emprestimo
create generator genid_itens_emprestimo

--posicionando generator
set generator genid_itens_emprestimo to 5

--criando a trigger
create trigger tincid_itens_emprestimo for itens_emprestimo
active before insert position 0
as
begin
    new.id_iemprestimo = gen_id(genid_itens_emprestimo, 1);
end


--criando o gerador para a tabela itens_reserva
create generator genid_itens_reserva

--posicionando generator
set generator genid_itens_reserva to 6

--criando a trigger
create trigger tincid_itens_reserva for itens_reserva
active before insert position 0
as
begin
    new.id_ireserva = gen_id(genid_itens_reserva, 1);
end


--criando gerador para a tabela livro
create generator genid_livro

--posicionando generator
set generator genid_livro to 10

--criando a trigger
create trigger tincid_livro for livro
active before insert position 0
as
begin
    new.id_livro = gen_id(genid_livro, 1);
end


--criando gerador para a tabela origem_exemplar
create generator genid_origem_exemplar

--posicionando generator
set generator genid_origem_exemplar to 2

--criando a trigger
create trigger tincid_origem_exemplar for origem_exemplar
active before insert position 0
as
begin
    new.id_origem = gen_id(genid_origem_exemplar, 1);
end


--criando gerador para a tabela reserva
create generator genid_reserva

--posicionando generator
set generator genid_reserva to 6

--criando a trigger
create trigger tincid_reserva for reserva
active before insert position 0
as
begin
    new.id_reserva = gen_id(genid_reserva, 1);
end


--criando gerador para a tabela usuario
create generator genid_usuario

--posicionando generator
set generator genid_usuario to 6

--criando a trigger
create trigger tincid_usuario for usuario
active before insert position 0
as
begin
    new.id_usuario = gen_id(genid_usuario, 1);
end


--DESAFIO
--criando gerador para número do emprestimo da tabela emprestimo
create generator genum_emprestimo

--posicionando generator
set generator genum_emprestimo to 20321

--alterando trigger
ALTER TRIGGER tincid_emprestimo
active before insert position 0
as
begin
     new.id_empres = gen_id(genid_emprestimo, 1);
     new.num_empres = gen_id(genum_emprestimo, 1);
     new.dt_hora_empres = current_timestamp;
     new.dt_hora_devolucao = dateadd (5 day to current_timestamp);
end
