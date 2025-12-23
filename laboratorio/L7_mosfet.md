# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 7 de Sistemas Electrónicos
#### Segundo Semestre de 2025

## Recursos del pañol

| tipo | descripcion | cantidad | | tipo | descripcion | valor | cantidad |
| -- | --  | -- | --| -- | -- | -- | -- |
| Instrumentos  |  |  | | Dispositivos |  |  |  |
|  | Multímetro  | 1 | |  | Transistor NMOS | BC170 | 1 |
|  | Fuente CC.  | 1 | |  | Resistencias (Ω) |  |  |
| Implementos |   |  | |  |  | 20 (5W) | 1 |
|  | Cable Banana-Caimán  | 2 | |  |  |1M | 1 |
| Otros |   |  | |  | | Potenciometro 10k (de panel) |1 |
| | Protoboard |  1 | |  |Capacitores |  |  |
| | cables, alicate, etc |  | |  | |$0.1\ \mu$| 1|

## Procedimiento experimental e informe

Nota: Ante cualquier duda en el uso de los instrumentos, o las conexiones eléctricas, consultar al profesor.

Armen el circuito de la Figura 1, con $R_1=20\ \Omega$ y $R_2 = 1\ M \Omega$. Conecten $V_2$ a la fuente CC, configurada para limitar la corriente a 0.5 A.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/resistance_mosfet.png" width="300">

Figura 1: Prueba de $V_{GS}$, $V_{DS}$ e $I_D$ 

1. Ajusten los valores de $V_1$ y $V_2$ de acuerdo con la siguiente table y completen las columnas faltantes. NO midan $I_D$ directamente, sino que utilicen la siguiente fórmula :$I_D = \frac{V_2-V_{DS}}{R_1}$ (2.7pt):

|#| $V_1$ (V) | $V_2$ (V) | $V_{GS}$ (V) | $V_{DS}$ (V) |$I_D$ (mA) |
| -- | --  | -- | -- | -- |-- |
|1| 0 | 3 |  |  | |
|2| 0 | 6 |  |  | |
|3| 0 | 10 |  |  | |
|4| 3 | 3 |  |  | |
|5| 3 | 6 |  |  | |
|6| 3 | 10 |  |  | |
|7| 4 | 3 |  |  | |
|8| 4 | 6 |  |  | |
|9| 4 | 10 |  |  | |

2. Determinen en qué modo está el MOSFET en cada línea de la tabla anterior. Recuerden que los posibles modos de operación del MOSFET son: APAGADO, ENCENDIDO (TRIODO) o ENCENDIDO (SATURADO). Pueden considerar que $V_{GS(th)} = 2.1\ V$. (1pt)

3. Determinen el valor de $R_{DS(ON)}$ promedio utilizando solamente los casos en qué el mosfet está en modo encendido (triodo). (0.5pt)

3. Determinen el valor de $g_{ _{FS}}$ promedio utilizando solamente los casos en qué el mosfet está en modo encendido (saturado). (0.5pt)

Cambien el circuito para la configuración de la Figura 2, utilizando $C_1=0.1\ \mu F$. Conecten el generador de funciones a $v_i$ y midal la señal $v_o$ con el osciloscopio.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/mosfet_amplifier.png" width="200">

Figura 2: Prueba AC

5. Enciendan el generador de funciones y configurenlo para generar una señal sinusoidal con frecuencia 10 kHz, sin offset, con amplitud 100 mV. Midan la amplitud de la señal en $v_o$ y calculen el factor de amplificación $A_V=\frac{amplitud(v_o)}{amplitud(v_i)}$. Cómo se compara con el valor teórico ($A_V = -g_{ _{FS}} R_1$) ? (1.3pt)
