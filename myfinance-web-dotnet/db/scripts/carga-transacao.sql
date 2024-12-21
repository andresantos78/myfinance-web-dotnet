USE [myfinance]
GO
-- Débitos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-01', 150.00, 'Abastecimento mensal', 'D', 1); -- Combustível

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-02', 200.00, 'Compra no supermercado', 'D', 2); -- Alimentação

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-05', 1200.00, 'Pagamento do aluguel', 'D', 3); -- Aluguel

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-10', 350.00, 'Pagamento de condomínio', 'D', 4); -- Condomínio

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-15', 250.00, 'Manutenção do carro', 'D', 8); -- Manutenção Veicular

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-20', 100.00, 'Compra de material de limpeza', 'D', 15); -- Limpeza

-- Créditos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-01', 5000.00, 'Depósito de salário', 'R', 23); -- Crédito de Salário

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-05', 200.00, 'Recebimento de aluguel', 'R', 24); -- Crédito de Aluguel

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-08', 300.00, 'Juros recebidos da poupança', 'R', 21); -- Crédito de Juros

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-12', 800.00, 'Venda de mercadorias', 'R', 24); -- Crédito de Venda

-- Débitos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-01', 150.00, 'Abastecimento semanal', 'D', 1); -- Combustível

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-03', 300.00, 'Compra de alimentos', 'D', 2); -- Alimentação

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-05', 1200.00, 'Aluguel residencial', 'D', 3); -- Aluguel

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-06', 350.00, 'Taxa mensal de condomínio', 'D', 4); -- Condomínio

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-07', 150.00, 'Conta de água', 'D', 16); -- Água

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-07', 250.00, 'Conta de energia elétrica', 'D', 17); -- Luz

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-08', 150.00, 'Plano de internet', 'D', 18); -- Internet

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-10', 80.00, 'Telefone móvel mensal', 'D', 19); -- Telefone Fixa e Móvel

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-12', 800.00, 'Seguro veicular', 'D', 7); -- Seguro

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-13', 50.00, 'Estacionamento no shopping', 'D', 9); -- Estacionamento

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-15', 200.00, 'Passeio com a família', 'D', 10); -- Lazer

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-17', 450.00, 'Mensalidade escolar', 'D', 11); -- Educação

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-20', 120.00, 'Consulta médica', 'D', 12); -- Saúde

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-21', 200.00, 'Roupa nova para festas', 'D', 13); -- Vestuário

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-22', 50.00, 'Produtos de higiene', 'D', 14); -- Higiene

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-25', 300.00, 'Reparos no carro', 'D', 8); -- Manutenção Veicular

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-27', 180.00, 'Compra de material de limpeza', 'D', 15); -- Limpeza

-- Créditos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-01', 5000.00, 'Salário mensal', 'R', 23); -- Crédito de Salário

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-05', 250.00, 'Recebimento de aluguel', 'R', 24); -- Crédito de Aluguel

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-08', 400.00, 'Dividendos de ações', 'R', 20); -- Crédito de Dividendos

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-12', 300.00, 'Juros recebidos', 'R', 21); -- Crédito de Juros

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-15', 1500.00, 'Receita de venda de mercadorias', 'R', 24); -- Crédito de Venda

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-20', 1000.00, 'Pagamento por serviços prestados', 'R', 24); -- Crédito de Venda

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-22', 600.00, 'Rendimento de aplicações', 'R', 21); -- Crédito de Juros

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-12-28', 2000.00, 'Bônus de final de ano', 'R', 23); -- Crédito de Salário

-- Débitos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-01', 100.00, 'Combustível - abastecimento semanal', 'D', 1);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-03', 250.00, 'Supermercado do mês', 'D', 2);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-05', 1200.00, 'Aluguel residencial', 'D', 3);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-06', 300.00, 'Condomínio', 'D', 4);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-07', 140.00, 'Conta de água - novembro', 'D', 16);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-08', 220.00, 'Conta de luz - novembro', 'D', 17);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-10', 80.00, 'Plano de internet', 'D', 18);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-12', 75.00, 'Telefone móvel - novembro', 'D', 19);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-14', 600.00, 'Manutenção no carro', 'D', 8);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-15', 50.00, 'Estacionamento no centro', 'D', 9);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-16', 180.00, 'Cinema e jantar em família', 'D', 10);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-18', 400.00, 'Mensalidade escolar', 'D', 11);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-20', 250.00, 'Consulta médica', 'D', 12);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-22', 180.00, 'Compra de roupas de inverno', 'D', 13);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-24', 60.00, 'Produtos de higiene pessoal', 'D', 14);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-25', 130.00, 'Material de limpeza', 'D', 15);

-- Créditos
insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-01', 4800.00, 'Salário recebido', 'R', 23);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-04', 300.00, 'Dividendos de ações', 'R', 20);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-08', 350.00, 'Recebimento de aluguel', 'R', 24);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-12', 250.00, 'Juros de aplicações financeiras', 'R', 21);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-15', 700.00, 'Venda de produtos', 'R', 24);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-20', 1500.00, 'Pagamento por serviços prestados', 'R', 24);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-25', 800.00, 'Rendimento de fundos de investimento', 'R', 21);

insert into Transacao (data, valor, historico, tipo, planocontaid) 
values ('2024-11-30', 500.00, 'Bônus por metas atingidas', 'R', 23);
