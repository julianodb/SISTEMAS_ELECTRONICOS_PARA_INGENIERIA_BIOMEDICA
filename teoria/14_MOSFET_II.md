# Uso de Transistores como Amplificadores

mosfet como amplificador | Uso del mosfet como amplificador, Análisis de grandes señales, Amplificador dreno común

- Modo Saturado

## Ecuaciones del NMOS - parte 2 

1. $I_G = 0$
1. LKC: $I_S = I_D$
1. relación entre $V_{GS}$ y $I_D$:
   1. (apagado) si $V_{GS} < V_{GS(th)} \implies$ $I_D=0$
   1. (encendido, triodo) si $V_{GS} > V_{GS(th)}$ y $V_{DS} < V_{GS} - V_{GS(th)} \implies$ $V_{DS} = R_{DS(ON)}I_D$
   1. (encendido, saturado) si $V_{GS} > V_{GS(th)}$ y $V_{DS} > V_{GS} - V_{GS(th)} \implies$ $I_D = k(V_{GS}-V_{GS(th)})^2$
   
$V_{GS(th)}$ es el voltaje de umbral en la compuerta y es un valor aproximadamente constante para cada transistor, que depende de su construcción.

$R_{DS(ON)}$ es la resistencia dreno-fuente en estado ON y depende de $V_{GS}$ (cuanto mayor $V_{GS}$, menor $R_{DS(ON)}$), la temperatura y el diseño del MOSFET

k es una constante que también es función de la construcción del dispositivo.

## Análisis de pequeñas señales

Respuesta AC

Parece que $V_{out,AC} = A_V V_{in,AC}$

$I_D = I_{D_Q} + 2k(V_{GS_Q}-V_{GS(th)}) \Delta V + k\Delta V^2$

$  $

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 3, sesión 3.11
- Capítulo 4, sesiones 4.3 y 4.15

### Ejercícios Recomendados
- Capítulo 4
  - Sesíon 4.3: ej 4
  - Sesión 4.4: ejs 9 y 10
  - Sesión 4.15: ejs 44 y 45
