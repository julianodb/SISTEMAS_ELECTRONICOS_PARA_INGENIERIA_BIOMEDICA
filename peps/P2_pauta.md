# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/01
## Prueba Escrita 2 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.
>
> Los números entre paréntesis con un signo de + son la puntuación parcial. Por ejemplo, (+0.1pt) indica que haber desarrollado el paso entre la última puntiación parcial y el (+0.1pt) vale 0.1 puntos.

1. El siguiente circuito implementa un filtro pasivo, con $R_1=3.3\ k\Omega$, $R_2=5.1\ k\Omega$ y $C_1=0.1\ \mu F$. Determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/transient_example4.png" width="200">

    Figura 1: Filtro pasivo

    1. El valor de $v_o$ en estado estacionario si $v_i$ se conecta a una fuente constante de 5 V en $t=0$. (0.5pt)
       > En estado estacionario $C_1$ se considera un circuito abierto, por lo que:
       >
       > $v_o = \frac{R_2}{R_1+R_2}v_i = \frac{5.1}{3.3+5.1} 5 \approx 3\ V$
       >
       > Algunas otras alternativas para resolver este ejercício incluyen:
         > - Aplicar el teorema del valor final: $f(t \to \infty) = F(s=0) $
         > - Encontrar la respuesta en estado estacionario con frecuencia cero: $ H(j\omega) V_i(j\omega)$, con $\omega=0$
    2. Cual es la constante de tiempo del circuito (0.5pt)
       > Paso 1: Aplicar la transformada de Laplace (sustituir $C_1$ por una resistencia de valor $\frac{1}{C_1 s}$) (+0.1pt)
       >
       > Paso 2: Encontrar la función de transferencia (+0.2pt)
       >
       > Por divisor de voltaje (// significa en paralelo)
       >
       > $v_o = \frac{R_2 // C_1}{R_2 // C_1 + R_1} v_i$
       >
       > $R_2 // C_1 = \frac{1}{\frac{1}{R_2}+C_1 s} = \frac{R_2}{1+R_2 C_1 s}$
       >
       > $\therefore v_o = \frac{\frac{R_2}{1+R_2 C_1 s}}{\frac{R_2}{1+R_2 C_1 s}+R_1} v_i$
       >
       > $ v_o = \frac{R_2}{R_2+R_1(1+R_2 C_1 s)} v_i$
       >
       > $H(s) = \frac{v_o}{v_i} = \frac{R_2}{R_1+R_2 + R_1 R_2 C_1 s}$
       >
       > Paso 3: Encontrar el pólo (+0.1pt)
       >
       > $R_1+R_2 + R_1 R_2 C_1 s = 0$
       >
       > $\implies s = -\frac{R_1+R_2}{R_1 R_2C_1}$
       >
       > Paso 4: calcular $\tau$ (+0.1pt):
       >
       > $\tau = -\frac{1}{pólo} = \frac{R_1 R_2C_1}{R_1+R_2}$
       >
       > $\tau = \frac{3.3k\ 5.1k\ 0.1\mu}{3.3k + 5.1k} = \frac{1.683}{8.4k} \approx 0.2\ ms$
    3. Qué tipo de filtro está implementado (0.5pt)
       > $A_v(\omega) = | H(s=j\omega) | = | \frac{R_2}{R_1+R_2 + R_1 R_2 C_1 j \omega} | = \frac{R_2}{\sqrt{(R_1+R_2)^2 + (R_1R_2C_1\omega)^2}}$ (+0.2pt)
       >
       > $A_v(\omega = 0) = \frac{R_2}{R_1+R_2} \approx 0.61$ (+0.1pt)
       >
       > $\lim_{\omega \to \infty} A_v(\omega) = 0$ (+0.1pt)
       >
       > Se trata de un $A_v$ que es 0.61 en $\omega = 0$ y que decrece tendiendo a cero conforme $\omega$ crece. Por lo tanto, es un filtro pasa-baja (+0.1 pt)

    4. El valor de la(s) frecuencia(s) de corte en Hz (0.5pt)
       > Como $A_v$ es una función estrictamente decendiente, $max(A_v(\omega)) = A_v(0) = \frac{R_2}{R_1+R_2}$ (+0.2pt)
       >
       > $A_v(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$
       >
       > $\frac{R_2}{\sqrt{(R_1+R_2)^2 + (R_1R_2C_1\omega_c)^2}} = \frac{R_2}{(R_1+R_2)\sqrt{2}}$
       >
       > $(R_1+R_2)^2 + (R_1R_2C_1\omega_c)^2 = 2(R_1+R_2)^2 $
       >
       > $(R_1R_2C_1\omega_c)^2 = (R_1+R_2)^2 $
       >
       > $R_1R_2C_1\omega_c = R_1+R_2 $
       >
       > $\omega_c = \frac{R_1+R_2}{R_1R_2C_1} $
       >
       > $\omega_c \approx 5000\ rad/s$ (+0.2pt)
       >
       > $f_c = \frac{\omega_c}{2\pi} \approx 800\ Hz$ (+0.1pt)

3. El siguiente circuito implementa un filtro activo, con $R = 10\ k\Omega$, $C= 47\ nF$, $R_a = 3.3\ k\Omega$ y $R_b=2.2\ k\Omega$. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_bandpass_3.png" width="400"> 

    Figura 2: Filtro con amplificador operacional

    La función de transferencia del circuito es
       $H(s) = \frac{V_o(s)}{V_i(s)} = \frac{5RCs}{2+RCs+2R^2C^2s^2}$. 

    1. ¿Cual es el valor de $v_o$ en estado estacionario si $v_i$ se conecta a una fuente constante de 5 V en $t=0$? (0.5pt)
       > En estado estacionario $C$ se considera un circuito abierto. (+0.1pt)
       >
       > Por lo tanto, la entrada no inversora del amplificador operacional está apenas conectada a tierra a través de $2R$. Como no fluye corriente en la entrada no-inversora, significa que la corriente en $2R$ es cero y, por lo tanto, que $V_+=0$ (+0.1pt)
       >
       > Resolviendo el divisor de voltaje compuesto por $R_a$ y $R_b$ (+0.1pt):
       >
       > $V_- = \frac{R_b}{R_a+R_b}v_o$
       >
       > Aplicando corto-circuito virtual (+0.2pt):
       >
       > $V_- = V_+ = 0$
       >
       > Finalmente:
       >
       > $\frac{R_b}{R_a+R_b}v_o = 0$
       >
       > $\therefore v_o=0$ 
       >
       > (+0.1pt)
    2. ¿Cual es la constante de tiempo del circuito ? (0.5pt)
       >
       > Paso 1: Encontrar el pólo (+0.3pt):
       >
       > $2+RCs+2R^2C^2s^2 = 0$
       >
       > $s = \frac{-RC\pm \sqrt{R^2C^2-16R^2C^2}}{4R^2C^2}$
       >
       > $s = -\frac{1}{4RC} \pm \frac{\sqrt{-15}}{4RC}$
       >
       > $s = -\frac{1}{4RC} \pm \frac{\sqrt{15}}{4RC}j$
       >
       > Lo que significa que hay dos pólos que son número complejos conjugados.
       >
       > La constante de tiempo estará dada por la parte real (+0.2pt):
       >
       > $\tau = \frac{-1}{pólo} = 4RC \approx 1.9\ ms $
    3. ¿Qué tipo de filtro está implementado? (0.5pt)
       > $A_v(\omega) = |\frac{5RC\omega j}{2+RC\omega j-2R^2C^2\omega^2}| = \frac{5RC\omega}{\sqrt{(2-2R^2C^2\omega^2)^2 + (RC\omega)^2}}$ (+0.2pt)
       >
       > $A_v(\omega=0) = 0$ (+0.1pt)
       >
       > $\lim_{\omega \to \infty}{A_v(\omega)} = \lim_{\omega \to \infty}\frac{5RC\omega}{\sqrt{(2-2R^2C^2\omega^2)^2 + (RC\omega)^2}} = \lim_{\omega \to \infty}\frac{5RC}{\sqrt{\frac{(2-2R^2C^2\omega^2)^2 + (RC\omega)^2}{\omega^2}}}$
       >
       > $ = \lim_{\omega \to \infty}\frac{5RC}{\sqrt{\frac{(2-2R^2C^2\omega^2)^2}{\omega^2} + \frac{(RC\omega)^2}{\omega^2}}}$
       >
       > $ = \lim_{\omega \to \infty}\frac{5RC}{\sqrt{\frac{4}{\omega^2} - \frac{8R^2C^2\omega^2}{\omega^2} + \frac{4R^4C^4\omega^4}{\omega^2} + \frac{R^2C^2\omega^2}{\omega^2}}}$
       >
       > $ = \lim_{\omega \to \infty}\frac{5RC}{\sqrt{\frac{4}{\omega^2} - 8R^2C^2 + 4R^4C^4\omega^2 + R^2C^2}}$ = 0 (+0.1pt)
       >
       > Observamos que $A_v(\omega)$ es distinto a cero cuando $\omega \neq 0$ o "$\omega \neq \infty$". Por ejemplo:
       >
       > $A_v(\omega = \frac{1}{RC}) = \frac{5}{\sqrt{(2-2)^2 + (1)^2}} = 5$
       >
       > Por lo tanto, se trata de un filtro pasa-banda (+0.1pt)
    1. Calcule la ganancia del circuito en las siguientes frecuencias: (0.6pt)
        1. 100 Hz
            > $\omega = 2\pi f = 200\pi$ (+0.1pt)
            >
            > $A_v(\omega=200\pi) = \frac{5RC200\pi}{\sqrt{(2-2R^2C^2(200\pi)^2)^2 + (RC200\pi)^2}}\approx 0.8 $ (+0.1pt)
        2. 300 Hz
            > $\omega = 2\pi f = 600\pi$ (+0.1pt)
            >
            > $A_v(\omega=600\pi) = \frac{5RC600\pi}{\sqrt{(2-2R^2C^2(600\pi)^2)^2 + (RC600\pi)^2}}\approx 4.5 $ (+0.1pt)
        3. 1000 Hz
            > $\omega = 2\pi f = 2000\pi$ (+0.1pt)
            >
            > $A_v(\omega=2000\pi) = \frac{5RC2000\pi}{\sqrt{(2-2R^2C^2(2000\pi)^2)^2 + (RC2000\pi)^2}}\approx 0.94 $ (+0.1pt)
    1. Determine la(s) frecuencia(s) de corte en Hz. Puedes asumir que la ganancia maxima en frecuencia es 5. (0.9pt)
       > $A_V(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$
       >
       > $\frac{5RC\omega_c}{\sqrt{(2-2R^2C^2\omega_c^2)^2 + (RC\omega_c)^2}} = \frac{5}{\sqrt{2}}$
       >
       > $\frac{RC\omega_c}{\sqrt{(2-2R^2C^2\omega_c^2)^2 + (RC\omega_c)^2}} = \frac{1}{\sqrt{2}}$
       >
       > $2R^2C^2\omega_c^2 =(2-2R^2C^2\omega_c^2)^2 + (RC\omega_c)^2 $
       >
       > $ 4 - 8 R^2C^2\omega_c^2 + 4R^4C^4\omega_c^4 - R^2C^2\omega_c^2=0 $
       >
       > $ 4R^4C^4\omega_c^4 - 9R^2C^2\omega_c^2 + 4=0 $ (+0.3pt)
       >
       > Si hacemos un cambio de variable $x = R^2C^2\omega_c^2$:
       >
       > $4x^2 -9x+4=0$
       >
       > $x = \frac{9\pm \sqrt{81-64}}{8}= \frac{9\pm \sqrt{17}}{8}$
       >
       > Y, por lo tanto:
       >
       > $R^2C^2\omega_c^2 = \frac{9\pm \sqrt{17}}{8}$
       >
       > $\omega_c^2 = \frac{9\pm \sqrt{17}}{8R^2C^2}$
       >
       > $\therefore \omega_c = \sqrt{\frac{9\pm \sqrt{17}}{8R^2C^2}}$ (+0.2pt)
       >
       > (tomamos solamente la raiz positiva pues $\omega_c \gt 0$)
       >
       > Reemplazando $R$ y $C$, obtenemos dos valores:
       >
       > $\omega_{c1} \approx 1661$ rad/s (+0.1pt)
       >
       > $\omega_{c2} \approx 2725 $ rad/s (+0.1pt)
       >
       > Convirtiendo a Hz:
       >
       > $f_{c1} = \frac{\omega_{c1}}{2\pi} \approx 260 $ Hz (+0.1pt)
       >
       > $f_{c2} = \frac{\omega_{c2}}{2\pi} \approx 430$ Hz (+0.1pt)
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. (1pt)
       > Paso 1: identificación de A y $\beta$ (+0.4pt)
       >
       > ![Abeta](../img/sallen_key_band_pass_2_A_beta_b.png)
       >
       > Paso 2: Determinación de la función de transferencia de $\beta$ (+0.3pt):
       >
       > $V_+ = \frac{2R}{2R+\frac{1}{Cs}} V_x$
       >
       > $V_x = \frac{1+2RCs}{2RCs}V_+$ (ecuación 1)
       >
       > Definimos $R_{eq}$ como la resistencia entre $V_x$ y tierra:
       >
       > $R_{eq} = R//\frac{1}{Cs}//(\frac{1}{Cs}+2R)$
       >
       > $R_{eq} = \frac{1}{\frac{1}{R}+Cs+\frac{Cs}{1+2RCs}}$
       >
       > $R_{eq} = \frac{R(1+2RCs)}{1+2RCs+Cs(R)(1+2RCs)+RCs}$
       >
       > $R_{eq} = \frac{R(1+2RCs)}{1+4RCs+2R^2C^2s^2}$
       >
       > Luego, la relación entre $V_x$ y $v_o$ se encuentra aplicando divisor de voltaje y recordando que $v_i = 0$ para calcular la función de transferencia de $\beta$:
       >
       > $V_x = \frac{R_{eq}}{R_{eq}+R}v_o$
       >
       > $V_x = \frac{\frac{R(1+2RCs)}{1+4RCs+2R^2C^2s^2}}{\frac{R(1+2RCs)}{1+4RCs+2R^2C^2s^2}+R}v_o$
       >
       > $V_x = \frac{R(1+2RCs)}{R(1+2RCs)+R(1+4RCs+2R^2C^2s^2)}v_o$
       >
       > $V_x = \frac{1+2RCs}{1+2RCs+1+4RCs+2R^2C^2s^2}v_o$
       >
       > $V_x = \frac{1+2RCs}{2+6RCs+2R^2C^2s^2}v_o$ (ecuación 2)
       >
       > Igualando la ecuación 1 y la ecuación 2:
       >
       > $\frac{1+2RCs}{2RCs}V_+ = \frac{1+2RCs}{2+6RCs+2R^2C^2s^2}v_o$
       >
       > $\beta(s) = \frac{V_+}{v_o} = \frac{2RCs}{2+6RCs+2R^2C^2s^2}$ 
       >
       > Paso 3: Aplicando el criterio de Barkhausen: (+0.2pt)
       >
       > $ A(j\omega_{osc}) \beta (j\omega_{osc}) = 1$
       >
       > $ A\frac{2RCj\omega_{osc}}{2+6RCj\omega_{osc}-2R^2C^2\omega_{osc}^2} = 1$
       >
       > $ 2ARCj\omega_{osc} = 2+6RCj\omega_{osc}-2R^2C^2\omega_{osc}^2 $
       >
       > Igualando la parte imaginaria:
       >
       > $2ARC\omega_{osc} = 6RC\omega_{osc}$
       >
       > $A = 3$
       >
       > Por lo tanto, el valor de A en que el filtro se vuelve inestable es 3.
       >
       > Igualando la parte real:
       >
       > $0 = 2-2R^2C^2\omega_{osc}^2$
        >
       > $2R^2C^2\omega_{osc}^2 = 2$
       >
       > $\omega_{osc}^2 = \frac{1}{R^2C^2}$
       >
       > $\omega_{osc} = \frac{1}{RC}$
       >
       > En Hz: (+0.1pt)
       >
       > $f_{osc} = \frac{1}{2\pi RC} \approx 340\ Hz$

3. **Pregunta Extra, (+0.5 pts en la PEP 1)**: Para el siguiente circuito, determine cuanta corriente fluye a través del LED cuando $v_i$ tiene los valores a continuación. Asuma que $ R_{21} = 100\ \Omega$, $ R_{22} = 47\ \Omega $, el LED es del color BLANCO y tiene un $ V_f = 4\ V $, y que el transistor tiene los siguientes parametros: $V_{GS(th)}=2.1\ V $, $ g_{ _{FS}} = 320\ mS $ (medido a 200 mA), $R_{DS(on)} = 3\ \Omega $.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/resistance_led_mosfet.png" width="200">

    1. $v_i = 2\ V$ 
       > En este caso, $V_{GS} = v_i = 2\ V$ es menor que $V_{GS(th)}$ (2.1 V). Por lo tanto, el transistor está apagado e $I_D = 0$. Como la corriente en el LED es igual a $I_D$, la corriente en el LED es cero. (+0.1 pt)
    1. $v_i = 2.3\ V$ 
       > En este caso, $V_{GS} = v_i = 2.3\ V$ es mayor que $V_{GS(th)}$ (2.1 V). Por lo tanto, el transistor está encendido. (+0.05pt)
       >
       > Suponiendo que está en modo saturado:
       >
       > $I_D = k(V_{GS}-V_{GS(th)})^2$
       >
       > No tenemos k, pero podemos calcularla a través de $g_{ _{FS}} $:
       >
       > $k = \frac{g_{ _{FS}}^2}{4I_D} = \frac{0.32^2}{4\ 0.2} = 0.128 \ A/V^2$
       >
       > Por lo tanto, 
       >
       > $I_D = 0.128(2.3-2.1)^2 \approx 5\ mA $ (+0.1pt)
       >
       > Para comprobar la condición de saturación, necesitamos calcular $V_{DS}$. Como $V_S=0$, basta calcular $V_D$:
       >
       > $V_D = 5- R_{22} I_D - V_f = 5-47*0.005-4 \approx 0.77\ V$
       >
       > Efectivamente, $V_{DS} > V_{GS} - V_{GS(th)}$ (0.77 > 0.2), comprobando el modo saturado. (+0.05pt)
       >
       > Por lo tanto, la corriente en el LED es de 5 mA.
    1. $v_i = 2.6\ V$ 
       > En este caso, $V_{GS} = v_i = 2.3\ V$ es mayor que $V_{GS(th)}$ (2.1 V). Por lo tanto, el transistor está encendido. (+0.05pt)
       >
       > Suponiendo que está en modo triodo:
       >
       > $V_{DS} = R_{DS(ON)} I_D$
       >
       > Podemos resolver la malla con el LED:
       >
       > $5 - R_{22} I_D - V_f - R_{DS(ON)} I_D = 0$ 
       >
       > $5 - 47 I_D - 4 - 3 I_D = 0$ 
       >
       > $50 I_D = 1$ 
       >
       > $ I_D = 20\ mA$ (+0.1pt)
       >
       > Para comprobar el modo triodo, calculamos $V_{DS}$:
       >
       > $V_{DS} = R_{DS(ON)} I_D = 3*0.02 = 0.06\ V$
       >
       > Efectivamente $V_{DS} < V_{GS}-V_{GS(th)} = 0.5\ V$, lo que comprueba que está en modo triodo y que la corriente en el LED es de 20 mA. (+0.05pt)

# Fórmulas

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$\tau = -\frac{1}{pólo}$$
$$ A_v(\omega) = | H(s=j\omega) |$$
$$ A_V(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$$
$$ A_{v_{dB}}(\omega) = 20 log\left(| H(j\omega) |\right)$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$
$$\omega = 2 \pi f$$
$$ 2\pi [rad/s] = 1 [Hz]$$
$$ 1 [Hz] = 60 [rpm]$$
Criterio de Barkhausen, con $A$ y $\beta$ calculados en $s=j\omega$:
$$ A \beta = 1$$

$$ V_{DS} = R_{DS(ON)} I_D$$
$$ I_D = k(V_{GS}-V_{GS(th)})^2 $$
$$V_{GS} < V_{GS(th)}$$
$$ V_{DS} < V_{GS}-V_{GS(th)}$$
$$ V_{DS} > V_{GS}-V_{GS(th)}$$

$$ \Delta I_{D} = g_{FS} \Delta V_{GS} $$

$$ \Delta I_{D} = g_{m} \Delta V_{GS} $$

$$ g_{FS} = 2k(V_{GS}-V_{GS(th)})  $$

$$ g_m = 2k(V_{GS}-V_{GS(th)})  $$

$$ k = \frac{g_{ _{FS}}^2}{4I_D}  $$