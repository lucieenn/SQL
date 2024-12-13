create database Pokemon;

create table tipo
(
idtipo int primary key auto_increment,
nome varchar(100) not null,
vantagem varchar(100) not null,
desvantagem varchar(100) not null
);
create table pokemon
(
idpokemon int primary key auto_increment,
nome varchar(100) not null,
foto varchar(100) not null,
regiao varchar(100) not null,
idtipo int,
constraint fkpokemontipo foreign key(idtipo) references tipo(idtipo)
);

create table treinador 
(
idtreinador int primary key auto_increment,
nome varchar(100) not null,
genero varchar(100) not null,
dtNascimento date not null,
email varchar(100) not null
);

alter table treinador
drop column dtNascimento;
alter table treinador
add column dtNascimento varchar(100);

create table capturados 
(
idcapturados int primary key auto_increment,
vida int,
ataque1 varchar(100) not null,
ataque2 varchar(100) not null,
ataque3 varchar(100) not null,
ataque4 varchar(100) not null,
idtreinador int,  
constraint fkcapturadostreinador foreign key(idtreinador) references treinador(idtreinador),
idpokemon int,
constraint fkcapturadospokemon foreign key(idpokemon) references pokemon(idpokemon)
);

alter table capturados
drop column ataque1;
alter table capturados 
drop column ataque2;
alter table pokemon
add column ataque1 int;
alter table pokemon
add column ataque2 int;
alter table capturados
drop column ataque3;
alter table capturados 
drop column ataque4;
select * from capturados;

insert into tipo (Nome, Vantagem, Desvantagem)
values
('Eletrico',' Água e Voador', 'Terra'),
('Fogo', 'Grama, Inseto, Aço e Gelo', 'Água, Rocha e Terra'),
('Grama', 'Água, Terra e Rocha', 'Venenoso, Inseto, Voador e Dragão'),
('Água', 'Fogo, Terra e Rocha', 'Eletrico e Grama'),
('Lutador','Normal, Gelo, Pedra, Aço e Sombrio', 'Voador, Psiquico e Água'),
('Fada', 'Dragão, Lutador e Sombrio', 'Venenoso e Aço'),
('Normal', 'Nenhum', 'Rocha e Aço'),
('Venenoso', 'Grama e Fada', 'Psíquico e Terra'),
('Voador', 'Grama, Lutador e Inseto', 'Eletrico, Gelo e Rocha'),
('Terra', 'Fogo, Elétrico, Veneno, Rocha e Aço', 'Água, Gelo e Planta'),
('Gelo', 'Dragão, Grama, Terra e Voador' , 'Fogo, Lutador, Rocha e Metal'),
('Inseto', 'Grama, Psíquico e Sombrio', 'Fogo, Voador e Rocha'),
('Psíquico', 'Lutador e Veneno', 'Sombrio'),
('Dragão', 'Dragão' , 'Dragão, Fada e Gelo'),
('Aço', 'Pedra, Fada, Dragão', 'Fogo, Lutador e Terra'),
('Sombrio', 'Psíquico e Fantasma', 'Fada, Lutador e Inseto'),
('Metalico', 'Fada, Gelo e Rocha', 'Luta, Fogo e Terra'),
('Pedra', 'Fogo, Voador, Inseto e Gelo', 'Agua, Luta, Grama, Terra, Voador, Inseto e Gelo'),
('Fantasma', 'Psiquico e Fantasma', 'Fantasma e Sombrio');


-- regões pokemon:
-- Kanto, Johto, Hoenn, Sinnoh, Unova, Kalos, Alola, Galar, Paldea

insert into pokemon (nome, idtipo, foto, regiao)
values 
('Charizard', '2', '4563', 'kanto'),
('Gyarados', '4', '32443', 'kanto'),
('Talonflame', '2', '1102', 'kalos'),
('Umbreon', '16', '5674', 'kanto'),
('Sylveon', '6', '97854', 'kanto'),
('Pikachu', '1', '4582', 'kanto'),
('Clefable', '6', '52132', 'Kanto'),
 ('Bulbasauro', '3', '2545', 'Kanto' ),
 ('Machamp','5', ',45765','Kanto'),
 ('Onix','10','64657','Kanto'),
 ('Snorlax','7','45698','Kanto'),
  ('Mewtwo','13','53468','Kanto'),
 ('Scizor','12','3357','Kanto'),
  ('Steelix','15','74874','Kanto'),
 ('Croba', '9', '142154', 'Kanto'),
 ('Sableye', '16','85368', 'Kanto'),
  ('Ninetales','2','7156', 'Kanto'),
 ('Sandslash', '10','59764','Kanto'),
 ('Pidgeot','10','24137','Kanto'),
  ('Raichu','1','64538','Kanto' ),
 ('Alakazam ','13','96','Kanto'),
 ('Dragonite','14','48285','Kanto'),
 
 ('Lapras','4','6723', 'Johto'),
 ('Machoke','5','7648','Johto'), 
 ('Lanturn', '4','4736','Johto'), 
  ('Umbreon','16','54698','Johto'),
 ('Blissey','7','31246','Johto'),
 
  ('Gadevoir','13','36536','Hoeen'),
 ('Gadervoir','13','7237','Hoenn'),

('Togekiss', '6', '5877', 'Sinnoh'),
 ('Lucario','5','4654','Sinnoh'),
  ('Gallade', '5','65234','Sinnoh'),
 ('Togekiss', '6','53575','Sinnoh'),
 ('Empoleon','4','5422','Sinnoh'),
('Electivire', '1','45622','Sinnoh'),
 ('Mamoswine','11','54672','Sinnoh'),
 ('Dusknoir','19','5969','Sinnoh'),
 ('Shaymin','3','246653','Sinnoh'),
 
 ('Hydreigon','14','2373','Unova'),
 ('Salamence','14','523','Unova'), 
 ('Zoroark', '16','88754','Unova'),
('Whimsicott', '6', '45245', 'Unova'),

('Xerneas', '6', '25745', 'Kalos'),
('Florges', '6', '4575', 'Kalos'),
 ('Greninja','4','5343','Kalos'),
 ('Flareon','2','9657','Kalos'),
 ('Hawlucha','5','676548','Kalos'),
 ('Tyrantrum','14','768548','Kalos'),
 ('Cinderace','2','2343','kanto'),
 ('Tyranitar','16','6274','Galar'),

 ('Mimikyu', '6', '4575', 'Alola'),
 ('Tapu Koko', '6', '24247', 'Alola'),
 ('Alolan Marowak','1','286479','Alola');
 
 -- update ataque 1
UPDATE pokemon SET ataque1 = 432 WHERE idpokemon = 1;
UPDATE pokemon SET ataque1 = 587 WHERE idpokemon = 2;
UPDATE pokemon SET ataque1 = 245 WHERE idpokemon = 3;
UPDATE pokemon SET ataque1 = 678 WHERE idpokemon = 4;
UPDATE pokemon SET ataque1 = 390 WHERE idpokemon = 5;
UPDATE pokemon SET ataque1 = 814 WHERE idpokemon = 6;
UPDATE pokemon SET ataque1 = 256 WHERE idpokemon = 7;
UPDATE pokemon SET ataque1 = 479 WHERE idpokemon = 8;
UPDATE pokemon SET ataque1 = 631 WHERE idpokemon = 9;
UPDATE pokemon SET ataque1 = 805 WHERE idpokemon = 10;
UPDATE pokemon SET ataque1 = 378 WHERE idpokemon = 11;
UPDATE pokemon SET ataque1 = 492 WHERE idpokemon = 12;
UPDATE pokemon SET ataque1 = 617 WHERE idpokemon = 13;
UPDATE pokemon SET ataque1 = 254 WHERE idpokemon = 14;
UPDATE pokemon SET ataque1 = 812 WHERE idpokemon = 15;
UPDATE pokemon SET ataque1 = 639 WHERE idpokemon = 16;
UPDATE pokemon SET ataque1 = 830 WHERE idpokemon = 17;
UPDATE pokemon SET ataque1 = 145 WHERE idpokemon = 18;
UPDATE pokemon SET ataque1 = 974 WHERE idpokemon = 19;
UPDATE pokemon SET ataque1 = 586 WHERE idpokemon = 20;
UPDATE pokemon SET ataque1 = 713 WHERE idpokemon = 21;
UPDATE pokemon SET ataque1 = 234 WHERE idpokemon = 22;
UPDATE pokemon SET ataque1 = 812 WHERE idpokemon = 23;
UPDATE pokemon SET ataque1 = 654 WHERE idpokemon = 24;
UPDATE pokemon SET ataque1 = 890 WHERE idpokemon = 25;
UPDATE pokemon SET ataque1 = 457 WHERE idpokemon = 26;
UPDATE pokemon SET ataque1 = 328 WHERE idpokemon = 27;
UPDATE pokemon SET ataque1 = 731 WHERE idpokemon = 28;
UPDATE pokemon SET ataque1 = 802 WHERE idpokemon = 29;
UPDATE pokemon SET ataque1 = 193 WHERE idpokemon = 30;
UPDATE pokemon SET ataque1 = 265 WHERE idpokemon = 31;
UPDATE pokemon SET ataque1 = 485 WHERE idpokemon = 32;
UPDATE pokemon SET ataque1 = 619 WHERE idpokemon = 33;
UPDATE pokemon SET ataque1 = 778 WHERE idpokemon = 34;
UPDATE pokemon SET ataque1 = 910 WHERE idpokemon = 35;
UPDATE pokemon SET ataque1 = 532 WHERE idpokemon = 36;
UPDATE pokemon SET ataque1 = 649 WHERE idpokemon = 37;
UPDATE pokemon SET ataque1 = 826 WHERE idpokemon = 38;
UPDATE pokemon SET ataque1 = 217 WHERE idpokemon = 39;
UPDATE pokemon SET ataque1 = 884 WHERE idpokemon = 40;
UPDATE pokemon SET ataque1 = 961 WHERE idpokemon = 41;
UPDATE pokemon SET ataque1 = 392 WHERE idpokemon = 42;
UPDATE pokemon SET ataque1 = 540 WHERE idpokemon = 43;
UPDATE pokemon SET ataque1 = 750 WHERE idpokemon = 44;
UPDATE pokemon SET ataque1 = 839 WHERE idpokemon = 45;
UPDATE pokemon SET ataque1 = 629 WHERE idpokemon = 46;
UPDATE pokemon SET ataque1 = 704 WHERE idpokemon = 47;
UPDATE pokemon SET ataque1 = 189 WHERE idpokemon = 48;
UPDATE pokemon SET ataque1 = 827 WHERE idpokemon = 49;
UPDATE pokemon SET ataque1 = 315 WHERE idpokemon = 50;
UPDATE pokemon SET ataque1 = 568 WHERE idpokemon = 51;
UPDATE pokemon SET ataque1 = 748 WHERE idpokemon = 52;
UPDATE pokemon SET ataque1 = 903 WHERE idpokemon = 53;

 -- update ataque 2
UPDATE pokemon SET ataque2 = 543 WHERE idpokemon = 1;
UPDATE pokemon SET ataque2 = 269 WHERE idpokemon = 2;
UPDATE pokemon SET ataque2 = 812 WHERE idpokemon = 3;
UPDATE pokemon SET ataque2 = 374 WHERE idpokemon = 4;
UPDATE pokemon SET ataque2 = 698 WHERE idpokemon = 5;
UPDATE pokemon SET ataque2 = 907 WHERE idpokemon = 6;
UPDATE pokemon SET ataque2 = 138 WHERE idpokemon = 7;
UPDATE pokemon SET ataque2 = 746 WHERE idpokemon = 8;
UPDATE pokemon SET ataque2 = 523 WHERE idpokemon = 9;
UPDATE pokemon SET ataque2 = 681 WHERE idpokemon = 10;
UPDATE pokemon SET ataque2 = 297 WHERE idpokemon = 11;
UPDATE pokemon SET ataque2 = 453 WHERE idpokemon = 12;
UPDATE pokemon SET ataque2 = 598 WHERE idpokemon = 13;
UPDATE pokemon SET ataque2 = 146 WHERE idpokemon = 14;
UPDATE pokemon SET ataque2 = 820 WHERE idpokemon = 15;
UPDATE pokemon SET ataque2 = 367 WHERE idpokemon = 16;
UPDATE pokemon SET ataque2 = 752 WHERE idpokemon = 17;
UPDATE pokemon SET ataque2 = 213 WHERE idpokemon = 18;
UPDATE pokemon SET ataque2 = 654 WHERE idpokemon = 19;
UPDATE pokemon SET ataque2 = 812 WHERE idpokemon = 20;
UPDATE pokemon SET ataque2 = 486 WHERE idpokemon = 21;
UPDATE pokemon SET ataque2 = 725 WHERE idpokemon = 22;
UPDATE pokemon SET ataque2 = 532 WHERE idpokemon = 23;
UPDATE pokemon SET ataque2 = 391 WHERE idpokemon = 24;
UPDATE pokemon SET ataque2 = 803 WHERE idpokemon = 25;
UPDATE pokemon SET ataque2 = 274 WHERE idpokemon = 26;
UPDATE pokemon SET ataque2 = 653 WHERE idpokemon = 27;
UPDATE pokemon SET ataque2 = 538 WHERE idpokemon = 28;
UPDATE pokemon SET ataque2 = 826 WHERE idpokemon = 29;
UPDATE pokemon SET ataque2 = 193 WHERE idpokemon = 30;
UPDATE pokemon SET ataque2 = 463 WHERE idpokemon = 31;
UPDATE pokemon SET ataque2 = 709 WHERE idpokemon = 32;
UPDATE pokemon SET ataque2 = 355 WHERE idpokemon = 33;
UPDATE pokemon SET ataque2 = 678 WHERE idpokemon = 34;
UPDATE pokemon SET ataque2 = 992 WHERE idpokemon = 35;
UPDATE pokemon SET ataque2 = 412 WHERE idpokemon = 36;
UPDATE pokemon SET ataque2 = 573 WHERE idpokemon = 37;
UPDATE pokemon SET ataque2 = 756 WHERE idpokemon = 38;
UPDATE pokemon SET ataque2 = 251 WHERE idpokemon = 39;
UPDATE pokemon SET ataque2 = 683 WHERE idpokemon = 40;
UPDATE pokemon SET ataque2 = 501 WHERE idpokemon = 41;
UPDATE pokemon SET ataque2 = 324 WHERE idpokemon = 42;
UPDATE pokemon SET ataque2 = 597 WHERE idpokemon = 43;
UPDATE pokemon SET ataque2 = 845 WHERE idpokemon = 44;
UPDATE pokemon SET ataque2 = 679 WHERE idpokemon = 45;
UPDATE pokemon SET ataque2 = 493 WHERE idpokemon = 46;
UPDATE pokemon SET ataque2 = 756 WHERE idpokemon = 47;
UPDATE pokemon SET ataque2 = 238 WHERE idpokemon = 48;
UPDATE pokemon SET ataque2 = 643 WHERE idpokemon = 49;
UPDATE pokemon SET ataque2 = 394 WHERE idpokemon = 50;
UPDATE pokemon SET ataque2 = 701 WHERE idpokemon = 51;
UPDATE pokemon SET ataque2 = 518 WHERE idpokemon = 52;
UPDATE pokemon SET ataque2 = 842 WHERE idpokemon = 53;


-- ataque 1
select 
max(ataque1) as 'Ataque mais forte',
min(ataque1) as 'ataque mais fraco',
avg(ataque1) as 'Média dos ataques',
sum(ataque1) as 'Soma dos ataques'
 from pokemon;
 
 -- ataque2
select 
max(ataque2) as 'Ataque mais forte',
min(ataque2) as 'Ataque mais fraco',
avg(ataque2) as 'Média dos ataques',
sum(ataque2) as 'Soma dos ataques'
from pokemon;

-- todos os ataques vey (média e soma)
select 
avg(ataque1&ataque2) as 'média dos Ataques',
sum(ataque1&ataque2) as 'Soma dos ataques'
from pokemon;

-- ordenando por regiao 
select nome, regiao from pokemon
order by regiao;

-- ordenando pelo tipo
select  pokemon.nome as 'Pokemon', tipo.nome 'Tipo'
from pokemon
inner join tipo on pokemon.Idtipo = tipo.Idtipo
order by tipo.nome;

-- adicionado treinadores
insert into treinador (nome, genero, dtNascimento, email)
values
('Ash kentchum', 'Masculino', '22/07/1990' , 'ash.ketchum@pallettown.com'),
('Misty', 'Feminino', '14/02/1998', 'misty.watertrainer@ceruleancity.com'),
('Brock', 'Masculino', '15/04/1985', 'brock.pokemonbreeder@pewtercity.com'),
('May','Feminino','24/11/1991', 'may.coordinator@hoennregion.com'),
('Dawn', 'Masculino', '27/04/1997','dawn.pokemoncoordinator@sinnohregion.com'),
('Lucien', 'Masculino', '30/04/2007' , 'lucientrainner@sinnohregion.com');

-- adicionando pokemons para os treinadores (tentando)
insert into capturados (vida, idtreinador,idpokemon)
values
('242','1','6'),
 ('543','2', '3'),
 ('635','3','9'),
 ('435','4','7'),
('564','5','51'),
 ('1000','6','53'),
 ('636','1','46'),
 ('543','2', '13'),
 ('635','3','22'),
 ('435','4','17'),
('564','5','28'),
('1000','6','29');

-- exibindo ordem por treinador
select treinador.nome as 'Treinador', pokemon.nome as 'Pokemon'
from capturados
inner join treinador on capturados.Idtreinador = treinador.Idtreinador
inner join pokemon on capturados.IdPokemon = pokemon.IdPokemon 
order by treinador.nome, pokemon.nome;

-- pokemons que o ash capturou
select treinador.nome as 'Treinador', pokemon.nome as 'Pokemon'
from capturados
inner join treinador on capturados.Idtreinador = treinador.Idtreinador
inner join pokemon on capturados.IdPokemon = pokemon.IdPokemon
where capturados.IdTreinador = 1;
 
-- dois pokemons mais fortes ataque1
select ataque1, nome as 'Pokemon'
from pokemon
order by ataque1 
DESC limit 2 ;
 
 -- dois pokemons mais fortes ataque2
select ataque2, nome as 'Pokemon'
from pokemon 
order by ataque2
DESC limit 2;

 -- usando left join
select pokemon.nome as 'Nome', pokemon.ataque1 as 'ataque', tipo.nome as 'Tipo'
from pokemon
left join tipo on (pokemon.Idtipo = tipo.IdTipo);

-- right join
select pokemon.nome as 'Nome', pokemon.regiao as 'regiao', tipo.nome as 'Tipo'
from pokemon
right join tipo on (pokemon.Idtipo = tipo.IdTipo);
 
-- editando
 update pokemon
 set regiao= 'galar'
 where idpokemon=49;
 
 update pokemon
 set nome= 'Mega Gadevoir'
 where idpokemon= 20;
 
 
 select * from pokemon;
-- drop database pokemon;