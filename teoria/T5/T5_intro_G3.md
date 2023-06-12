# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Trabajo 5 de Sistemas Electrónicos

## Grupo 3

## Introducción

En el contexto del desarrollo de un Fotopletismógrafo, la tarea ha sido dividida en los siguientes bloques:

![TX_bloques](../../img/TX_bloques.png)

Figura 1: División del proyecto de Fotopletismografo en bloques

Considerando lo que se ha diseñado en los trabajos anteriores, el circuito completo se muestra en las figuras a continuación:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T4a.png" width="800">

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T4b.png" width="800">

*circuitos aún no diseñados

Valores obtenidos en trabajos anteriores:
- $R_1 = 150\ \Omega$
- $R_2 = 10\ k\Omega$
- $R_{3_{calculado}} = 248.5\ k\Omega$
    - $R_{3_{disponible}} = 220\ k\Omega$
- $R_{4_{calculado}} = 62.6\ k\Omega$
    - $R_{4_{disponible}} = 68\ k\Omega$
- $R_C = 1733\ \Omega$ (falta elegir valor disponible más cercano)
- $R_B = 680\ \Omega$
- $D_1$, $D_2$ y $D_3$ son LEDS color VERDE
- $Q_3$ transistor 2N2222 o equivalente
- $RL_1 = RL_2 = RL_3= 140\ \Omega$

<img src="https://julianodb.github.io/electronic_circuits_diagrams/four_parallel_R.png" width="300">

Requerimientos originales de la primera etapa de amplificación:
- $I_{C_Q} = 1.2\ mA$
- $A_V = -80$
- $R_3 // R_4 = R_{th} = 50\ k\Omega$

Características del transistor $Q_2$:

- $\beta = 10.000$
- $V_{CE_{SAT}} = 0.7 V$
- $V_{BE} = 1 V$