# Pasta com dados
setwd ('/Users/newuser/Documents/bank')

# Abrir tabela
tabela <- read.table(file='/Users/newuser/Documents/bank/bank-full.csv',header=T,sep=";")
View(tabela)

# Analisando a tabela
head(tabela)
tail(tabela)
str(tabela)

# Essa opção sumariza as informaçoes gerais da tabela, mostrando as frequencias das ocorrencias, valores minimos e maximos
sumario <- summary(tabela)
write.table(sumario, file="sumariogeral.csv")
View(sumario)

###Questão 1########
# A partir dessa tabela temos informação sobre a profissão que possui mais empréstimo BLUE-COLLAR (9732), podendo ser considerada a que tem mais tendência a fazer empréstimos no geral
#Separa apenas dos dados de BLUE-COLLAR
dr=subset(tabela, tabela[2]=="blue-collar")
write.table(dr, "blue.csv")
View(dr)
# Sumarizar a tabela de BLUE-COLLAR
sum_blue <- summary(dr)
write.table(sum_blue, file="sum_blue.csv")
View(sum_blue)
# Com esses valores temos que 7048 pessoas tem empréstimo do tipo HOUSING, número bem maior que empréstimo pessoal

###Questão 2########

# A respeito do número de contatos (CAMPAIGN) verificamos na tabela sumarizada acima, que 29.285 desses contatos foram realizados em ligações para CELLULAR, ou seja, 90% dos contatos
# Além disso 84% das pessoas não possuem PERSONAL LOAN (37.967), o que mostra uma possível abertura dessas pessoas para futuros empréstimos
# As ligações que mais duraram em tempo foram feitas com pessoas sem empréstimo pessoal
# Número alto de pessoas casadas 27.214 e das profissões que podemos destacar de interesse seriam BLUE-COLLAR e MANAGEMENT

###Questão 3#######
# Separei os valores de CAMPAIGN até POUTCOME
cp <- tabela[,13:16 ]
View(cp)
write.table(cp, file="cp.csv")
# Sumarizando para conhecer os dados
sumcp <- summary(cp)
write.table(sumcp, file="sumcp.csv")
View(sumcp)
# O total de sucesso da campanha foi de 1.511, com isso o número médio sugerido de ligações seria de 2, e o valor máximo de 3 ligações

###Questão 4#####
# Com certeza, toda campanha produz uma quantidade de anos que pode ser explorada pela prover melhoras nas campanhas futuras. Com a detecção da tendência de um público específico é possível focar com mais certeza em públicos que trarão maior retorno, além de explorar um público que possa ser promissor

###Questão 5####
# É necessário verificar o perfil dos clientes em relação à atraso de pagamentos, quantidade de empréstimos, comportamnento do cliente no mercado, ou seja, se realiza ou não atitudes que saem do seu padrão de comportamento, como grandes compras, grandes empréstimos.
# Ao ter essas informações o banco pode tomar a decisão de ter um seguro de crédito.

##Questão 6####
# Separando os dados de HOUSING-YES
housing=subset(tabela, tabela[7]=="yes")
View(housing)
write.table(housing, file="housing.csv")
# Sumarizar a tabela de HOUSING-YES
sum_house <- summary(housing)
write.table(sum_house, file="sum_house.csv")
View(sum_house)
# Analisando novamente os dados separados dos clientes que possuem empréstimos imobiliário, as melhores características seriam:
# a faixa etária média de 38 anos, clientes que realizam depósito a prazo, sem crédito pessoal, e que buscá-los via celular.

