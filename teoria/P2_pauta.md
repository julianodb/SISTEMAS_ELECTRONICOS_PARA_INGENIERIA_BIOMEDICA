# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/02
## Prueba Escrita 2 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. La Figura 1 muestra dos amplificadores de emisor común conectados en serie, mientras que la Figura 2 muestra su modelo AC. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_double.png" width="600">

    Figura 1: Dos amplificadores de emisor común conectados en serie.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_common_emitter_double.png" width="600">

    Figura 2: Modelo AC de dos amplificadores de emisor común conectados en serie.

    Datos:
    - $I_{C_Q} = 2.1\ mA$
    - $A_{V1} = A_{V2} = - \frac{R_C I_{C_Q}}{V_T} = -315$
    - $Z_{i1} = Z_{i2} = R_1 // R_2 = 2.5\ k\Omega$ 
    - $Z_{o1} = Z_{o2} = R_C = 3.9\ k\Omega$

    Determine: 

    1. La ganancia total del sistema ($A_{V_{TOTAL}} = \frac{v_{o2}}{v_{i1}}$) (0.7 pt)

        > $v_{o2} = A_{V2} v_{B2}  = A_{V2} v_{o1} $ (1) +0.3pt
        >
        > $v_{o1} = A_{V1} v_{B1} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} = A_{V1} v_{i1} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} $ (2) +0.3pt
        >
        > Reemplazando (2) en (1):
        >
        > $v_{o2} = A_{V2} A_{V1} v_{i1} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} $
        >
        > $\therefore A_{V_{TOTAL}} = \frac{v_{o2}}{v_{i1}} = A_{V2} A_{V1} \frac{Z_{i2}}{Z_{i2}+Z_{o1}}  $
        >
        > $A_{V_{TOTAL}} = (-315) (-315) \frac{2.5\ k\Omega}{2.5\ k\Omega+3.9\ k\Omega}  $ 
        >
        > $A_{V_{TOTAL}} = 38759.765625 \approx 39000$ (+0.1pt)

    2. Una forma de disminuir la pérdida de ganancia por la incompatibilidad de impedancias es disminuir el valor de $R_C$ (lo que disminuye $Z_{o1}$). Sin embargo, esto también afecta la ganancia de cada amplificador ($A_{V1}$ y $A_{V2}$). Calcule la nueva ganancia total del sistema si se reduce $R_C$ por la mitad ($R_C = 1.95\ k\Omega$) (0.7 pt)

        > $Z_{i2}' = Z_{i2} = 2.5\ k\Omega$ (+0.2pt)
        >
        > $ Z_{o1}' =  R_C' =  1.95\ k\Omega $ (+0.2pt)
        >
        > $ A_{V2}' = A_{V1}' = - \frac{R_C' I_{C_Q}}{V_T} = - \frac{1}{2}\frac{R_C I_{C_Q}}{V_T} = \frac{A_{V1}}{2} = - 157.5 $ (+0.2pt)
        >
        > $ A_{V_{TOTAL}} = A_{V2}' A_{V1}' \frac{Z_{i2}'}{Z_{i2}'+Z_{o1}'}  $
        >
        > $A_{V_{TOTAL}} = (-157.5) (-157.5) \frac{2.5\ k\Omega}{2.5\ k\Omega+1.95\ k\Omega}  $ 
        >
        > $A_{V_{TOTAL}} = 13936.0955 \approx 14000$ (+0.1pt)

    2. Para compensar la pérdida de ganancia de cada amplificador por la disminución de $R_C$, se puede cambiar $R_1$ y $R_2$ de tal forma a aumentar la corriente quiescente de colector ($I_{C_Q}$). El costo de hacerlo es que el circuito consume más energía. Calcule la nueva ganancia total del sistema si se reduce $R_C$ por la mitad ($R_C = 1.95\ k\Omega$) y al mismo tiempo se duplica $I_{C_Q}$ ($I_{C_Q} = 4.2\ mA$) (0.6 pt)

        > $Z_{i2}'' = Z_{i2} = 2.5\ k\Omega$ (+0.2pt)
        >
        > $ Z_{o1}'' =  R_C'' =  1.95\ k\Omega $ (+0.2pt)
        >
        > $ A_{V2}'' = A_{V1}'' = - \frac{R_C'' I_{C_Q}''}{V_T} = - \frac{1}{2}\frac{R_C 2 I_{C_Q}}{V_T} = - \frac{R_C I_{C_Q}}{V_T}= A_{V1} = - 315 $ (+0.2pt)
        >
        > $ A_{V_{TOTAL}} = A_{V2}'' A_{V1}'' \frac{Z_{i2}''}{Z_{i2}''+Z_{o1}''}  $
        >
        > $A_{V_{TOTAL}} = (-315) (-315) \frac{2.5\ k\Omega}{2.5\ k\Omega+1.95\ k\Omega}  $ 
        >
        > $A_{V_{TOTAL}} = 55744.3820 \approx 56000$ (+0.1pt)


3. La figura 4 muestra un circuito de amplificador de instrumentación con la salida conectada a un circuito con LED.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/instrumentation_amplifier_plus_led.png" width="400">

    Figura 4: Circuito de Amplificador de Instrumentación + LED

    Datos:
    - $R_1 = R_2 = R_3 = R_4 = 20\ k\Omega$
    - $R_5 = R_6 = 10\ k\Omega$
    - $R_G = 1\ k\Omega$
    - $R_B = 10\ k\Omega$
    - $R_L = 330\ \Omega$
    - $V_{CC} = 10\ V$
    - $V_f$ del LED $= 3\ V$
    - Características del transistor Q:
        - $\beta = 50$
        - $V_{CE_{SAT}} = 0.3\ V$
        - $V_{BE} \approx 0.7\ V$ cuando la unión base-emisor está polarizada en directa.

    Determine:

    1. La relación entre la salida del amplificador de instrumentación, $v_o$, y sus entradas $V_1$ y $V_2$. (0.4 pt)
    2. Considerando que la impedancia de entrada de cada amplificador operacional es $1\ G\Omega$, calcule la impedancia de entrada del sistema para la entrada diferencial $V_2 - V_1$ (es decir, la resistencia entre los terminales $V_2$ y $V_1$). (0.4 pt)
    1. En qué modo está funcionando el transistor Q cuando la corriente directa en el LED es 10 mA. (0.4 pt)
    1. Para que valor de $v_o$ la corriente en el LED es 10 mA. (0.4 pt)
    1. Si $V_1 = 1\ V$, a que valor de $V_2$ corresponde el valor de $v_o$ calculado en el ítem anterior. (0.4 pt)

4. Para el circuito de la Figura 5, asumiendo que $R_1=R_2=3.3\ k\Omega$ y $C_1=C_2=3.3\ nF$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_high_2.png" width="400"> 

    Figura 5: Circuito con topología Sallen-Key.

    1. La(s) frecuencia(s) de corte en Hz. (0.4 pt)
    1. La ganancia en dB en corriente contínua.(0.4 pt)
    1. La ganancia en dB para una entrada con frecuencia 50 Hz. (0.4 pt)
    1. La ganancia en dB para una entrada con frecuencia 100 kHz. (0.4 pt)
    1. Qué tipo de filtro está implementado. (0.4 pt)

# Fórmulas

Corto Circuito Virtual: $V_+ = V_-$
$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = || H(s=j\omega) ||$$
$$ A_{v_{dB}}(\omega) = 20 log\left(|| H(j\omega) ||\right)$$
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
