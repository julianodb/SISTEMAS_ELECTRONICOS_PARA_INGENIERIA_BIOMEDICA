# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Trabajo 7 de Sistemas Electrónicos

## Introducción

¡ Felicitaciones ! El diseño realizado en los trabajos 1 a 6 permite fabricar un fotopletismógrafo funcional. Si se conecta la salida del amplificador 2 directamente al driver de los LEDs, se podrá observar como las luces se encienden de acuerdo al ritmo cardíaco.

Sin embargo, aún falta diseñar 2 bloques que se pueden ver en la división de las tareas del proyecto: "monoestable" y "fuente".

![TX_bloques](../img/TX_bloques.png)

Figura 1: División del proyecto de Fotopletismografo en bloques

En este trabajo, el objetivo es diseñar el bloque llamado "monoestable", que representa un circuito multivibrador monoestable.

La motivación para introducir dicho bloque es que la duración de los pulsos de luz no es uniforme. Dependiendo de la forma de la señal del sensor, el tiempo encendido de los LEDs podría ser de 300 ms, 500 ms, 700 ms etc. Es deseable uniformizarlo, de tal forma que siempre que se detecte un pulso cardíaco, los LEDs se enciendan por 200 ms y luego se apaguen. Eso facilitará el conteo de los pulsos por un humano para deducir la frecuencia cardiaca.

El circuito completo, considerando la adición del monoestable, se muestra en las figuras a continuación:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T7a.png" width="800">

<img src="https://julianodb.github.io/electronic_circuits_diagrams/T7b.png" width="800">

Valores obtenidos en trabajos anteriores:
- $R_1 = 150\ \Omega$
- $R_2 = 10\ k\Omega$
- $R_3 = \qquad\ k\Omega$
- $R_4 = \qquad\ k\Omega$
- $R_5 = 680\ k\Omega$
- $R_6 = \qquad\ k\Omega$
- $R_C = \qquad\ \Omega$
- $R_B = \qquad \Omega$
- $D_1$, $D_2$ y $D_3$ son LEDS color _________
- $Q_3$ transistor 2N2222 o equivalente
- $RL_1 = RL_2 = RL_3= \qquad \Omega$

Características del transistor $Q_2$:

- $\beta = 10.000$
- $V_{CE_{SAT}} = 0.7 V$
- $V_{BE} = 1 V$
