
* Migração da NE para POP20
	Moro ficou de olhar as configurações e nos passar o prazo para migrar, pode ser feito durante o dia. Ele vai alterar as sessões de BGP para outro NE e depois volta após a migração.

Proposta de ter um ASN só o 268214. Pra reduzir a complexidade da rede. Se mantiver terá que se comprar equipamentos para ter redundância.

Fazer de imediato, configurar a redundância do BGP1 para o BGP3. Sugestão de migrar todas as operadoras para o 268214. 

Cenário que ele gosta de fazer, subir as sessões onde tem chegam os links físicos. 

Observação: Se mantiver duas ASN, obrigatoriamente tem que comprar um novo NE ou ver se é possível comprar uma licença pra subir outra sessão, no caso de manter um só, podemos ter 3 bordas, Sapucaia, Telium e Navegantes. 

O 268214 fica de cara pra internet com duas bordas e o 273461 será um um cliente dele, basicamente um cliente ISP no 268214.

Bloco da Cogent (273461) é vulnerável, porque só é anunciado em Sapucaia, se parar a Telium ele cai também. Porque ele só tem uma sessão eBPG somente com o BGP2. Elea está configurada errada com a COGENT.

Sugestão trocar o Mikrotik (CGNAT) por um equipamento específico para CGNAT, exemplos (Hillston 10GB ~30k, A10 ou F5) para resolver questão de NAT duplo, melhor estabilidade, menos problemas para o cliente. Ter um NAT de qualidade. E principalmente resolver o Full Cone.

Migração do Dude pro Zabbix, Future vai auxiliar na migração. No primeiro momento a ideia é manter ambos em funcionamento.

Instalar uma VM para ao [[[CBackup](https://github.com/cBackup/main)]], para fazermos backups dos equipamentos.

Hoje está assim:
BGP3 268214
BGP2 268214
BGP1 273461

Sugestão de DDoS

1) Packet Flow Spec: Uma ferramenta instalada no provedor e ela analisa o pacote e se houver um problema ele bloqueia na borda. 
2) Community BGP: Uma comunidade que a operadora tem com o serviço de limpar o bloco. Que o Flow Spec identifica, manda pra comunidade BPG e retira o bloco de anúncio para as outras operadoras.
3) O Que a Telium entrega, somente funciona no link deles.






