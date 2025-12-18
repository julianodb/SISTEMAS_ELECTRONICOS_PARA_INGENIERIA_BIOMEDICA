# Uso de Transistores como Interruptores 

## Motivación

## Transistores a grandes rasgos

- Tres terminales
- Un terminal controla la corriente que fluye entre los otros dos terminales
- Se utilizan como "llaves on/off" o como amplificadores de señales

1. Transistores
   1. Bipolares (BJT)
      1. PNP
      1. NPN
   1. de Efecto de Campo (FET)
      1. de Unión (JFET)
         1. de canal n
         1. de canal p
      1. Semiconductor de óxido metálico (MOSFET)
         1. tipo empobrecimento
            1. de canal n
            1. de canal p
         1. tipo enriquecimiento (E-MOSFET)
            1. de canal n (NMOS)
            1. de canal p (PMOS)

## NMOS: Símbolo, nomenclatura y convenciones

![nmosfet](https://julianodb.github.io/electronic_circuits_diagrams/nmosfet.png)

## Ecuaciones del NMOS - parte 1

1. $I_G = 0$
1. LKC: $I_S = I_D$
1. relación entre $V_{GS}$ y $I_D$:
   1. (apagado) si $V_{GS} < V_{GS(th)} \implies$ $I_D=0$
   1. (encendido, triodo) si $V_{GS} > V_{GS(th)} \implies$ $V_{DS} = R_{DS(ON)}I_D$

$V_{GS(th)}$ es el voltaje de umbral en la compuerta y es un valor aproximadamente constante para cada transistor, que depende de su construcción.

$R_{DS(ON)}$ es la resistencia dreno-fuente en estado ON y depende de $V_{GS}$ (cuanto mayor $V_{GS}$, menor $R_{DS(ON)}$), la temperatura y el diseño del MOSFET

Ejemplos: [2n7002](https://www.st.com/resource/en/datasheet/cd00005134.pdf), [BSS806N](https://www.infineon.com/assets/row/public/documents/24/49/infineon-bss806n-ds-en.pdf?fileId=db3a304330f686060131185f0553451c)

## Interruptor con NMOS

NMOS, LED

## Dinamica del interruptor con NMOS

Ciss, Coss, Crss
tdon, tr, ton
tdoff, tf, toff

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 6, sesiones 6.1, 6.8 y 6.9
- Capítulo 7, sesiones 7.8 y 7.11 (ejemplo 7.16)

### Ejercícios Recomendados
- Capítulo 6
  - Sesión 6.8: ejs 34, 36 y 40
- Capítulo 7
  - Sesíon 7.8: ejs 20 y 21
  