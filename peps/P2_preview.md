# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/01
## Guía Prueba Escrita 2

3. El siguiente circuito implementa un filtro activo, con $R_1=R_2 = 100\ k\Omega$, $C_1=C_2= 0.1\ \mu F$, $R_a = 10\ k\Omega$ y $R_b=5.1\ k\Omega$. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_low_2_with_gain.png" width="400"> 

    Figura 2: Filtro con amplificador operacional

    La función de transferencia del circuito es
       $H(s) = \frac{V_o(s)}{V_i(s)} = \frac{151}{51+2RCs+51R^2C^2s^2}$. 

    1. ¿Cual es el valor de $v_o$ en estado estacionario si $v_i$ se conecta a una fuente constante de 5 V en $t=0$? (0.5pt)
    2. ¿Cual es la constante de tiempo del circuito ? (0.5pt)
    3. ¿Qué tipo de filtro está implementado? (0.5pt)
    1. Calcule la ganancia del circuito en las siguientes frecuencias: (0.6pt)
        1. 10 Hz
        2. 30 Hz
        3. 100 Hz
    1. Determine la(s) frecuencia(s) de corte en Hz. Puedes asumir que la ganancia maxima en frecuencia es 75.5. (0.9pt)
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. (1pt)

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