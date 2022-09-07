use oficina;
show tables;

insert into mecanicos (Nome, Sobrenome, Endereco, Especialidade)
	values ('Carlos', 'Silva', 'Rua Delminda Silveira, 202, Agronomica, Florianopolis', 'Funilaria, pintura e reformas'),
		   ('Eduardo', 'Gomes', 'Rua Frederico Westphal, 445, Joao Paulo, Florianopolis', 'Troca de oleo'),
           ('Valmir', 'Ferreira', 'Rua Domingos de Almeida, 107, Corrego Grande, Florianopolis', 'Geometria e balanceamento'),
           ('Ademir', 'Santos', 'Rua Francisco de Padua, 809, Serrinha, Florianopolis', 'Revisão embreagem, freios, amortecedores'),
           ('Ismael', 'Teixeira', 'Rua Flora Maria, 230, Trindade, Florianopolis', 'Motor, vela');

insert into servicos (Tipo, Valor, Mecanico_resp)
	values ('Troca de óleo e filtro', 30, 2),
		   ('Troca de pastilha de freio', 40, 4),
           ('Troca de disco de freio', 70, 4),
           ('Troca de amortecedor', 140, 4),
		   ('Troca de vela e cabo de ignição', 70, 5),
           ('Troca de tensor e correia dentada', 140, 5),
           ('Troca de embreagem', 210, 4),
           ('Balanceamento de pneus', 100, 3),
           ('Pintura de para-choques', 210, 1),
           ('Sangria do óleo de freio', 70, 2);           
           
insert into veiculos (Placa, Modelo, Marca, Cor, Tipo_de_peca)
	values('BRA0S17', 'Onix', 'Chevrolet', 'Branco', 'Suspensao'),
		  ('BBI2284', 'HB20', 'Hyundai', 'Preto', 'Pneus'),
          ('BCV3G50', 'Sandero', 'Renault', 'Prata', 'Motor'),
          ('BFQ8G63', 'Fit', 'Honda', 'Prata', 'Para-choques'),
          ('BEE4R22', 'Palio', 'Fiat', 'Branco', 'Motor'),
          ('BCV3G68', '307', 'Peugeot', 'Preto', 'Freio');

insert into clientes (Nome, Sobrenome, CPF, CNPJ, Endereco, Telefone, Placa_veiculo)
	values('Sabrina', 'Silva', 21345647812, null, 'Rua Conselheiro Mafra, 1200, Centro, Florianopolis', 48999641234, 'BRA0S17'),
		  ('Valeria', 'Pimentel', 12347891231, null, 'Rua Mauricio Spalding de Souza, 45, Corrego Grande, Florianopolis', 48996324565, 'BBI2284'),
          ('Ricardo', 'Bragaglia', 47219534801, null, 'Avenida Alameda Vinha, 109, Joao Paulo, Florianopolis', 48988874584, 'BCV3G50'),
          ('Julia', 'Costa', 08754943802, null, 'Rua Delminda Silveira, 245, Agronomica, Florianopolis', 48998780041, 'BFQ8G63'),
          ('Maria E.', 'Costa', 07113249457, null, 'Rua Lauro Linhares, 1730, Trindade, Florianopolis', 48996324532, 'BEE4R22'),
          ('Carolina', 'Palermo', 47987269752, null, 'Rua das Laranjeiras, 203, Jurere, Florianopolis', 48992341110, 'BCV3G68');

insert into ordem_de_servico (Servicos_solicitados, Data_emissao, Valor, Status_servico, Data_entrega, Placa_veiculo, Id_cliente, Id_servico)
	values ('Troca de amortecedor', '2022-09-06', 100, 'Em andamento', '2022-09-08', 'BRA0S17', 1, 4),
		   ('Balanceamento', '2022-09-06', 210, 'Em espera', '2022-09-10', 'BBI2284', 3, 8),
           ('Troca de tensor e correia dentada', '2022-09-06', 140, 'Em espera', '2022-09-08', 'BCV3G50', 5, 6),
           ('Pintura de para-choques', '2022-09-05', 210, 'Em andamento', '2022-09-08', 'BFQ8G63', 4, 9),
           ('Troca de óleo e filtro', '2022-09-06', 30, 'Finalizado', '2022-09-06', 'BEE4R22', 2, 1),
           ('Troca de disco de freio', '2022-09-05', 70, 'Entregue', '2022-09-06', 'BCV3G68', 6, 3);


