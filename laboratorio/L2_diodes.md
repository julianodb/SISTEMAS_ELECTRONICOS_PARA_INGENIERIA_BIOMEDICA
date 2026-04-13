# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 2 de Sistemas Electrónicos
#### Segundo Semestre de 2025

## Instrumentos Utilizados

- 1 x Fuente C.C.
  - 2 x Cable Banana-Caimán
- 1 x Multímetro

## Procedimiento experimental e informe

Nota: Ante cualquier duda en el uso de los instrumentos, o las conexiones eléctricas, consultar al profesor.

Consulten al profesor o al auydante sobre el funcionamiento de la fuente C.C. Configurenla para una corriente maxima de 0.4 A. Dejen el voltaje ajustado a un valor bajo incialmente.

- Obtengan 1 diodo (1N4148 o similar) y una resistencia de 1 MΩ de los materiales del laboratorio

1. Armen el circuito de la Figura 1 sin encender la fuente C.C. todavía.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/reverse_diode_resistance_2.png" width="200">

    Figura 1: Circuito para medir la corriente inversa

    1. Midan y anoten el valor real de la resistencia R. (0.2 pt)
    
    1. Enciendan la fuente C.C., ajusten el voltaje a los valores de la tabla 1 y midan $V_R$ y $V_D$ para cada línea. ¡Atención a la polaridad de la medición ! (1 pt)
    
    1. Calculen $I_D$ utilizando la fórmula $I_D = \frac{V_R}{R}$ para cada línea de la tabla 1. (0.4 pt)

    | $V_{CC}$ (V) | $V_D$ (mV) | $V_R$ (mV) | $I_D$ (mA) |
    | -- | -- | -- | -- |
    | 12 |  |  | |
    | 1 |  |  | |

    Tabla 1: $V_D$ e $I_D$ del diodo polarizado en inversa

- Obtengan una resistencia de 20 Ω (1 W) de los materiales del laboratorio
    
2. Apaguen la fuente, cambien la dirección del diodo y cambien el valor de la resistencia para armar el circuito de la Figura 2

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/forward_diode_resistance.png" width="200">

    Figura 2: Circuito para medir la corriente directa

    1. Ajusten el voltaje de la fuente C.C. a los valores de la tabla 2 y midan $V_R$ y $V_D$ para cada línea. Atención a la polaridad de la medición ! (1.5 pt)
    
    1. Calculen $I_D$ utilizando la fórmula $I_D = \frac{V_R}{R}$ para cada línea de la tabla 2 (0.5 pt)

    | $V_{CC}$ (V) | $V_D$ (mV) | $V_R$ (V) | $I_D$ (mA) |
    | -- | -- | -- | -- |
    | 0.5 |  |  | |
    | 1 |  |  | |
    | 1.5 |  |  | |
    | 2 |  |  | |
    | 2.5 |  |  | |

    Tabla 2: $V_D$ e $I_D$ del diodo polarizado en directa

3. Hagan una gráfica de $I_D$ (eje y) por $V_D$ (eje x) considerando tanto las mediciones de la tabla 1 como las de la tabla 2. (0.5 pt)

- Obtengan una resistencia de 1 kΩ y un diodo zener de los materiales del laboratorio.

4. Armen el circuito de la Figura 3. 
   
    <img src="https://julianodb.github.io/electronic_circuits_diagrams/zener_rectifier_2.png" width="400">
    
    Figura 3: Circuito regulador de voltaje con un diodo Zener

    1. Ajusten la fuente C.C. a: 5.5 V, 6 V, 6.5 V y 7 V y anoten los valores de $V_{R_L}$ para cada ajuste. (0.4 pt)
    
    2. ¿Es constante el voltaje? ¿A que se debe? (0.5 pt)

- Obtengan un LED de un color a su elección de los materiales del laboratorio. Dependiendo del color de LED elegido, obtengan también una resistencia con el valor que corresponde al color del LED, de acuero a la siguiente lista (valores defeinidos por cada grupo en el Trabajo 1):
  - LED Rojo: $R_1 = 200\ \Omega$
  - LED Amarillo: $R_1 = 2\ k\Omega$
  - LED Verde: $R_1 = 150\ \Omega$
  - LED Azul: $R_1 = 100\ \Omega$

5. Armen el circuito de la Figura 4 utilizando el LED elegido y su correspondiente valor de $R_1$. 
   
    <img src="https://julianodb.github.io/electronic_circuits_diagrams/resistance_led_mosfet_2.png" width="200">
    
    Figura 4: Circuito LED con MOSFET

    1. Con $v_i$ conectado a tierra, contesten si el LED está encendido o apagado. Además, midan el voltaje en la resistencia $R_1$ y estimen cuanta corriente fluye a través del LED. (0.5pt)

    1. Con $v_i$ conectado a +5V, contesten si el LED está encendido o apagado. Además, midan el voltaje en la resistencia $R_1$ y estimen cuanta corriente fluye a través del LED. (0.5pt)

    1. *EXTRA*. Supongan que la intensidad luminosa del LED no es satisfactoria (podría ser muy fuerte o muy debil). Elijan un valor distinto de $R_1$ para solucionar el problema, midan cuanta corriente fluye a través del LED, y anoten el valor elegido y los resultados obtenidos. Finalmente, contesten si recomendarían al grupo con el color elegido que utilice el nuevo valor. (0.5pt)
