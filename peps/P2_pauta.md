# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/01
## Prueba Escrita 2 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. El siguiente circuito implementa un filtro pasivo, con $R_1=3.3\ k\Omega$, $R_2=5.1\ k\Omega$ y $C_1=0.1\ \mu F$. Determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/transient_example4.png" width="200">

    Figura 1: Filtro pasivo

    1. El valor de $v_o$ en estado estacionario si $v_i$ se conecta a una fuente constante de 5 V en $t=0$. (0.5pt)
       > En estado estacionario $C_1$ se considera un circuito abierto, por lo que:
       >
       > $v_o = \frac{R_2}{R_1+R_2}v_i = \frac{5.1}{3-3+5.1} 5 \approx 3\ V$
    2. Cual es la constante de tiempo del circuito (0.5pt)
    3. Qué tipo de filtro está implementado (0.5pt)
    4. El valor de la(s) frecuencia(s) de corte en Hz (0.5pt)

3. El siguiente circuito implementa un filtro activo, con $R = 10\ k\Omega$, $C= 47\ nF$, $R_a = 3.3\ k\Omega$ y $R_b=2.2\ k\Omega$. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_bandpass_3.png" width="400"> 

    Figura 2: Filtro con amplificador operacional

    La función de transferencia del circuito es
       $H(s) = \frac{V_o(s)}{V_i(s)} = \frac{5RCs}{2+RCs+2R^2C^2s^2}$. 

    1. ¿Cual es el valor de $v_o$ en estado estacionario si $v_i$ se conecta a una fuente constante de 5 V en $t=0$? (0.5pt)
    2. ¿Cual es la constante de tiempo del circuito ? (0.5pt)
    3. ¿Qué tipo de filtro está implementado? (0.5pt)
    1. Calcule la ganancia del circuito en las siguientes frecuencias: (0.6pt)
        1. 100 Hz
        2. 300 Hz
        3. 1000 Hz
    1. Determine la(s) frecuencia(s) de corte en Hz. Puedes asumir que la ganancia maxima en frecuencia es 5. (0.9pt)
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. (1pt)

3. **Pregunta Extra, (+0.5 pts en la PEP 1)**: Para el siguiente circuito, determine  cuanta corriente fluye a través del LED cuando $v_i$ tiene los valores a continuación. Asuma que $ R_{21} = 100\ \Omega$, $ R_{22} = 47\ \Omega $, el LED es del color BLANCO y tiene un $ V_f = 4\ V $, y que el transistor tiene los siguientes parametros: $V_{GS(th)}=2.1\ V $, $ g_{ _{FS}} = 320\ mS $ (medido a 200 mA), $R_{DS(on)} = 3\ \Omega $.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/resistance_led_mosfet.png" width="200">

    1. $v_i = 2\ V$ 
    1. $v_i = 2.3\ V$ 
    1. $v_i = 2.6\ V$ 

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