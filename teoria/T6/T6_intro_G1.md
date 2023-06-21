# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Trabajo 6 de Sistemas Electrónicos - G1

## Introducción

En el contexto del desarrollo de un Fotopletismógrafo, la tarea ha sido dividida en los siguientes bloques:

![TX_bloques](../../img/TX_bloques.png)

Figura 1: División del proyecto de Fotopletismografo en bloques

Considerando lo que se ha diseñado en los trabajos anteriores, el circuito completo se muestra en las figuras a continuación:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T6a.png" width="600">

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T6b.png" width="600">

*circuito aún no diseñado

Valores obtenidos en trabajos anteriores:
- $R_1 = 150\ \Omega$
- $R_2 = 10\ k\Omega$
- $R_3 = \qquad\ k\Omega$
- $R_4 = \qquad\ k\Omega$
- $R_5 = 680\ k\Omega$
- $R_6 = 6.8\ k\Omega$
- $R_C = \qquad\ \Omega$
- $R_B = 1\ k\Omega$
- $D_1$, $D_2$ y $D_3$ son LEDS color NARANJA (BLANCO?)
- $Q_3$ transistor 2N2222 o equivalente
- $RL_1 = RL_2 = RL_3= 150\ \Omega$

Características del transistor $Q_2$:

- $\beta = 10.000$
- $V_{CE_{SAT}} = 0.7 V$
- $V_{BE} = 1 V$

En este trabajo, se agregarán los componentes $C_R$, $R_{bias}$, $C_F$ y $C_G$. Además, se determinarán los valores de $C_1$ y $C_2$. Su tarea es diseñar los filtros 1, 2 y 3, cuyos objetivos son, por un lado, eliminar las señales DC y, por otro, filtrar el ruido de alta frecuencia.