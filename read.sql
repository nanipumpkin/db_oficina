use oficina;
show tables;

-- retorna qual o problema mais recorrente em cada modelo de veículo
SELECT 
    Modelo, Marca, Tipo_de_Peca, count(Tipo_de_peca) as Ocorrencias
FROM
    veiculos
GROUP BY Modelo, Marca, Tipo_de_peca
ORDER BY Ocorrencias DESC;

-- retorna a data com maior entrada de servicos num determinado período
select data_emissao, count(*) as entradas
from ordem_de_servico
where data_emissao between '2022-09-05' and '2022-09-09'
group by data_emissao
order by entradas desc;

-- retorna qual modelo de veículo tem a maior taxa de manutenção
SELECT 
    Modelo, Marca, AVG(Valor) as Custo_manutencao
FROM
    veiculos
        LEFT JOIN
    ordem_de_servico ON Placa = Placa_veiculo
GROUP BY Modelo, Marca, Valor
ORDER BY Valor DESC;

-- retorna o nome do funcionario com maior número de solicitações
select Nome, Sobrenome, Especialidade, count(Servicos_solicitados) as Solicitacoes
from servicos as s
left join mecanicos as m on m.Id = Mecanico_resp
left join ordem_de_servico as o on Id_servico = s.Id
group by Nome, Sobrenome, Especialidade
order by Solicitacoes desc;
