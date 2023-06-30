# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/01
## Prueba Escrita 2 - Pauta

1. La Figura 1 muestra un sistema de control ON/OFF de temperatura de una incubadora, donde tanto el sensor de temperatura $IC_1$ como la resistencia $R_{heat}$ están térmicamente conectados a ella. Cuando Q está encendido, el calor generado en $R_{heat}$ sube la temperatura en la incubadora, mientras que cuando no hay corriente en $R_{heat}$, la incubadora se enfría naturalmente. $IC_1$ es un sensor de temperatura TMP236 de Texas Instruments que genera un voltaje proporcional a la temperatura. El potenciometro $R_{pot}$ permite ajustar el voltaje $V_{set}$ para seleccionar la temperatura deseada. El voltaje $v_{temp}$ se determina con la siguiente ecuación:

    $v_{temp} = 400\ mV + \theta*19.5\ mV$

    Donde $\theta$ es la temperatura en grados celsius.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_1.png" width="300">

    Figura 1: Sistema de control de temperatura ON/OFF de una incubadora. Los valores de los componentes y características del transistor se encuentran en la sección al final de la prueba

    Determine $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es (2pt):
    1. 0 °C
        > $v_{temp} = 400\ mV + 0*19.5\ mV = 400\ mV $
        >
        > $v_{set} = 1080\ mV > v_{temp}$
        >
        > Como $v_{set} > v_{temp} \implies v_{+} > v_{-}$. Asumiendo un amplificador operacional ideal, la salida se satura en el voltaje de alimentación positivo, $V_{CC}$.
        >
        > Por lo tanto, $v_o = V_{CC} = 5\ V$.
        >
        > Como la unión base-emisor de Q está polarizada en directa, se asume $V_{BE} = 0.7\ V$.
        >
        > Por lo tanto, la corriente en la base de Q es $I_B = \frac{v_o-V_{BE}}{R_B} = \frac{5-0.7}{680} \approx 6.3\ mA$
        >
        > Para calcular la potencia en $R_{heat}$, se debe descubrir si Q está acutando en modo activo o saturado.
        >
        > Si se asume que Q está en modo activo:
        >
        > $I_C = \beta I_B = 1000*6.3\ mA = 6.3\ A$
        >
        > Comprobando el criterio de modo activo ( $V_{CE}> V_{CE_{SAT}}$ ):
        >
        > $V_{CE} = V_C = V_{heat} - R_{heat} I_C = 10 - 3* 6.3 = -8.9\ V$
        >
        > Como $-8.9\ V < V_{CE_{SAT}} = 0.3\ V$, se concluye que Q NO está operando en modo activo.
        >
        > Si se asume que Q está en modo saturado:
        >
        > $V_{CE} = V_{CE_{SAT}} = 0.3\ V$
        >
        > $\therefore I_C = \frac{V_{heat}-V_{CE}}{R_{heat}} = \frac{10-0.3}{3} \approx 3.23\ A$
        >
        > Comprobando el criterio de modo saturado ($0 < \beta_{forzado} < \beta$):
        >
        > $\beta_{forzado} = I_C / I_B = 3.23 / 0.0063 \approx 510$
        >
        > Como $0 < 510 < 1000$, se concluye que Q SÍ está operando en modo saturado.
        >
        > Finalmente, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 3.23^2 \approx 31\ W$
    1. 34 °C
        > $v_{temp} = 400\ mV + 34*19.5\ mV = 1063\ mV $
        >
        > $v_{set} = 1080\ mV > v_{temp}$
        >
        > Como $v_{set} > v_{temp} \implies v_{+} > v_{-}$. Asumiendo un amplificador operacional ideal, la salida se satura en el voltaje de alimentación positivo, $V_{CC}$.
        >
        > Por lo tanto, $v_o = V_{CC} = 5\ V$.
        >
        > Como $v_o$ es el mismo del ejercício anterior, las corrientes y voltajes s¿en el transistor serán las mismas y, por lo tanto, $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 3.23^2 \approx 31\ W$
    1. 35 °C
        > $v_{temp} = 400\ mV + 35*19.5\ mV = 1082.5\ mV $
        >
        > $v_{set} = 1080\ mV < v_{temp}$
        >
        > Como $v_{set} < v_{temp} \implies v_{+} < v_{-}$. Asumiendo un amplificador operacional ideal, la salida se satura en el voltaje de alimentación negativo, $tierra = 0\ V.
        >
        > Por lo tanto, $v_o = 0\ V$.
        >
        > Como $V_{BE} = 0 \implies I_B = 0 \implies I_C = 0$, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0^2 = 0\ W$
    1. 36 °C
        > $v_{temp} = 400\ mV + 36*19.5\ mV = 1102\ mV $
        >
        > $v_{set} = 1080\ mV < v_{temp}$
        >
        > Como $v_{set} < v_{temp} \implies v_{+} < v_{-}$. Asumiendo un amplificador operacional ideal, la salida se satura en el voltaje de alimentación negativo, $tierra = 0\ V.
        >
        > Por lo tanto, $v_o = 0\ V$.
        >
        > Como $V_{BE} = 0 \implies I_B = 0 \implies I_C = 0$, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0^2 = 0\ W$

2. El circuito de la figura 2 implementa una mejora en el circuito de control para la incubadora, haciendo con que el calor entregado sea *proporcional* a la diferencia entre la temperatura actual y la deseada. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_2.png" width="300"> 

    Figura 2: Sistema de control de temperatura proporcional de una incubadora. Los valores de los componentes y características del transistor se encuentran en la sección al final de la prueba

    Determine $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es (2pt):
    > Como hay realimentación negativa, $V_+ = V_-$. Además, la corriente en $R_2$ es igual a la corriente en $R_1$, y el voltaje $V_+$ está determinado por el divisor resistivo $R_3$ y $R_4$. Por lo tanto:
    >
    > $$\begin{cases}
        V_+ = V_- & \text{(1)}\\
        \frac{v_o-V_-}{R_2} = \frac{V_--V_{temp}}{R_1} & \text{(2)}\\
        V_+ = \frac{R_4}{R_3+R_4}V_{set} & \text{(3)}
        \end{cases}$$
    >
    > Utilizando (1) se reemplaza $V_-$ por $V_+$ en (2). Luego, se reemplaza $V_+$ por la expresión en (3). Así, se obtiene:
    > 
    > $\frac{v_o-\frac{R_4}{R_3+R_4}V_{set}}{R_2} = \frac{\frac{R_4}{R_3+R_4}V_{set}-V_{temp}}{R_1}$
    > 
    > $v_o-\frac{R_4}{R_3+R_4}V_{set} = \frac{R_2}{R_1}\frac{R_4}{R_3+R_4}V_{set}-\frac{R_2}{R_1}V_{temp}$
    > 
    > $v_o = (\frac{R_2}{R_1}+1)\frac{R_4}{R_3+R_4}V_{set}-\frac{R_2}{R_1}V_{temp}$
    > 
    > $v_o = \frac{R_2+R_1}{R_1}\frac{R_4}{R_3+R_4}V_{set}-\frac{R_2}{R_1}V_{temp}$
    >
    > Como $R_3 = R_1$ y $R_4 = R_2$,
    >
    > $v_o = \frac{R_2+R_1}{R_1}\frac{R_2}{R_1+R_2}V_{set}-\frac{R_2}{R_1}V_{temp}$
    >
    > $v_o = \frac{R_2}{R_1}V_{set}-\frac{R_2}{R_1}V_{temp}$
    >
    > $v_o = \frac{R_2}{R_1}(V_{set}-V_{temp})$
    >
    > Reemplazando $R_2 = 47\ k\Omega$ y $R_1 = 1\ k\Omega$,
    >
    > $v_o = 47(V_{set}-V_{temp})$
    1. 0 °C
        > $v_{temp} = 400\ mV + 0*19.5\ mV = 400\ mV $
        >
        > $v_o = 47(V_{set} - v_{temp}) = 47(1,08 -0,4)$
        >
        > $v_o = 31.96\ V$
        >
        > Como el amplificador operacional está alimentado por $V_{CC} = 5\ V$, el mayor voltaje de salida posible es 5 V. Por lo tanto, el amplificador está saturado y:
        >
        > $v_o = 5\ V$
        >
        > Como $v_o$ es el mismo del ejercício 1.1, las corrientes y voltajes s¿en el transistor serán las mismas y, por lo tanto, $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 3.23^2 \approx 31\ W$
    1. 34 °C
        > $v_{temp} = 400\ mV + 34*19.5\ mV = 1063\ mV $
        >
        > $v_o = 47(V_{set} - v_{temp}) = 47(1,08 -1,063)$
        >
        > $v_o = 0.799\ V$
        >
        > Como la unión base-emisor de Q está polarizada en directa, se asume $V_{BE} = 0.7\ V$.
        >
        > Por lo tanto, la corriente en la base de Q es $I_B = \frac{v_o-V_{BE}}{R_B} = \frac{0.799-0.7}{680} \approx 146\ \mu A$
        >
        > Para calcular la potencia en $R_{heat}$, se debe descubrir si Q está acutando en modo activo o saturado.
        >
        > Si se asume que Q está en modo saturado:
        >
        > $V_{CE} = V_{CE_{SAT}} = 0.3\ V$
        >
        > $\therefore I_C = \frac{V_{heat}-V_{CE}}{R_{heat}} = \frac{10-0.3}{3} \approx 3.23\ A$
        >
        > Comprobando el criterio de modo saturado ($0 < \beta_{forzado} < \beta$):
        >
        > $\beta_{forzado} = I_C / I_B = 3.23 / 0.000146 \approx 22120$
        >
        > Como $22120 > 1000$, se concluye que Q NO está operando en modo saturado.
        >
        > Si se asume que Q está en modo activo:
        >
        > $I_C = \beta I_B = 1000*146\ \mu A = 146\ mA$
        >
        > Comprobando el criterio de modo activo ( $V_{CE}> V_{CE_{SAT}}$ ):
        >
        > $V_{CE} = V_C = V_{heat} - R_{heat} I_C = 10 - 3* 0.146 = 9.562\ V$
        >
        > Como $9.562\ V > V_{CE_{SAT}} = 0.3\ V$, se concluye que Q SÍ está operando en modo activo.
        >
        > Finalmente, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0.146^2 \approx 64\ mW$
    1. 35 °C
        > $v_{temp} = 400\ mV + 35*19.5\ mV = 1082.5\ mV $
        >
        > $v_o = 47(V_{set} - v_{temp}) = 47(1,08 -1,0825)$
        >
        > $v_o = -0.1175\ V$
        >
        > Como el amplificador operacional está alimentado por $V_{CC} = 5\ V$ y $tierra = 0\ V$, el menor voltaje de salida posible es 0 V.
        >
        > Por lo tanto, $v_o = 0\ V$.
        >
        > Como $V_{BE} = 0 \implies I_B = 0 \implies I_C = 0$, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0^2 = 0\ W$
    1. 36 °C
        > $v_{temp} = 400\ mV + 36*19.5\ mV = 1102\ mV $
        >
        > $v_o = 47(V_{set} - v_{temp}) = 47(1,08 -1,102)$
        >
        > $v_o = -1.034\ V$
        >
        > Como el amplificador operacional está alimentado por $V_{CC} = 5\ V$ y $tierra = 0\ V$, el menor voltaje de salida posible es 0 V.
        >
        > Por lo tanto, $v_o = 0\ V$.
        >
        > Como $V_{BE} = 0 \implies I_B = 0 \implies I_C = 0$, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0^2 = 0\ W$

3. El circuito de la figura 3 implementa una mejora en el circuito de control de la figura 2. Se agregaron capacitores cuya función es filtrar señales de ruído, en especial el ruido producido por la red eléctrica a 50 Hz. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_3.png" width="300"> 

    Figura 3: Sistema de control de temperatura proporcional integrativo de una incubadora. Los valores de los componentes y características del transistor se encuentran en la sección al final de la prueba

    Determine:
    1. la ganancia de voltaje del circuito amplificador en función de la frecuencia ($A_{V}(\omega)$). Considere que el voltaje de salida es $v_o$ y que el voltaje de entrada es $v_i=V_{set}-v_{temp}$.
    2. el tipo de filtro (pasobaja, pasoalta, pasobanda)
    3. la frecuencia de corte en Hz.
    3. la amplitud de la salida para una señal de 50 Hz y amplitud 0.1 V.

## Valores de componentes y voltajes fijos de los Circuitos
- $V_{CC} = 5\ V$
- $V_{set} = 1080\ mV $
- $R_B = 680\ \Omega$
- $V_{heat} = 10\ V$
- $R_{heat} = 3\ \Omega$
- $R_1 = R_3 = 1\ k\Omega$
- $R_2 = R_4 = 47\ k\Omega$
- $C_1 = C_2 = 47\ \mu F$

## Características del transistor Q:
- $\beta = 1000$
- $V_{CE_{SAT}} = 0.3\ V$
- $V_{BE} \approx 0.7\ V$ cuando la unión base-emisor está polarizada en directa.

# Fórmulas

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = || H(s=j\omega) ||$$
$$ A_{v_{dB}}(\omega) = 20 log\left(|| H(j\omega) ||\right)$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$

$$Calor_{Resistencia} = IV = RI^2 = V^2 / R$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
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
