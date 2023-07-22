# Elt superstore dbt

Este é um projeto simples de ELT utilizando dados do kaggle como source, um script python para a etapa EL , com o postgres como DW, e o DBT Core para a etapa T.

**Passos**

1. Iniciar a etapa EL extraindo os dados em csv da pasta tables
    - Nesse caso é utilizado o script python(el_postgres) para ler os arquivos e escrever em um banco de dados postgres.
2. Fazer a etapa T(transformation) do ELT utilizando o framework DBT Core
    - Passos
        - Modeladar no formato Start-Schema da modelagem dimensional
        - Realizar testes em ambiente dev
        - Realizar o deploy em prod
        - Gerar a documentação
