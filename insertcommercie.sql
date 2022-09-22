INSERT INTO Cliente (idCliente,Fname, Minit, Lname,CPF,Address) VALUES
 (2,'RICARDO','O','SANTOS',578496,'PRECIDENTE -RJ'),
(3,'PAULA','M','PEREIRA',5246856,'RUA QUEIRA  BANDEIRA - RJ'),
(4,'CARLA','M','BAIA DA SILVA',65784125,'RUA SANTOS LUIZ -PR');
SELECT COUNT(*) FROM Cliente c, Orders o  WHERE c.idCliente = idOrderClient;

INSERT INTO Product (Fname,Classification_kids,Category,Avaliation,size) VALUES 
('FONE DE OUVIDO', FALSE,'ELETRONICO',4,NULL),
('BARBIE ELSA',TRUE,'BRINQUEDO',3,NULL),('BODY CARTERS' , TRUE, 'VESTIMENTA',5,NULL),
('MICROFONE VEDO - YOUTUBE',FALSE,'ELETRONICO',4,NULL),('SOFÁ RETRATIL', FALSE,'MÓVEIS',3,'3X57X80');

seLECT * FrOM Product;


inSERT InTO Orders ( IdOrderClient, OrdersStatus, OrdersDescription, SendValue,pAymentCash) VALUES 
(1, DeFAULT,'COMPRA VIA APLICATIVO',NULL,1),
(2,DEFAULT, 'COMPRA VIA APLICATIVO',50,0),
(3,'CONFIRMADO', NULL ,nULL,1),
(4,DEFAULT,'COMPRA VIA WEB SITE',150,0);

SELECT 
    c.iDclient, Fname, COUNT(*) AS Number_of_orders
FROM
    Cliente c
        INNER JOIN
    Orders o ON C.iDClient = O.iDOrdeClient
        INNER JOIN
    p ON P.iDPooderCient = O.iDOrder
GROUP BY IdClient;


inSERT InTO ProductOrder (iDPOproduct ,iDPOorder,pOquantity,pOStatus) VaLUES 
(1,1,2, NuLL),(2,1,1,NULL),(3,2,1,NULL);
seLECT * FrOM ProductOrder;

inSERT InTO ProductStorage (STorageLocation, Quantity) VaLUE
 ('RIO DE JANEIRO','1000'),('RIO DE JANEIRO',5000),('SAO PAULA',10),('SAO PAULO',100)
 ,('SAO PAULO',10),('BRASILIA',60);
 seLECT* FROM  ProductStorage;

INSERT InTO Supplier (SOcialName,CNPJ,cOntact) VaLUES 
('Almeira e filhos',12548973,2145263),
('Eletronicos Silva',54879621145,5478596533),
('Eletronico Valma',25789996300,142278963);

seLECT * FrOM Supplier;

inSERT InTO StorageLocations (iDLproduct,iDLstorage,LOcation )vALUE
(1,2,'RJ'),(2,6,'GO');
 
inSERT InTO  Seller (iDSeller,ABsName,SOcialName,CNPJ,CPF,lOcation,cOntact) VaLUES 
('1','Tech eletronico',nULL,123564879, NuLL, 'Rio de Janeiro',21954879632),
('2','Botique Durgas',nULL,NULL,1245897,'Rio de janeiro', 21965874321),
('3','Kids World',nULL ,568975200,'Sao Paulo',1192598753);
seLECT * FrOM Seller;



inSERT InTO ProductSettele (iDPseller,iDProduct,PRodquantity)vALUE(1,6,80),(2,7,10);
seLECT * FrOM ProductSettele;

