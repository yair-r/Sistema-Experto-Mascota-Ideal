:-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-pce_image_directory('./img').

resource(img_portada,image,image('portada.jpg')).
resource(img_menup,image,image('menup.jpg')).

%imagenes resultados
resource(img_mascota1,image,image('mascota1.jpg')).
resource(img_mascota2,image,image('mascota2.jpg')).
resource(img_mascota3,image,image('mascota3.jpg')).
resource(img_mascota4,image,image('mascota4.jpg')).
resource(img_mascota5,image,image('mascota5.jpg')).
resource(img_mascota6,image,image('mascota6.jpg')).
resource(img_mascota7,image,image('mascota7.jpg')).
resource(img_mascota8,image,image('mascota8.jpg')).
resource(img_mascota9,image,image('mascota9.jpg')).
resource(img_mascota10,image,image('mascota10.jpg')).
resource(img_mascota11,image,image('mascota11.jpg')).
resource(img_mascota12,image,image('mascota12.jpg')).
resource(img_mascota13,image,image('mascota13.jpg')).
resource(img_mascota14,image,image('mascota14.jpg')).
resource(img_mascota15,image,image('mascota15.jpg')).
resource(img_mascota16,image,image('mascota16.jpg')).
resource(img_mascota17,image,image('mascota17.jpg')).
resource(img_mascota18,image,image('mascota18.jpg')).
resource(img_mascota19,image,image('mascota19.jpg')).
resource(img_mascota20,image,image('mascota20.jpg')).
resource(img_mascota21,image,image('mascota21.jpg')).
resource(img_mascota22,image,image('mascota22.jpg')).
resource(img_mascota23,image,image('mascota23.jpg')).
resource(img_mascota24,image,image('mascota24.jpg')).
resource(img_mascota25,image,image('mascota25.jpg')).
resource(img_mascota26,image,image('mascota26.jpg')).
resource(img_mascota27,image,image('mascota27.jpg')).
resource(img_mascota28,image,image('mascota28.jpg')).
resource(img_mascota29,image,image('mascota29.jpg')).
resource(img_mascota30,image,image('mascota30.jpg')).
resource(img_mascota31,image,image('mascota31.jpg')).
resource(img_mascota32,image,image('mascota32.jpg')).
resource(img_mascota33,image,image('mascota33.jpg')).
resource(img_mascota34,image,image('mascota34.jpg')).
resource(img_mascota35,image,image('mascota35.jpg')).
resource(img_mascota36,image,image('mascota36.jpg')).
resource(img_mascota37,image,image('mascota37.jpg')).
resource(img_mascota38,image,image('mascota38.jpg')).
resource(img_mascota39,image,image('mascota39.jpg')).
resource(img_mascota40,image,image('mascota40.jpg')).
resource(img_mascota41,image,image('mascota41.jpg')).
resource(img_mascota42,image,image('mascota42.jpg')).

%imagenes mascota no encontrada
resource(img_nofoun,image,image('noencontrado.jpg')).

abrir_conexion:-
   odbc_connect('conexionprolog',_,
   [user(root),
   password(''),
   alias(prolog) ,
   open(once)]).


cerrar_conexion:-
odbc_disconnect('prolog').



start:-
  new(Menu, dialog('Tu Mascota ideal', size(634,360))),
  new(@texto,label(nombre,'')),
  new(@respl,label(nombre,'')),
  new(Salir,button('SALIR',and(message(Menu, destroy),message(Menu,free)))),
  new(@boton,button('RESPONDER TEST',message(@prolog,botones))),
  nueva_imagen(Menu,img_portada),
  new(@btncarrera,button('Diagnostico?')),
  send(Menu,display,@boton,point(300,280)),
  send(Menu,display,Salir,point(400,280)),
  send(Menu,display,@respl,point(250,130)),
  send(Menu,open_centered).

nueva_imagen(Ventana, Imagen) :-new(Figura, figure),
new(Bitmap, bitmap(resource(Imagen),@on)),
send(Bitmap, name, 1),
send(Figura, display, Bitmap),
send(Figura, status, 1),
send(Ventana, display,Figura,point(0,0)).

%asignacion de las mascotas y las imagenes
mascota(mascota1):-mascota1,!,perroimg1.
mascota(mascota2):-mascota2,!,perroimg2.
mascota(mascota3):-mascota3,!,perroimg3.
mascota(mascota4):-mascota4,!,perroimg4.
mascota(mascota5):-mascota5,!,perroimg5.
mascota(mascota6):-mascota6,!,perroimg6.
mascota(mascota7):-mascota7,!,perroimg7.
mascota(mascota8):-mascota8,!,perroimg8.
mascota(mascota9):-mascota9,!,perroimg9.
mascota(mascota10):-mascota10,!,perroimg10.
mascota(mascota11):-mascota11,!,perroimg11.
mascota(mascota12):-mascota12,!,perroimg12.
mascota(mascota13):-mascota13,!,perroimg13.
mascota(mascota14):-mascota14,!,perroimg14.
mascota(mascota15):-mascota15,!,perroimg15.
mascota(mascota16):-mascota16,!,perroimg16.
mascota(mascota17):-mascota17,!,perroimg17.
mascota(mascota18):-mascota18,!,perroimg18.
mascota(mascota19):-mascota19,!,perroimg19.
mascota(mascota20):-mascota20,!,perroimg20.
mascota(mascota21):-mascota21,!,perroimg21.
mascota(mascota22):-mascota22,!,perroimg22.
mascota(mascota23):-mascota23,!,perroimg23.
mascota(mascota24):-mascota24,!,perroimg24.
mascota(mascota25):-mascota25,!,perroimg25.
mascota(mascota26):-mascota26,!,perroimg26.
mascota(mascota27):-mascota27,!,perroimg27.

mascota(mascota28):-mascota28,!,gatoimg28.
mascota(mascota29):-mascota29,!,gatoimg29.
mascota(mascota30):-mascota30,!,gatoimg30.
mascota(mascota31):-mascota31,!,gatoimg31.
mascota(mascota32):-mascota32,!,gatoimg32.
mascota(mascota33):-mascota33,!,gatoimg33.
mascota(mascota34):-mascota34,!,gatoimg34.
mascota(mascota35):-mascota35,!,gatoimg35.
mascota(mascota36):-mascota36,!,gatoimg36.
mascota(mascota37):-mascota37,!,gatoimg37.
mascota(mascota38):-mascota38,!,gatoimg38.

mascota(mascota37):-mascota39,!,roedorimg39.
mascota(mascota38):-mascota40,!,roedorimg40.
mascota(mascota39):-mascota41,!,roedorimg41.
mascota(mascota40):-mascota42,!,roedorimg42.
mascota(mascota41):-mascota43,!,roedorimg43.
mascota(mascota42):-mascota44,!,roedorimg44.

mascota(nofoun):-nofoun,!.

ingresar_registro1(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("rodwailer")',
affected(F)).

perroimg1:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota1),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
(abrir_conexion, ingresar_registro1(_F),cerrar_conexion),
send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).

perroimg2:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota2),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
(abrir_conexion, ingresar_registro2(_F),cerrar_conexion),
send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg3:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota3),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro3(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg4:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota4),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
(abrir_conexion, ingresar_registro4(_F),cerrar_conexion),

   send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg5:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota5),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
(abrir_conexion, ingresar_registro5(_F),cerrar_conexion),

   send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg6:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota6),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
(abrir_conexion, ingresar_registro6(_F),cerrar_conexion),

   send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg7:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota7),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro7(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg8:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota8),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
  (abrir_conexion, ingresar_registro8(_F),cerrar_conexion),
send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg9:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota9),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro9(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg10:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota10),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro10(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg11:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota11),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro11(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg12:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota12),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro12(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg13:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota13),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro13(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg14:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota14),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro14(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg15:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota15),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro15(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg16:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota16),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro16(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg17:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota17),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro17(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg18:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota18),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro18(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg19:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota19),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro19(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg20:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota20),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro20(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg21:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota21),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro21(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg22:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota22),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro22(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg23:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota23),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro23(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg24:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota24),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro24(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg25:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota25),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro25(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg26:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota26),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro26(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
perroimg27:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota27),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro27(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg28:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota28),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro28(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg29:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota29),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro29(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg30:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota30),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro30(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg31:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota31),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro31(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg32:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota32),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro32(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg33:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota33),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro33(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg34:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota34),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro34(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg35:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota35),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro35(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg36:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota36),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro36(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg37:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota37),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro37(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
gatoimg38:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota38),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro38(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg39:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota39),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro39(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg40:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota40),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro40(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg41:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota41),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg42:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota42),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro42(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg43:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota43),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro43(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).
roedorimg44:-
new(RES,dialog('Tu Mascota ideal es: ',size(500,500))),
nueva_imagen(RES,img_mascota44),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
   (abrir_conexion, ingresar_registro44(_F),cerrar_conexion),

send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).

nofoun:-
new(RES,dialog('Espera un momento no encontramos nada, vuelve a intentar',size(500,500))),
nueva_imagen(RES,img_nofoun),
send(RES,append, new(@btnr,button('Finalizar', and(message(RES,destroy))))),
send(RES,open_centered),
send(@btnr,open),
get(RES,confirm,Answer),
write(Answer).

%Rottweiler
mascota1:-perros,amplio,grandes,mactividad.
%Alaska
mascota2:-perros,amplio,grandes,mactividad.
ingresar_registro2(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Alaska")',
affected(F)).
%mastin
mascota3:-perros,amplio,grandes,mactividad.
ingresar_registro3(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Mastin")',
affected(F)).
%Gran danes
mascota4:-perros,amplio,grandes,mactividad.
ingresar_registro4(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Gran danes")',
affected(F)).
%Schanuzer
mascota5:-perros,amplio,grandes,mactividad,pelo.
ingresar_registro5(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Schanauzer")',
affected(F)).
%Chow
mascota6:-perros,amplio,grandes,mactividad,pelo.
ingresar_registro6(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("chow chow")',
affected(F)).
%San bernando
mascota7:-perros,amplio,grandes,pactividad.
ingresar_registro7(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("San bernando")',
affected(F)).

%mastin es
mascota8:-perros,amplio,grandes,mactividad.
ingresar_registro8(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Gran danes")',
affected(F)).

%dalmata
mascota9:-perros,amplio,mediana,mactividad.
ingresar_registro9(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Dalmata")',
affected(F)).

%husky
mascota10:-perros,amplio,mediana,mactividad.
ingresar_registro10(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Husky")',
affected(F)).

%samoyendo
mascota11:-perros,amplio,mediana,mactividad.
ingresar_registro11(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Samoyendo")',
affected(F)).

%pastor australiano
mascota12:-perros,amplio,mediana,mactividad.
ingresar_registro12(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Pastor australiano")',
affected(F)).

%airedale
mascota13:-perros,amplio,mediana,mactividad.
%terrier
mascota14:-perros,amplio,mediana,mactividad,pelo.
%perro de agua
mascota15:-perros,amplio,mediana,mactividad,pelo.
%bulldog
mascota16:-perros,amplio,mediana,pactividad.
ingresar_registro16(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("bulldog")',
affected(F)).

%beagle
mascota17:-perros,amplio,mediana,pactividad.
%xolo
mascota18:-perros,amplio,mediana,pactividad,pelo.
ingresar_registro18(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Xolo")',
affected(F)).

%shiba
mascota19:-perros,poco,pequena,mactividad.
ingresar_registro19(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Shiba")',
affected(F)).

%bichon
mascota20:-perros,poco,pequena,mactividad.
%lakeland
mascota21:-perros,poco,pequena,mactividad,pelo.
ingresar_registro21(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("lakeland")',
affected(F)).

%schnauzer
mascota22:-perros,poco,pequena,mactividad,pelo.
%chiguagua
mascota23:-perros,poco,pequena,pactividad.
ingresar_registro23(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("chiguagua")',
affected(F)).

%teckel
mascota24:-perros,poco,pequena,pactividad.
%pug
mascota25:-perros,poco,pequena,pactividad.
%caniche
mascota26:-perros,poco,pequena,pactividad,pelo.
ingresar_registro26(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("caniche")',
affected(F)).

%shih
mascota27:-perros,poco,pequena,pactividad,pelo.
%Gatos
%Ragdoll
mascota28:-gatos,pactividad,sociable.
ingresar_registro28(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Ragdoll")',
affected(F)).
%Siames
mascota29:-gatos,pactividad,sociable.
%azul ruso
mascota30:-gatos,pactividad,independiente.
ingresar_registro30(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("azul ruso")',
affected(F)).

%chinchilla
mascota31:-gatos,pactividad,independiente.
%persa
mascota32:-gatos,pactividad,independiente.
%devon
mascota33:-gatos,mactividad,sociable,pelo.
ingresar_registro33(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("devon")',
affected(F)).
%bengali
mascota34:-gatos,mactividad,sociable.
ingresar_registro34(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("bengali")',
affected(F)).
%van turco
mascota35:-gatos,mactividad,sociable.
%Sphynx
mascota36:-gatos,mactividad,independiente,pelo.
ingresar_registro36(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Sphynx")',
affected(F)).

%americano
mascota37:-gatos,mactividad,independiente.
ingresar_registro37(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("americano")',
affected(F)).

%savannah
mascota38:-gatos,mactividad,independiente.

%Roedores
%ratacalva
mascota39:-roedores,pequena,independiente,pelo.
ingresar_registro39(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("rata blanca")',
affected(F)).

%Hamster
mascota40:-roedores,pequena,independiente.
ingresar_registro40(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("hamster")',
affected(F)).

%Raton
mascota41:-roedores,pequena,sociable.
ingresar_registro41(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Raton")',
affected(F)).

%Hurones
mascota42:-roedores,pequena,independiente.
ingresar_registro42(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Hurones")',
affected(F)).

%Conejo
mascota43:-roedores,pequena,independiente.
%chinchilla
mascota44:-roedores,pequena,sociable.
ingresar_registro44(F):-
   odbc_query('prolog',
  'INSERT INTO resultados(name)VALUES ("Chinchilla")',
affected(F)).


%preguntaAnimalpreferencia
perros:-pregunta('?Prefieres que tu compa?ero sea perro?').
gatos:-pregunta('?Prefieres a los gatos?').
roedores:-pregunta('?Prefieres un roedor?').

%poco y amplio
poco:-pregunta('?Cuentas con poco espacio?').
amplio:-pregunta('?Cuantas con mucho espacio en tu casa?').


%razas grandes mediana pequena
grandes:-pregunta('?te gustan los perros grandes?').
mediana:-pregunta('?te gustan los perros medianos?').
pequena:-pregunta('?te gustan los animales peque?os?').

%mactividad pactividad
mactividad:-pregunta('?Te gusta salir a correr?').
pactividad:-pregunta('?Salir?, mejor me quedo en casa').

%Pelo
pelo:-pregunta('?Usualmente tienes reacciones alergicas?').

%sociable independiente
sociable:-pregunta('?Podrias comprar/adoptar mas de uno?').
independiente:-pregunta('?Con uno mascota tengo?').

:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Test')),
     new(L2,label(texto,'pronto sabras quien sera tu compa?ero, solo contesta estas preguntas...')),
     new(La,label(prob,Problema)),

     new(B1,button(si,and(message(Di,return,si)))),
     new(B2,button(no,and(message(Di,return,no)))),

     nueva_imagen(Di,img_menup),
         send(Di,append(L2)),
   send(Di,append(La)),
   send(Di,append(B1)),
   send(Di,append(B2)),

   send(Di,default_button,si),
   send(Di,open_centered),get(Di,confirm,Answer),
   write(Answer),send(Di,destroy),
   ((Answer==si)->assert(si(Problema));
   assert(no(Problema)),fail).

pregunta(S):-(si(S)->true; (no(S)->false; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.

botones :- lim,
  send(@boton,free),
  send(@btncarrera,free),
  mascota(Recomienda),
  send(@texto,selection('')),
  send(@respl,selection(Recomienda)),
  new(@boton,button('wiu wiu wiu',message(@prolog,botones))),
  send(Menu,display,@boton,point(80,50)),
  send(Menu,display,@btncarrera,point(60,50)),
limpiar.
lim :- send(@respl, selection('')).



