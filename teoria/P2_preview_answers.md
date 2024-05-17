# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2024/01
## Guía de Ejercícios para la Prueba Escrita 2 - Respuestas

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivolts, por lo que requiere amplificación para poder graficarse y ser procesada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =56\ k\Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

    1. Configuración 1: $Z_i = 100\ k\Omega$, $Z_o = 1\ k\Omega$, $A_{V_{NL}} = 20$. (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs.png" width="400">

       > $A_V = \frac{v_o}{v_S} \approx 12.82$
       
    1. Configuración 3: $Z_{i1} = 100\ k\Omega$, $Z_{o1} = 1\ k\Omega$, $A_{V_{NL1}} = 20$, $Z_{i2} = 100 \Omega$, $Z_{o2} = 100 \Omega$, $A_{V_{NL2}} = 10$. (0.75 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_double.png" width="800">
       
       > $A_V = \frac{v_o}{v_S} \approx 64.1$

3. Es muy común que la señal de ECG contenga ruido, y por lo tanto se apliquen filtros como el que se muestra a continuación para reducirlo. Asumiendo que $R_1=270\ k\Omega$ ,$R_2= 15\ k\Omega$, $C_1=C_2=10\ \mu F$, $R_a=1.2\ k\Omega$ y $R_b=2.7\ k\Omega$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_high_2_with_gain.png" width="400"> 

    Figura 5: Circuito con topología Sallen-Key.

    1. La ganancia en dB en corriente contínua.(0.4 pt)

        > $A_{v_{dB}}(0) = -\infty$
    1. La ganancia en dB para una entrada con frecuencia 25 Hz. (0.4 pt)

        > $A_{v_{dB}}(25\ Hz) \approx 3.16\ dB$
    1. La ganancia maxima en dB (0.4 pt)

        > $max (A_{v_{dB}}) \approx 3.19\ dB$
    1. Qué tipo de filtro está implementado. (0.4 pt)

        > filtro paso-alta.
    1. La(s) frecuencia(s) de corte en Hz. (0.4 pt)

        > $f_c \approx 2.1\ Hz$

# Fórmulas

Corto Circuito Virtual: $V_+ = V_-$
$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = | H(s=j\omega) |$$
$$ A_{v_{dB}}(\omega) = 20 log\left(| H(j\omega) |\right)$$
$$ A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$

$$ V_T = \frac{kT}{q}$$
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
