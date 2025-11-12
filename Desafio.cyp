MERGE ()<-[:_RELATED]-(Artistas)<-[:_RELATED]-(`Mais reproduzias`)<-[:_RELATED]-(Usuario)-[:_RELATED]->(`Interesses Frequentes`)-[:_RELATED]->()
MERGE (`Interesses Frequentes`)<-[:_RELATED]-()<-[:_RELATED]-(`Interesses Frequentes`)-[:_RELATED]->(Artistas)
MERGE (Usuario)-[:_RELATED]->()-[:_RELATED]->()
MERGE (`Interesses Frequentes`)<-[:_RELATED]-(`Mais reproduzias`)-[:_RELATED]->()-[:_RELATED]->(`Interesses Frequentes`)
MERGE ()

OR

MATCH path0 = ()<--(Artistas)<--(`Mais reproduzias`)<--(Usuario)-->(`Interesses Frequentes`)-->(),
path1 = (`Interesses Frequentes`)<--()<--(`Interesses Frequentes`)-->(Artistas),
path2 = (Usuario)-->()-->(),
path3 = (`Interesses Frequentes`)<--(`Mais reproduzias`)-->()-->(`Interesses Frequentes`),
path4 = ()
RETURN path0, path1, path2, path3, path4
