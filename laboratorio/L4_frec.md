# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 4 de Sistemas Electrónicos
#### Segundo Semestre de 2025

## Recursos del pañol

| tipo | descripcion | cantidad | | tipo | descripcion | valor | cantidad |
| -- | -- | -- | --| -- | -- | -- | -- |
| Instrumentos |  |  | | Dispositivos |  |  |  |
|  | Osciloscopio | 1 | |  | LM324 |  | 1 |
|  | Generador de señales | 1 | |  | Resistencias (Ω) |  |  |
|  | Multímetro | 1 | |  |  | 10 k | 3 |
|  | Fuente CC. | 1 | |  | | 20 k  | 1 |
| Implementos |  |  | | | Condensadores |  |  |
|  | Cable Banana-Caimán | 2 | | |  | $0.01 \mu F$ | 2 |
|  | Sonda | 2 | | | |  $47 \mu F$ | 1 |
| Otros |  |  | |  | |  |  |
| | Protoboard | 1 | |  | | | |
| | cables, alicate, etc | | |  | | |  |

## Procedimiento experimental e informe

Nota: Ante cualquier duda en el uso de los instrumentos, o las conexiones eléctricas, consulten al profesor.

Configuren la fuente CC para un voltaje de 12 V y una corriente maxima entre 0.2 y 0.5 A.

1. Armen el circuito de la figura 1.  Utilicen $R_X = 10\ k\Omega$ y $C_{bias}=47\ \mu F$.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/half_voltage_divider.png" width="200">

   Figura 1: Divisor de voltaje

   1. Utilizando el osciloscopio, observen el valor de $V_{bias\\_weak}$. Enciendan la fuente CC, anoten cuanto tiempo demora en estabilizarse y su valor en estado estacionario. Ayuda: utilicen al menos 0.5 segundo por division en la escala horizontal. (0.5 pt)

2. Sin desarmar el circuito anterior, armen el circuito de la figura 2 para obtener la señal $V_{bias}$. Utilicen uno de los amplificadores operacionales del circuito integrado LM324. No olviden alimentar el LM324 (conectar $V_{CC}$ y tierra a sus pines 4 y 11, respectivamente).

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/buffer_vbias.png" width="400">

   Figura 2: Buffer

   1. Enciendan la fuente CC, esperen que el circuito se estabilice y midan el valor de $V_{bias}$. ¿Cómo se compara con $V_{bias\\_weak}$ ? (0.2 pt)

3. Sin desarmar los circuitos anteriores, armen el circuito de la figura 3, utilizando un segundo amplificador del LM324. Noten que la señal de salida del buffer $V_{bias}$ Se conecta a $R_2$. Utilicen $C_1 = C_2 = 0.01\ \mu F$, $R_1 = 10\ k\Omega$ y $R_2 = 20\ k\Omega$. Conecten el generador de funciones a $v_i$ (no olviden conectar la tierra del generador a la tierra del circuito), y midan la señal $v_o$ con el osciloscopio.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_high_2.png" width="400">

   Figura 3: Filtro con topología Sallen-Key

   1. Configuren el generador de funciones para generar una señal sinusoidal, sin offset, con amplitud 1 V. Ajusten la frecuencia de $v_i$ a los valores indicados en la siguiente tabla, y midan la amplitud de $v_o$. (3.5 pt)

        | frecuencia (Hz) | frecuencia (rad/s) | amplitud de $v_o$ (V) |
        | -- | -- | -- |
        | 100 | ~628  |  |
        | 316 | ~1 985 |  |
        | 1 000 | ~6 280  |  |
        | 3 160 | ~19 850 |  |
        | 10 000 | ~62 800  |  |
        | 31 600 | ~198 500 |  |
        | 100 000 | ~628 000  |  |

   1. Observando los resultados en la tabla anterior, ¿qué tipo de filtro está implementado ? (0.5pt)
   1. Observando los resultados en la tabla anterior, ¿dentro de que rango de frecuencias se encuentra su frecuencia de corte? (0.6pt)
   1. Considerando que la función de transferencia entre $v_o$ y $v_i$ es 
       $$ H(s) = \frac{R_1 R_2 C_1 C_2 s^2}{1 + R_1 C_1 s + R_1 C_2 s + R_1 R_2 C_1 C_2 s^2}  $$

       y, por lo tanto, la ganancia en frecuencia es:

       $$ |H(j\omega)| = \frac{R_1 R_2 C_1 C_2 \omega^2}{\sqrt{(1 - R_1 R_2 C_1 C_2 \omega^2)^2 + ((R_1 C_1 + R_1 C_2) \omega)^2}} $$

       estimen la frecuencia de corte teórica y contesten como se compara con la experimental (0.7pt).