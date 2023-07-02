# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/01
## Prueba Escrita 2 - Pauta

La Figura 1 muestra un sistema de control ON/OFF de temperatura de una incubadora, donde tanto el sensor de temperatura $IC_1$ como la resistencia $R_{heat}$ están térmicamente conectados a ella. Cuando Q está encendido, el calor generado en $R_{heat}$ sube la temperatura en la incubadora, mientras que cuando no hay corriente en $R_{heat}$, la incubadora se enfría naturalmente. $IC_1$ es un sensor de temperatura TMP236 de Texas Instruments que genera un voltaje proporcional a la temperatura. El potenciometro $R_{pot}$ permite ajustar el voltaje $V_{set}$ para seleccionar la temperatura deseada. El voltaje $v_{temp}$ se determina con la siguiente ecuación:

$v_{temp} = 400\ mV + \theta*19.5\ mV$

Donde $\theta$ es la temperatura en grados celsius.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_1.png" width="300">

Figura 1: Sistema de control de temperatura ON/OFF de una incubadora. Los valores de los componentes y características del transistor se encuentran en la sección al final de la prueba

1. Para el circuito de la Figura 1, determine $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es (2pt):
    1. 33 °C
        > $v_{temp} = 400\ mV + 33*19.5\ mV = 1043.5\ mV $
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
        > Para calcular la potencia en $R_{heat}$, se debe descubrir si Q está actuando en modo activo o saturado.
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
        > Como $v_o$ es el mismo del ejercício anterior, las corrientes y voltajes en el transistor serán las mismas y, por lo tanto, $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 3.23^2 \approx 31\ W$
    1. 35 °C
        > $v_{temp} = 400\ mV + 35*19.5\ mV = 1082.5\ mV $
        >
        > $v_{set} = 1080\ mV < v_{temp}$
        >
        > Como $v_{set} < v_{temp} \implies v_{+} < v_{-}$. Asumiendo un amplificador operacional ideal, la salida se satura en el voltaje de alimentación negativo.
        >
        > Por lo tanto, $v_o = tierra = 0\ V$.
        >
        > Como $V_{BE} = 0 \implies I_B = 0 \implies I_C = 0$, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 0^2 = 0\ W$

El circuito de la figura 2 implementa mejoras en el circuito de control de la figura 1. Primero, se hizo con que el calor entregado sea *proporcional* a la diferencia entre la temperatura actual y la deseada. Además, se agregaron capacitores cuya función es filtrar señales de ruído, en especial el ruido producido por la red eléctrica a 50 Hz. 

<img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_3.png" width="300"> 

Figura 2: Sistema de control de temperatura proporcional integrativo de una incubadora. Los valores de los componentes y características del transistor se encuentran en la sección al final de la prueba

2. Para el circuito de la Figura 2, considerando el análisis en corriente contínua ($\omega=0$), determine (2pt):
    1. una fórmula para $v_o$ en función de $V_{set}$ y $v_{temp}$ en corriente contínua.
        > Para el análisis en corriente contínua, se eliminan los condensadores. Por lo tanto, el circuito sería el siguiente:
        >
        > <img src="https://julianodb.github.io/electronic_circuits_diagrams/temperature_control_2.png" width="300"> 
        >
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
    1. $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es 33 °C
        > $v_{temp} = 400\ mV + 33*19.5\ mV = 1043.5\ mV $
        >
        > $v_o = 47(V_{set} - v_{temp}) = 47(1,08 -1,0435)$
        >
        > $v_o \approx 1.72\ V$
        >
        > Como la unión base-emisor de Q está polarizada en directa, se asume $V_{BE} = 0.7\ V$.
        >
        > Por lo tanto, la corriente en la base de Q es $I_B = \frac{v_o-V_{BE}}{R_B} = \frac{1.72-0.7}{680} \approx 1.5\ mA$
        >
        > Para calcular la potencia en $R_{heat}$, se debe descubrir si Q está actuando en modo activo o saturado.
        >
        > Si se asume que Q está en modo saturado:
        >
        > $V_{CE} = V_{CE_{SAT}} = 0.3\ V$
        >
        > $\therefore I_C = \frac{V_{heat}-V_{CE}}{R_{heat}} = \frac{10-0.3}{3} \approx 3.23\ A$
        >
        > Comprobando el criterio de modo saturado ($0 < \beta_{forzado} < \beta$):
        >
        > $\beta_{forzado} = I_C / I_B = 3.23 / 0.0015 \approx 2130$
        >
        > Como $2130 > 1000$, se concluye que Q NO está operando en modo saturado.
        >
        > Si se asume que Q está en modo activo:
        >
        > $I_C = \beta I_B = 1000*1.5\ mA = 1.5\ A$
        >
        > Comprobando el criterio de modo activo ( $V_{CE}> V_{CE_{SAT}}$ ):
        >
        > $V_{CE} = V_C = V_{heat} - R_{heat} I_C = 10 - 3* 1.5 = 5.5\ V$
        >
        > Como $5.5\ V > V_{CE_{SAT}} = 0.3\ V$, se concluye que Q SÍ está operando en modo activo.
        >
        > Finalmente, el calor entregado por $R_{heat}$ es:
        >
        > $Calor_{R_{heat}} = R_{heat} I_C^2 = 3* 1.5^2 = 6.75\ W$
    1. $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es 34 °C
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
        > Para calcular la potencia en $R_{heat}$, se debe descubrir si Q está actuando en modo activo o saturado.
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
    1. $v_o$ y el calor entregado a la incubadora por $R_{heat}$ si la temperatura es 35 °C
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
    
2. Para el circuito de la Figura 2, considerando el análisis en frecuencia, determine (2pt):
    1. la ganancia de voltaje del circuito amplificador en función de la frecuencia ($A_{V}(\omega)$). Considere que el voltaje de salida es $v_o$ y que el voltaje de entrada es $v_i=V_{set}-v_{temp}$.
        > Como hay realimentación negativa, $V_+ = V_-$. Además, la corriente en $R_2 // C_1$ es igual a la corriente en $R_1$, y el voltaje $V_+$ está determinado por la malla con $V_{set}$, $R_3$, $R_4$ y $C_2$. Por lo tanto:
        >
        > $$\begin{cases}
            V_+ = V_- & \text{(1)}\\
            \frac{v_o-V_-}{R_2// Z_{C_1}} = \frac{V_--V_{temp}}{R_1} & \text{(2)}\\
            V_+ = \frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set} & \text{(3)}
            \end{cases}$$
        >
        > Donde $Z_{C_1}$ es la impedancia de $C_1$ y $Z_{C_2}$ es la impedancia de $C_2$
        > Utilizando (1) se reemplaza $V_-$ por $V_+$ en (2). Luego, se reemplaza $V_+$ por la expresión en (3). Así, se obtiene:
        > 
        > $\frac{v_o-\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set}}{R_2// Z_{C_1}} = \frac{\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set}-V_{temp}}{R_1}$
        > 
        > $v_o-\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set} = \frac{R_2// Z_{C_1}}{R_1}\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set}-\frac{R_2// Z_{C_1}}{R_1}V_{temp}$
        > 
        > $v_o = (\frac{R_2// Z_{C_1}}{R_1}+1)\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set}-\frac{R_2// Z_{C_1}}{R_1}V_{temp}$
        > 
        > $v_o = \frac{R_2// Z_{C_1} + R_1}{R_1}\frac{R_4//Z_{C_2}}{R_3+R_4//Z_{C_2}}V_{set}-\frac{R_2// Z_{C_1}}{R_1}V_{temp}$
        >
        > Como $R_3 = R_1$, $R_4 = R_2$ y $C_2 = C_1$,
        >
        > $v_o = \frac{R_2// Z_{C_1} + R_1}{R_1}\frac{R_2//Z_{C_1}}{R_2//Z_{C_1}+R_1}V_{set}-\frac{R_2// Z_{C_1}}{R_1}V_{temp}$
        >
        > $v_o = \frac{R_2//Z_{C_1}}{R_1}V_{set}-\frac{R_2// Z_{C_1}}{R_1}V_{temp}$
        >
        > $v_o = \frac{R_2//Z_{C_1}}{R_1}(V_{set}-V_{temp})$
        >
        > $v_o = \frac{\frac{1}{1/R_2+1/Z_{C_1}}}{R_1}(V_{set}-V_{temp})$
        >
        > $v_o = \frac{1}{R_1}\frac{1}{\frac{1}{R_2}+\frac{1}{Z_{C_1}}}(V_{set}-V_{temp})$
        >
        > $v_o = \frac{1}{R_1}\frac{1}{\frac{1}{R_2}(1+\frac{R_2}{Z_{C_1}})}(V_{set}-V_{temp})$
        >
        > $v_o = \frac{R_2}{R_1}\frac{1}{1+\frac{R_2}{Z_{C_1}}}(V_{set}-V_{temp})$
        >
        > Reemplazando $Z_{C_1} = \frac{1}{C_1 s}$ y $V_{set}-V_{temp} = v_i$ 
        >
        > $v_o = \frac{R_2}{R_1}\frac{1}{1+R_2 C_1 s}v_i$
        >
        > Utilizando la definición de función de transferencia
        >
        > $H(s) = \frac{v_o(s)}{v_i(s)} $
        >
        > $H(s) = \frac{\frac{R_2}{R_1}\frac{1}{1+R_2 C_1 s}v_i(s)}{v_i(s)} $
        >
        > $H(s) = \frac{R_2}{R_1}\frac{1}{1+R_2 C_1 s} $
        >
        > Calculando la ganancia de voltaje en función de la frecuencia:
        >
        > $A_v(\omega) = || H(s=j\omega) ||$
        >
        > $A_v(\omega) = || \frac{R_2}{R_1}\frac{1}{1+R_2 C_1 j\omega} ||$
        >
        > $A_v(\omega) = \frac{R_2}{R_1}\frac{1}{\sqrt{1+(R_2 C_1 \omega)^2}}$
        >
        > Reemplazando $R_2 = 47\ k\Omega$, $R_1 = 1\ k\Omega$ y $C_1 = 47\ \mu F$,
        >
        > $A_v(\omega) \approx 47\frac{1}{\sqrt{1+(2.2 \omega)^2}}$
    2. el tipo de filtro (pasobaja, pasoalta, pasobanda)
        > La ganancia del circuito disminuye conforme aumenta la frecuencia. Por lo tanto, se trata e un filtro pasobaja
    3. la frecuencia de corte en Hz. Asuma que la ganancia maxima es $\frac{R_2}{R_1}$.
        > La frecuencia de corte es la frecuencia con la cual la ganancia es $A_{v_{max}}/\sqrt{2}$
        >
        > Considerando $A_{v_{max}} = \frac{R_2}{R_1} = 47$ y $\omega_c = 2\pi f_c$:
        >
        > $47\frac{1}{\sqrt{1+(2.2* 2\pi f_c)^2}} = \frac{47}{\sqrt{2}}$
        >
        > $1+(4.4\pi f_c)^2 = 2$
        >
        > $(4.4\pi f_c)^2 = 1$
        >
        > $4.4\pi f_c = 1$
        >
        > $f_c = \frac{1}{4.4\pi}$
        >
        > $f_c \approx 0.072\ Hz$

    3. la amplitud de la salida para una señal de entrada $v_i$ de 50 Hz y amplitud 0.1 V.
        > $A_v(\omega = 2\pi*50) \approx 47\frac{1}{\sqrt{1+(2.2 *2\pi*50)^2}}$
        >
        > $A_v(\omega = 2\pi*50) \approx 47\frac{1}{\sqrt{1+(220 \pi)^2}}$
        >
        > $A_v(\omega = 2\pi*50) \approx 0.068$
        >
        > Por lo tanto, la amplitud de la salida para una señal de 50 Hz y amplitud 0.1 V es:
        >
        > $v_{o_{amplitud}} = A_v v_{i_{amplitud}}$
        >
        > $v_{o_{amplitud}} = 0.068*0.1 = 6.8\ mV$

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
