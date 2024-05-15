use ferias;

-- Inserir dados na tabela Cidade
INSERT INTO cidade (NomeDaCidade, Estado, Pais) VALUES
('Rio de Janeiro', 'Rio de Janeiro, Brasil'),
('Paris', 'Île-de-France, França'),
('Nova York', 'Nova York, Estados Unidos');

-- Inserir dados na tabela Pessoa
INSERT INTO Pessoa (NomeCompleto, Sexo, DataDeNascimento, NecessidadesEspeciais, Endereco, Telefones, Emails) VALUES
('João Silva', 'M', '1990-05-20', NULL, 'Rua A, nº 123', '123456789', 'joao@email.com'),
('Maria Souza', 'F', '1985-10-15', NULL, 'Av. B, nº 456', '987654321', 'maria@email.com'),
('Carlos Oliveira', 'M', '1978-03-08', 'Cadeira de rodas', 'Rua C, nº 789', '111222333', 'carlos@email.com');

-- Inserir dados na tabela Viagem
INSERT INTO Viagem (NomeDaViagem, DataDeInicio, DataDeTermino, QuantidadeDePessoas, Observacoes) VALUES
('Férias no Rio', '2024-07-01', '2024-07-15', 2, 'Visitar pontos turísticos e praias'),
('Eurotrip', '2024-08-10', '2024-08-25', 3, 'Conhecer cidades da Europa'),
('Viagem a Nova York', '2024-09-05', '2024-09-10', 1, 'Viagem de negócios');

-- Inserir dados na tabela PontoTuristico
INSERT INTO PontoTuristico (NomeDoPontoTuristico, Tipo, HorarioDeFuncionamento, PrecoDeEntrada, Acessibilidade, FaixaEtaria, LocalizacaoGoogleMaps, CidadeID) VALUES
('Cristo Redentor', 'Monumento', '09:00 - 18:00', 50.00, 'Sim', NULL, 'https://goo.gl/maps/cristo_redentor', 1),
('Torre Eiffel', 'Monumento', '09:30 - 23:45', 25.00, 'Sim', NULL, 'https://goo.gl/maps/torre_eiffel', 2),
('Estátua da Liberdade', 'Monumento', '08:30 - 16:30', 18.50, 'Sim', NULL, 'https://goo.gl/maps/estatua_liberdade', 3);

-- Inserir dados na tabela Aquisicao
INSERT INTO Aquisicao (TipoDeDespesa, DataDaCompra, DataEHoraDeUtilizacao, LinkDeCompra, TelefoneDeContato, EmailDeContato, Arquivo, ViagemID) VALUES
('Passagem aérea', '2024-06-01', '2024-07-01 10:00:00', 'http://exemplo.com/passagem', NULL, NULL, NULL, 1),
('Ingresso Torre Eiffel', '2024-07-10', '2024-08-12 15:00:00', 'http://exemplo.com/ingresso_eiffel', NULL, NULL, NULL, 2),
('Taxi do aeroporto', '2024-08-10', '2024-08-10 13:30:00', NULL, '555666777', NULL, NULL, 2);

-- Inserir dados na tabela Evento
INSERT INTO Evento (Data, HorarioDeInicio, HorarioDeTermino, Descricao, Localizacao, PontoTuristicoID, ViagemID) VALUES
('2024-07-05', '14:00:00', '17:00:00', 'Visita guiada ao Cristo Redentor', 'Cristo Redentor, Rio de Janeiro', 1, 1),
('2024-08-15', '10:00:00', '13:00:00', 'Tour pela Torre Eiffel', 'Torre Eiffel, Paris', 2, 2),
('2024-09-07', '09:00:00', '12:00:00', 'Reunião de negócios', 'Escritório em Manhattan', NULL, 3);

select * from cidade;
select * from pessoa;
select * from viagem;
select * from pontoturistico;
select * from evento;
select * from aquisicao;

drop table cidade;
