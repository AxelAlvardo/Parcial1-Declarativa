%Personajes
personaje(spider_man).
personaje(peter_parker).

personaje(mary_jane).

personaje(tio_ben).

personaje(harry_osborn).
personaje(norman_osborn).
personaje(duende_verde).

personaje(venom).
personaje(eddie_brock).

personaje(flint_mark).
personaje(sandman).

%Vive en
vive_en(spider_man,nueva_york).
vive_en(peter_parker,nueva_york).

vive_en(mary_jane,nueva_york).

vive_en(tio_ben,nueva_york).

vive_en(harry_osborn,nueva_york).
vive_en(norman_osborn,nueva_york).
vive_en(duende_verde,nueva_york).

vive_en(venom,nueva_york).
vive_en(eddie_brock,nueva_york).

vive_en(flint_mark, nueva_york).
vive_en(sandman, nueva_york).

% Se Transforma 
transforma_en(peter_parker,spider_man).
transforma_en(flint_mark,sandman).
transforma_en(norman_osborn,duende_verde).
transforma_en(harry_osborn,duende_verde).
transforma_en(peter_parker,venom).
transforma_en(eddie_brock,venom).

% Desea 
desea(peter_parker,vivir_tranquilo).
desea(mary_jane,ser_actriz).
desea(harry_osborn,venganza).
desea(harry_osborn,derrotar_spiderman).
desea(venom,huesped).
desea(venom,derrotar_spiderman).
desea(sandman,derrotar_spiderman).
desea(peter_parker,recomponer_relacion).
desea(mary_jane,recomponer_relacion).
desea(spider_man,derrotar_sandman).
desea(spider_man,derrotar_venom).
desea(harry_osborn,ayudar_peter).

% Amigo
amigo(peter_parker, harry_osborn).
amigo(peter_parker, mary_jane).

% Rescata a 
rescate(spider_man,mary_jane).

% Valiente 
valiente(spider_man).
valiente(harry_osborn).

% Feroz 
feroz(venom).

% TODO CONSULTAS
% quien vive en nueva yol
% vive_en(X,nueva_york).

% % quien desa venganza de peter 
desea_venganza_de_peter(X) :- desea(X, derrotar_spiderman), desea(X,venganza). % TODO regla
% ?- desea_venganza_de_peter(X).

% quien rescata a mary_jane
% ?- rescate(X,mary_jane).
% ?- X = spider_man

% quien es valiente
% ?- valiente(X).

% quien es feroz
% ?- feroz(X).

% quien se transforma 
transforma(X) :- transforma_en(X,Y).
% ?- transforma(X).

% quienes son enemigos indirectos
enemigo_indirecto(X) :- desea(X,Y), Y \= ayudar_peter, Y = derrotar_spiderman, X \= harry_osborn.

% quienes son heroes 
heroe(X) :- valiente(X), rescate(X,Y).