# Relacionamento de Dados em Neo4j

Este repositório contém um conjunto de instruções Cypher para criar relacionamentos entre usuários, artistas e interesses em um grafo no **Neo4j**.

---

## Estrutura do Grafo

O grafo envolve os seguintes nós e relações:

- `Usuario`  
- `Artistas`  
- `Mais reproduzias`  
- `Interesses Frequentes`

As relações são do tipo `:_RELATED`.

---

## Queries

As instruções abaixo estabelecem conexões entre os nós:

```cypher
MERGE ()<-[:_RELATED]-(Artistas)<-[:_RELATED]-(`Mais reproduzias`)<-[:_RELATED]-(Usuario)-[:_RELATED]->(`Interesses Frequentes`)-[:_RELATED]->()
MERGE (`Interesses Frequentes`)<-[:_RELATED]-()<-[:_RELATED]-(`Interesses Frequentes`)-[:_RELATED]->(Artistas)
MERGE (Usuario)-[:_RELATED]->()-[:_RELATED]->()
MERGE (`Interesses Frequentes`)<-[:_RELATED]-(`Mais reproduzias`)-[:_RELATED]->()-[:_RELATED]->(`Interesses Frequentes`)
MERGE ()

````


# Descrição

Cria conexões bidirecionais entre Usuario, Artistas e Mais reproduzias.

Conecta Interesses Frequentes com Artistas e outros interesses relacionados.

Garante que relacionamentos redundantes não sejam duplicados usando MERGE.

Estrutura o grafo para análises de recomendações musicais e interesses do usuário.

# Como Usar

Instale o Neo4j.
Abra o Neo4j Browser.
Copie e cole as queries acima.
Execute para criar os relacionamentos no seu banco de dados.

# Observações

Substitua os nós () por identificadores concretos ou variáveis conforme seu modelo.

Ajuste os nomes dos nós (Mais reproduzias, Interesses Frequentes) de acordo com a nomenclatura do seu banco de dados.
