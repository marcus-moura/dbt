# Projeto ELT utilizando Kaggle como Source, Python para a Etapa EL e DBT Core para a Etapa T
Este é um projeto simples de Extração, Carregamento e Transformação (ELT) de dados utilizando o Kaggle como fonte de dados, um script Python para a etapa EL e o Postgres como Data Warehouse (DW), além do DBT Core para a etapa de Transformação (T).

### Objetivo do Projeto
O objetivo deste projeto é demonstrar um fluxo básico de ELT, onde dados são extraídos de arquivos CSV localizados na pasta "tables", processados usando um script Python e carregados em um banco de dados Postgres. Em seguida, a etapa de Transformação é realizada utilizando o DBT Core, que segue o modelo Start-Schema de modelagem dimensional. Os testes são executados em ambiente dev e, posteriormente, o resultado final é implantado em produção. Além disso, a documentação é gerada para tornar o processo transparente e facilmente compreensível.

### Pré-requisitos
Antes de começar a trabalhar com este projeto, certifique-se de ter o seguinte:

1. Python: Certifique-se de ter o Python instalado na sua máquina.

2. Postgres: Instale e configure o Postgres como seu Data Warehouse.

3. DBT Core: Instale o DBT Core na sua máquina para realizar a transformação dos dados.

4. Kaggle Dataset: Acesse o Kaggle e baixe o dataset que você deseja utilizar como fonte de dados. Coloque os arquivos CSV na pasta "tables".

## Etapas do Projeto
### Etapa EL (Extração e Carregamento)
1. Execute o script Python "el_postgres.py" para ler os arquivos CSV na pasta "tables" e carregar os dados no banco de dados Postgres.
### Etapa T (Transformação)
1. Modele os dados no formato Start-Schema da modelagem dimensional usando o DBT Core.
2. Realize testes em ambiente dev para garantir que as transformações estão sendo executadas conforme esperado.
3. Faça o deploy das transformações em ambiente de produção.
4. Utilize o DBT Core para gerar a documentação que torna o processo de transformação transparente e fácil de entender.

### Executando o Projeto
Certifique-se de que os pré-requisitos estejam atendidos.

1. Execute o script Python "el_postgres.py" para iniciar a etapa EL e carregar os dados no Postgres.

2. Utilize o DBT Core para realizar as transformações dos dados, seguindo o modelo Start-Schema da modelagem dimensional.

3. Realize testes em ambiente dev para validar as transformações.

4. Faça o deploy das transformações em ambiente de produção.

5. Utilize o DBT Core para gerar a documentação do processo de transformação.

### Avisos
Este projeto é apenas para fins de demonstração e aprendizado. Em um ambiente de produção real, revise cuidadosamente as configurações, segurança e controle de acesso.

### Recursos Adicionais
- [Documentação do DBT Core](https://docs.getdbt.com/docs/core/about-core-setup)
- [Documentação do PostgreSQL](https://www.postgresql.org/docs/)
- [Site do Kaggle](https://www.kaggle.com/)
