# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Lab 6 de Sist. Electrónicos - Recuperativo

## Preguntas Finales Laboratorio 5

<img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_non_inverting_potentiometer.png" width="300">

Figura 1: Circuito amplificador utilizando amplificador operacional. 
- Parámetros:
    - $V_{CC} = 12\ V$
    - $R_1 = 6.8\ k\Omega$
    - $R_2 = 680\ k\Omega$
    - $R_3 = 470\ k\Omega$
    - $C = 0.1\ \mu F$
    - $R_{pot} = 10\ k\Omega$
    - $v_{AC}$: Generador de funciones
    - OA1: Amplificador Operacional TL741 o similar

1. ¿Por qué no se observó la relación esperada entre $v_o$ y $v_i$ cuando se hicieron las mediciones del circuito de la figura 1 en el Laboratorio 5? Ayuda: Después del laboratorio se reemplazó el Amplificador Operacional TL741 por uno LM321 y el circuito funcionó como esperado. Investiguen las hojas de datos e información disponible sobre ambos componentes para encontrar la respuesta. Conceptos claves podrían ser "common mode input range" e "input voltage range". (3pt)

3. Considerando que el problema identificado anteriormente haya sido corregido, indiquen los valores esperados de $v_o$ para cada valor de $v_i$ a continuación: (3pt)

    | $v_i$  (mV) |$v_o$ (mV) |
    | -- | -- |
    | 0 | |
    | 10 | | 
    | 50 | | 
    | 100 | | 
    | 200 | | 

## Recursos utilizados

| tipo | descripcion | cantidad | | tipo | descripcion | valor | cantidad |
| -- | -- | -- | --| -- | -- | -- | -- |
| Instrumentos |  |  | | Dispositivos |  |  |  |
|  | Osciloscopio | 1 | |  | Resistencias (Ω) |  |  |
|  | Generador de señales | 1 | |  |  | 100 k  | 2 |
|  | Fuente CC. | 1 | |  | Condensadores |  |  |
| Implementos |  |  | |  |  | $47 \mu F$ | 1 |
|  | Cable Banana-Caimán | 2 | |  |  |  |  |
|  | Sonda | 2 | |  |  |  |  |
|  | BNC-Caimán | 1 | |  |  |  |  |
| Otros |  |  | |  | |  |  |
| | Protoboard | 1 | |  | | | |
| | cables, alicate, etc | | |  | | |  |
| | Circuito del filtro 3 | 1 | |  | | |  |
| | Circuito del sensor CNY70 | 1 | |  | | |  |

## Resultado experimental e informe

1. Se armó el circuito de la figura 2. Este circuito es una forma rudimentaria de obtener un voltaje fijo a través de un divisor resistivo, y se va a utilizar para producir uno de los voltajes requeridos más adelante. Se utilizó $R_X= 100\ k\Omega$ y $C_{bias}=47\ \mu F$.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/half_voltage_divider.png" width="200">

    Figura 2: Divisor de voltage

    1. Calcule la función de transferencia entre $V_{CC}$ y $V_{bias}$ ($H(s) = \frac{V_{bias}(s)}{V_{CC}(s)}$) (0.5 pt)
    2. Encuentre una fórmula para $V_{bias}$ cuando $V_{CC}$ es una entrada escalón de 5 V. ¿Cuál es el valor en estado estacionário? ¿Cuánto tiempo $V_{bias}$ demora en alcanzar 90% del valor en estado estacionário ? (0.5 pt)
    3. Se encendió la fuente CC ($V_{CC} = 5\ V$), se midió el valor de $V_{bias}$ después de un largo período de tiempo, y también cuanto tiempo se demoró en llegar a dicho valor. Los resultados se muestran en la tabla a continuación. ¿Como se comparan los resultados teóricos anteriores con las mediciones realizadas en laboratorio? 

        | Grupo | $V_{bias}$ después de un largo período de tiempo (V) | tiempo para alcanzar valor final (s) |
        | -- | -- | -- |
        | A | 2,34 | 8 |
        | B | 2,6 | 8,25 |
        | C | 2,44 | 5 |
        | D | 2,4 | 13 |

1. Se identificó la placa de circuito impreso que implementa el circuito de la figura 3.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/opamp_bandpass.png" width="270">

    Figura 3: Filtro activo con amplificador operacional

    1. Se conectó la fuente CC (5 V) y el voltage $V_{bias}$ (2.5 V). Se enciendó la fuente CC y se anotó el valor de voltaje medido en la salida del circuito en estado estacionario. los resultados se muestran a continuación

        * Grupo A: 2,36 V
        * Grupo B: 2,6 V
        * Grupo C: 2,42 V
        * Grupo D: 2,92 V

        1. En corriente contínua, ¿cual debiese ser el valor de $v_{o2}$ ? ¿Como se compara con las mediciones realizadas en laboratorio ? (0.5 pt)

    2. Se ajustó el generador de funciones para generar una señal sinusoidal con 20 mV peak-to-peak sin offset. Se conectó el generador de funciones a la entrada ($v_{i2}$). Con el osciloscopio, se midió la salida ($v_{o2}$). Se ajustó la frecuencia del generador de funciones a los valores indicados y se midió el valor peak-to-peak de la salida. Los resultados se muestran en la tabla a continuación. (2.6 pt)

        | frecuencia (Hz) | $v_{o2}$ peak-to-peak grupo A (mV) | $v_{o2}$ peak-to-peak grupo B (mV) |
        | -- | -- | -- |
        | < 0.1 Hz | 280 |  |
        | 0.1 Hz | 360 | 160 |
        | 0.2 Hz | 880 | 480 |
        | 0.5 Hz | 1200 | 1280 |
        | 1 Hz | 1800 | 1760 |
        | 2 Hz | 2000 |  |
        | 5 Hz | 2040 |  |
        | 10 Hz | 2000 | 1920 |
        | 20 Hz | 1760 | 1680 |
        | 50 Hz | 1040 | 1120 |
        | 100 Hz | 600 | 720 |
        | 200 Hz | 320 | 400 |
        | 500 Hz | 168 | 240 |
        | 1 kHz  | 120 |  |

        1. Considerando que $R_6/R_5 = 100$, cual sería la ganancia del circuito en una frecuencia donde $C_2$ y $C_G$ se pueden considerar corto-circuitos y $C_F$ un circuito abierto ? (0.5 pt)

        3. ¿Cual es la ganancia máxima medida en laboratorio ? (0.5 pt)

        4. ¿ Qué tipo de filtro está implementado ? (0.4 pt)

        5. Basándose en las mediciones, ¿en qué rango está(n) la(s) frecuencia(s) de corte ? (0.5 pt)

3. Se desconectó el generador de funciones y se reemplazó por el voltage $V_o$ del circuito de la figura 4, donde $R_1=150\ \Omega$ y $R_2 = 10\ k\Omega$

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/cny70_circuit.png" width="300">

    Figura 4: Sensor del fotopletismógrafo

    1. Uno de los integrantes del grupo puso un dedo sobre el sensor CNY70. Se esperaron diversos segundos para que los circuitos se estabilizaran. La figura a continuación muestra un bosquejo de la forma de onda medida en la entrada y en la salida del filtro. Laamplitud de la forma de onda de entrada era de aproximadamente 20 mV, y la amplitud de la forma de onda en la salida era de aproximadamente 2 V. La frecuencia medida fue de aproximadamente 2 Hz. Como estaba el integrante del grupo que puso el dedo sobre el sensor: ¿calmo o agitado? (0.5 pt)