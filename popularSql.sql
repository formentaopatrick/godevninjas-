create table produtos (
    id int primary key,
    sku int not null unique, 
    name varchar(60) not null unique, 
    price float not null >0,
    created_at not null datetime,
    updated_at not null datetime
);

insert into produtos ( id , sku , name , price , created_at , updated_at )
    values ( 1, 8552515751438644,'Casaco Jaqueta Outletdri Inverno Jacquard',109.90,'2018-08-27T02:11:43Z','2018-08-27T02:11:43Z'), 
           ( 2, 8552515751438645, 'Camiseta Colcci Estampada Azul', 79.90, '2018-08-27T02:11:43Z' , '2018-08-27T02:30:20Z');
           

create table clientes (
    id int primary key,
    name varchar(60),
    CPF int not null unique,
    email varchar(50),
    created_at not null datetime ,
    updated_at not null datetime 
);

insert into clientes ( id ,  name , cpf , email , created_at , updated_at )
    values ( 1 , 'Maria Aparecida de Souza' , 81258705044 , 'mariasouza@email.com' , '2018-08-27T02:11:43Z' , '2018-08-27T02:30:20Z' ), 
           ( 2 , 'Lurdes da Silva' , 46793282077 , 'lurdesdasilva@email.com' , '2018-08-27T02:11:43Z' , '2018-08-27T02:30:20Z');

 create table pedidos (
     id int primary key, 
     price_total float not null , 
     produtos_id_fk int not null , 
     clientes_id_fk int not null , 
     created_at not null datetime ,
     foreign key (produtos_id_fk) references produtos(id),
     foreign key (clientes_id_fk) references clientes(id)
     );         

insert into pedidos ( id , price_total , produtos_id_fk , clientes_id_fk , created_at )
    values ( 10 , 109.90 , 1 , 1 , '2018-08-27T02:11:55Z'),
           ( 20 , 79.90 , 2 , 2 , '2018-08-27T02:12:00Z'),
           ( 30 , 79.90 , 2 , 1 , '2018-08-27T02:12:10Z'),
           (40 , 109.90 , 1 , 2 , '2018-08-27T02:12:30Z');