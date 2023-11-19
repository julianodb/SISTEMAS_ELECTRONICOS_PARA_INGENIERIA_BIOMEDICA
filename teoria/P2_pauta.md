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

        > $Z_{i2}'' = Z_{i2} = 2.5\ k\Omega$ (+0.15pt)
        >
        > $ Z_{o1}'' =  R_C'' =  1.95\ k\Omega $ (+0.15pt)
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

        > Si denominamos $V_{o1}$ la salida del amplificador con entrada $V_1$ y $V_{o2}$ la salida del amplificador con entrada $V_2$, tenemos:
        >
        > $ V_{o2} - V_{o1} = (V_2 - V_1) \frac{R_G + R_5 + R_6}{R_G}$ (1) (+0.1pt)
        >
        > Por otro lado, aplicando corto-circuito virtual al amplificador de salida:
        >
        > $ V_+ = V_-$  (+0.1pt)
        >
        > $ V_{o2} \frac{R_4}{R_4+R_5} = V_{o1} \frac{R_2}{R_2+R_1} + V_{o} \frac{R_1}{R_2+R_1}$  (+0.1pt)
        >
        > Como $R_1 = R_2 = R_3 = R_4$:
        >
        > $  \frac{V_{o2}}{2} =  \frac{V_{o1}}{2} +  \frac{V_{o}}{2}$
        >
        > $ V_o = V_{o2} - V_{o1} $ 
        >
        > Utilizando (1),
        >
        > $ V_o = (V_2 - V_1) \frac{R_G + R_5 + R_6}{R_G}$
        >
        > $ V_o = (V_2 - V_1) \frac{1\ k\Omega + 10\ k\Omega + 10\ k\Omega}{1\ k\Omega}$
        >
        > $ V_o = 21 (V_2 - V_1) $   (+0.1pt)
        >
    2. Considerando que la impedancia de entrada de cada amplificador operacional es $1\ G\Omega$, calcule la impedancia de entrada del sistema para la entrada diferencial $V_2 - V_1$ (es decir, la resistencia entre los terminales $V_2$ y $V_1$). (0.4 pt)
        > --------------------------------hay que dibujar el circuito
        > 
    1. En qué modo está funcionando el transistor Q cuando la corriente directa en el LED es 10 mA. (0.4 pt)
        >
        > $V_{CE} = V_{CC} - V_f - R_L I_f$ (+0.2pt)
        >
        > $V_{CE} = 10 - 3 - 330 * 0.01 = 3.7\ V$
        >
        > Como $V_{CE} > V_{CE_{SAT}}$, el transistor Q está en el modo activo (+0.2pt)

    1. Para que valor de $v_o$ la corriente en el LED es 10 mA. (0.4 pt)
        >
        > Como Q está en el modo activo, $I_C = \beta I_B $ (+0.15pt)
        >
        > $0.01 = 50 I_B $
        >
        > $I_B = 200\ \mu A $
        >
        > $v_o - I_B R_B - V_{BE} = 0$ (+0.15pt)
        >
        > $v_o =  I_B R_B + V_{BE} = 0.0002 * 10000$ + 0.7
        >
        > $v_o = 2.7\ V$ (+0.1pt)

    1. Si $V_1 = 1\ V$, a que valor de $V_2$ corresponde el valor de $v_o$ calculado en el ítem anterior. (0.4 pt)

        > $ V_o = 21 (V_2 - V_1) $
        >
        > $ V_2 = V_o / 21 + V_1 = 2.7 / 21 + 1 $
        >
        > $V_2 = 1.12857 \approx 1.13\ V$ (+0.4 pt)

4. Para el circuito de la Figura 5, asumiendo que $R_1=R_2=3.3\ k\Omega$ y $C_1=C_2=3.3\ nF$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_high_2.png" width="400"> 

    Figura 5: Circuito con topología Sallen-Key.

    1. La(s) frecuencia(s) de corte en Hz. (0.4 pt)
        >
        > Corto circuito virtual: $V_+ = V_- = v_o$
        >
        > Observando $C_2$ y $R_2$, se puede deducir que la tensión entre $C_1$ y $C_2$ es:
        >
        > $v_x = v_o \frac{1/C_2 s + R_2}{R_2} = v_o \frac{1+ R_2 C_2 s}{R_2 C_2 s}$ (1)
        >
        > Aplicando LKC en el mismo punto:
        >
        > $ (v_i - v_x) C_1 s = \frac{v_o}{R_2} + \frac{v_x - v_o}{R_1}$
        >
        > $ v_i C_1 s = v_x C_1 s + \frac{v_o}{R_2} + \frac{v_x - v_o}{R_1}$
        >
        > $ v_i C_1 s = v_x (C_1 s + \frac{1}{R_1}) + v_o (\frac{1}{R_2} - \frac{1}{R_1})$
        >
        > $ v_i C_1 s = v_x (\frac{R_1 C_1 s + 1}{R_1}) + v_o (\frac{R_1-R_2}{R_1 R_2})$
        >
        > Reemplazando (1)
        >
        > $ v_i C_1 s = v_o \frac{1+ R_2 C_2 s}{R_2 C_2 s} (\frac{R_1 C_1 s + 1}{R_1}) + v_o (\frac{R_1-R_2}{R_1 R_2})$
        >
        > $ v_i C_1 s = v_o( \frac{(1+ R_2 C_2 s)(R_1 C_1 s + 1)}{R_1 R_2 C_2 s} + \frac{R_1-R_2}{R_1 R_2} )$
        >
        > $ v_i C_1 s = v_o \frac{1+ R_2 C_2 s + R_1 C_1 s + R_1 R_2 C_1 C_2 s^2 + R_1C_2 s - R_2 C_2 s}{R_1 R_2 C_2 s} $
        >
        > $ v_i = v_o \frac{1+  R_1 C_1 s + R_1C_2 s + R_1 R_2 C_1 C_2 s^2 }{R_1 R_2 C_1 C_2 s^2} $
        >
        > $ \therefore H(s) = \frac{v_o}{v_i} = \frac{R_1 R_2 C_1 C_2 s^2}{1+  R_1 C_1 s + R_1C_2 s + R_1 R_2 C_1 C_2 s^2 } $
        >
        > Como $R_1=R_2$ y $C_1=C_2$:
        >
        > $ H(s) = \frac{R_1^2 C_1^2 s^2}{1+  2 R_1 C_1 s + R_1^2 C_1^2 s^2 } $
        >
        > La ganancia en frecuencia es, por lo tanto:
        >
        > $A_v(\omega) = || H(s=j\omega) || = || \frac{-R_1^2 C_1^2 \omega^2}{1+  2 R_1 C_1 j \omega - R_1^2 C_1^2 \omega^2 } || $
        >
        > $A_v(\omega) = \frac{R_1^2 C_1^2 \omega^2}{\sqrt{(1- R_1^2 C_1^2 \omega^2)^2+  (2 R_1 C_1 \omega)^2 }}$
        >
        > $A_v(\omega) = \frac{R_1^2 C_1^2 \omega^2}{\sqrt{R_1^4 C_1^4 \omega^4 - 2 R_1^2 C_1^2 \omega^2 + 1+  4 R_1^2 C_1^2 \omega^2 }}$
        >
        > $A_v(\omega) = \frac{R_1^2 C_1^2 \omega^2}{\sqrt{R_1^4 C_1^4 \omega^4 + 2 R_1^2 C_1^2 \omega^2 + 1 }}$
        >
        > Se observa que el denominador es estrictamente mayor a $ R_1^2 C_1^2 \omega^2 $, lo que hace con que $A_v(\omega) < 1$
        >
        > Por otro lado, $$\lim_{\omega \to \infty} A_v(\omega) = 1$$
        >
        > Por lo tanto, $A_{V_{MAX}} = 1$
        >
        > Se calcula la frecuencia de corte:
        >
        > $A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$
        >
        > $A_v(2\pi f_c) = \frac{1}{\sqrt{2}}$
        >
        > $\frac{R_1^2 C_1^2 (2\pi f_c)^2}{\sqrt{R_1^4 C_1^4 (2\pi f_c)^4 + 2 R_1^2 C_1^2 (2\pi f_c)^2 + 1 }} = \frac{1}{\sqrt{2}}$
        >
        > $\sqrt{2} R_1^2 C_1^2 (2\pi f_c)^2 = \sqrt{R_1^4 C_1^4 (2\pi f_c)^4 + 2 R_1^2 C_1^2 (2\pi f_c)^2 + 1 }$
        >
        > $2 R_1^4 C_1^4 (2\pi f_c)^4 = R_1^4 C_1^4 (2\pi f_c)^4 + 2 R_1^2 C_1^2 (2\pi f_c)^2 + 1 $
        >
        > $R_1^4 C_1^4 (2\pi f_c)^4 - 2 R_1^2 C_1^2 (2\pi f_c)^2 - 1 = 0$
        >
        > $R_1^2 C_1^2 (2\pi f_c)^2 = \frac{2\pm\sqrt{4+4}}{2} = \frac{2\pm2\sqrt{2}}{2} = 1\pm\sqrt{2}$
        >
        > El lado izquierdo es positivo, por lo tanto:
        >
        > $R_1^2 C_1^2 (2\pi f_c)^2 = 1+\sqrt{2}$
        >
        > $R_1 C_1 (2\pi f_c) = \sqrt{1+\sqrt{2}}$
        >
        > $ f_c = \frac{\sqrt{1+\sqrt{2}}}{2\pi R_1 C_1} = \frac{\sqrt{1+\sqrt{2}}}{2\pi 3.3* 3.3 * 10^{-6}}$
        >
        > $ f_c = 22708 \approx 22.7\ k Hz$

    1. La ganancia en dB en corriente contínua.(0.4 pt)
        >
        > $A_v(0) = \frac{R_1^2 C_1^2 0^2}{\sqrt{R_1^4 C_1^4 0^4 + 2 R_1^2 C_1^2 0^2 + 1 }} = 0$
        > 
        > $A_{v_{dB}}(0) = 20 log(0)  = - \infty$
    1. La ganancia en dB para una entrada con frecuencia 50 Hz. (0.4 pt)
        >
        > $A_v(2\pi 50) = \frac{R_1^2 C_1^2 (2\pi 50)^2}{\sqrt{R_1^4 C_1^4 (2\pi 50)0^4 + 2 R_1^2 C_1^2 (2\pi 50)0^2 + 1 }} = 0.000011704$
        > 
        > $A_{v_{dB}}(0) = 20 log(0.000011704) \approx - 98$
    1. La ganancia en dB para una entrada con frecuencia 100 kHz. (0.4 pt)
        >
        > $A_v(2\pi 100000) = \frac{R_1^2 C_1^2 (2\pi 100000)^2}{\sqrt{R_1^4 C_1^4 (2\pi 50)0^4 + 2 R_1^2 C_1^2 (2\pi 100000)0^2 + 1 }} = 0.9791$
        > 
        > $A_{v_{dB}}(0) = 20 log(0.9791) = -0.1836 \approx 0$
    1. Qué tipo de filtro está implementado. (0.4 pt)
        >
        > $A_V(\omega)$ es una función creciente. Por lo tanto, el filtro es del tipo paso-alta

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
