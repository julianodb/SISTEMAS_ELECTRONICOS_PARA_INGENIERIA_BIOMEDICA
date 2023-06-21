# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/01
## Guía de Ejercícios para la Prueba Escrita 2

1. La Figura 1 muestra un sistema de control ON/OFF de temperatura de una incubadora, donde tanto $IC_1$ como $R_{heat}$ están mecanicamente conectados a ella. Cuando encendido, el calor generado en $R_{heat}$ sube la temperatura en la incubadora, mientras que cuando no hay corriente en $R_{heat}$, la incubadora se enfría naturalmente. $IC_1$ es un sensor de temperatura TMP235 de Texas Instruments que genera un voltaje proporcional a la temperatura, de acuerdo a la siguiente ecuación 

    $v_{temp} = 500\ mV + \theta*10\ mV$

    Donde $\theta$ es la temperatura en grados celsius.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_1.png" width="300">

    Figura 1: Sistema de control de temperatura de una incubadora.

    Considerando que $V_{CC} = 5\ V$, $V_{set} = 850\ mV $, $R_B = 680\ \Omega$, $\beta = 1000$, $V_{heat} = 12\ V$, $V_{CE_{SAT}} = 0.3\ V$ y $R_{heat} = 3\ \Omega$, determine $v_o$ el calor entregado a la incubadora por $R_{heat}$ si la temperatura es:
    1. 0 °C
    1. 25 °C
    1. 50 °C
    1. 75 °C

2. Para el circuito de la Figura 2, asumiendo que $R_1=R_2=10\ k\Omega$ y $C_1=C_2=1\ nF$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_low_2.png" width="400"> 

    Figura 2: Circuito con topología Sallen-Key.

    1. Qué tipo de filtro está implementado
    1. La(s) frecuencia(s) de corte
    1. La ganancia en dB en corriente contínua
    1. La ganancia en dB para una entrada con frecuencia 50 Hz
    1. La ganancia en dB para una entrada con frecuencia 1 MHz

# Fórmulas
$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = || H(s=j\omega) ||$$
$$ A_{v_{dB}}(\omega) = 20 log\left(|| H(j\omega) ||\right)$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im(H(j\omega))}{Re(H(j\omega))} \right)$$

$$I_E = I_C + I_B$$
- en modo activo ($V_{CE} > V_{CE_{SAT}}$):
$$I_C = \beta I_B $$
- en modo saturado ($0 < \beta_{forzado} < \beta$):
$$V_{CE} = V_{CE_{SAT}}$$
$$I_C = \beta_{forzado} I_B $$
- modelo híbrido-$\pi$ de pequeñas señales:
$$r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$$
$$i_{C_{AC}} = \beta i_{B_{AC}} $$
$$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$$
