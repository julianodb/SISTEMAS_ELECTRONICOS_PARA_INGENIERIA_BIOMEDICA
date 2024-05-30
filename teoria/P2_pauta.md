# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2024/01
## Prueba Escrita 2 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivolts, por lo que requiere amplificación para poder graficarse y ser procesada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =56\ k\Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

    1. Configuración 1: $Z_i = 10\ k\Omega$, $Z_o = 100\ \Omega$, $A_{V_{NL}} = 6$. (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs.png" width="400">

       > $v_o = A_{V_{NL}} v_i$
       >
       > $v_o = A_{V_{NL}} \frac{Z_i}{Z_i+R_S}v_S$
       >
       > $\therefore A_V = \frac{v_o}{v_S} = A_{V_{NL}} \frac{Z_i}{Z_i+R_S} = 6 \frac{10k}{10k + 56k} \approx 0.91$

    1. Configuración 2: $Z_{i1} = 10\ k\Omega$, $Z_{o1} = 100\ \Omega$, $A_{V_{NL1}} = 6$, $Z_{i2} = 10\ k\Omega$, $Z_{o2} = 100\ \Omega$, $A_{V_{NL2}} = 6$. (0.75 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_double.png" width="800">

       > $v_o = A_{V_{NL2}} v_{i2}$
       >
       > $v_o = A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} v_{i1}$
       >
       > $v_o = A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} \frac{Z_{i1}}{Z_{i1}+R_S} v_S$
       >
       > $\therefore A_V = A_{V_{NL1}} A_{V_{NL2}} \frac{Z_{i1}}{Z_{i1}+R_S} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} = 6*6 \frac{10k}{10k + 56k} \frac{10k}{10k + 100} \approx 5.4 $
       
    1. Configuración 3: $Z_{i1} = 10\ k\Omega$, $Z_{o1} = 100\ \Omega$, $A_{V_{NL1}} = 6$, $Z_{i2} = 1\ k\Omega$, $Z_{o2} = 1\ k\Omega$, $A_{V_{NL2}} = 20$. (0.75 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_double.png" width="800">

       > $v_o = A_{V_{NL2}} v_{i2}$
       >
       > $v_o = A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} v_{i1}$
       >
       > $v_o = A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} \frac{Z_{i1}}{Z_{i1}+R_S} v_S$
       >
       > $\therefore A_V = A_{V_{NL1}} A_{V_{NL2}} \frac{Z_{i1}}{Z_{i1}+R_S} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} = 6*20 \frac{10k}{10k + 56k} \frac{1k}{1k + 100} \approx 16.53 $
       
2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $aVR$ en función de $RA$, $LL$ y $LA$, con $R=10\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr.png" width="400"> 

       > Aplicando corto circuito virtual a todos los amplificadores operacionales y denominando $V_1$ y $V_2$ los voltajes desconocidos:
       >
       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr_annotated.png" width="400"> 
       >
       > En la parte superior del circuito, se forma un divisor resistivo entre LL, RA y $V_2$, por lo que se puede escribir:
       >
       > $RA = LL \frac{R}{R+R} + V_2 \frac{R}{R+R}$
       >
       > $2 RA = LL + V_2$
       >
       > $V_2 = 2 RA - LL$ (ecuación 1)
       >
       > De la misma forma, en la parte inferior del circuito se forma un divisor de voltaje entre tierra, LA y $V_1$:
       >
       > $LA = V_1 \frac{R}{R+R}$
       >
       > $ V_1 = 2 LA $ (ecuación 2)
       >
       > Finalmente, también hay un divisor de voltaje entre $V_1$, $V_2$ y $aVR$:
       >
       > $V_2 = V_1 \frac{R}{R+R} + aVR \frac{R}{R+R} $
       >
       > Reemplazando las ecuaciones 1 y 2:
       >
       > $ 2 RA - LL = 2 LA \frac{1}{2} + aVR \frac{1}{2} $
       >
       > $ 2 RA - LL - LA = aVR \frac{1}{2} $
       >
       > $ aVR = 4 RA - 2 LL - 2 LA $
       >
       > En realidad, la derivación aVR se define como: $aVR_{real} = RA - \frac{LA + LL}{2}$. Por lo tanto la señal que el circuito obtiene es la derivación aVR amplificada por 4.

    2. Encontrar $aVL$ en función de $RA$, $LL$ y $LA$, con $R=20\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl.png" width="400"> 

       > Aplicando LKC en el nodo $V_-$:
       >
       > $\frac{RA-V_-}{2R} + \frac{LL-V_-}{2R} = \frac{V_- - aVL}{R}$
       >
       > $RA-V_- + LL-V_- = 2V_- - 2aVL$
       >
       > $RA + LL + 2aVL = 4V_- $
       >
       > $V_- = \frac{RA + LL + 2aVL}{4}$
       >
       > Aplicando divisor de voltaje en  $V_+$:
       >
       > $V_+ = \frac{LA}{2}$
       >
       > Aplicando corto circuito virtual:
       >
       > $V_+ = V_-$
       >
       > $\frac{LA}{2} = \frac{RA + LL + 2aVL}{4}$
       >
       > $2LA = RA + LL + 2aVL$
       >
       > $aVL = LA - \frac{RA + LL}{2}$

3. Es muy común que la señal de ECG contenga ruido, y por lo tanto se apliquen filtros como el que se muestra a continuación para reducirlo. Asumiendo que $R_1=10\ k\Omega$ ,$R_2= 2 R_1 = 20\ k\Omega$, $C_1=C_2=10\ nF$ y $R_a=R_b=10\ k\Omega$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_low_2_with_gain.png" width="400"> 

    > Encontrando la función de transferencia $H(s) = \frac{v_o}{v_i}$:
    >
    >Como $R_a = R_b$,
    >
    > $V_- = \frac{v_o}{2}$
    >
    > Además, aplicando corto circuito virtual:
    >
    > $V_+ = V_- = \frac{v_o}{2}$
    >
    > Si llamamos $v_x$ el voltaje entre $R_1$ y $R_2$, podemos utilizar el divisor de voltaje formado por $R_2$ y $C_2$ para escribirlo en función a $v_o$:
    >
    > $V_+ = \frac{v_o}{2} = \frac{1/C_2s}{1/C_2s + R_2} v_x $
    >
    > $v_x = \frac{1 + R_2C_2 s}{2} v_o$
    >
    > Finalmente, aplicando LKC en el nodo $v_x$:
    >
    > $\frac{v_i-v_x}{R_1} + \frac{v_o-v_x}{1/C_1s} = \frac{v_o C_2 s}{2}$
    >
    > Reemplazando $v_x$:
    >
    > $\frac{v_i-\frac{1 + R_2C_2 s}{2} v_o}{R_1} + \frac{v_o-\frac{1 + R_2C_2 s}{2} v_o}{1/C_1s} = \frac{v_o C_2 s}{2}$
    >
    > multiplicando por $2 R_1$
    >
    > $2v_i - (1+R_2C_2s)v_o + 2 R_1C_1s v_o - R_1C_1s(1+R_2C_2s) v_o = R_1C_2 s v_o$
    > 
    > $2 v_i = (R_1C_2s + 1 + R_2C_2 s - 2R_1C_1 s + R_1C_1 s + R_1R_2C_1C_2s^2) v_o$
    >
    > Finalmente:
    >
    > $H(s) = \frac{v_o}{v_i} = \frac{2}{ 1 + R_1C_2s+ R_2C_2 s - R_1C_1 s + R_1R_2C_1C_2s^2}$
    >
    > Reemplazando $R_2 = 2 R_1$ y $C_2 = C_1$:
    >
    > $H(s) = \frac{v_o}{v_i} = \frac{2}{ 1 + R_1C_1s+ 2 R_1C_1 s - R_1C_1 s + 2 R_1R_1C_1C_1s^2}$
    >
    > $H(s) = \frac{v_o}{v_i} = \frac{2}{ 1 + 2 R_1C_1 s + 2 (R_1C_1s)^2}$

    1. La ganancia en dB en corriente contínua.(0.4 pt)
       
       > La ganancia en función de la frecuencia es:
       >
       > $ A_v(\omega) = | H(s=j\omega) | = | \frac{2}{ 1 + 2 R_1C_1 j \omega + 2 (R_1C_1j \omega)^2}|$
       >
       > $ A_v(\omega) = | \frac{2}{ 1 - 2 (R_1C_1 \omega)^2 + 2 R_1C_1 \omega j}|$
       >
       > $ A_v(\omega) = \frac{2}{\sqrt{(1 - 2 (R_1C_1 \omega)^2)^2 + (2 R_1C_1 \omega)^2}}$
       >
       > $ A_v(\omega) = \frac{2}{\sqrt{1 - 4 (R_1C_1 \omega)^2 + 4 (R_1C_1 \omega)^4 + 4 (R_1C_1 \omega)^2}}$
       >
       > $ A_v(\omega) = \frac{2}{\sqrt{1 + 4 (R_1C_1 \omega)^4 }}$
       >
       > La ganancia en corriente continua es:
       >
       > $A_{v}(0) = \frac{2}{\sqrt{1 + 4 (R_1C_1 0)^4 }} = 2$
       >
       > La ganancia en dB en corriente continua es, por lo tanto:
       >
       > $A_{v_{dB}}(0) = 20 log\left(A_{v}(0)\right) = 20 log\left(2\right) \approx 6.02$
    1. La ganancia en dB para una entrada con frecuencia 100 kHz. (0.4 pt)
       
       > La ganancia para una entrada con frecuencia 100 kHz es:
       >
       > $A_{v}(2\pi 100.000) = \frac{2}{\sqrt{1 + 4 (R_1C_1 2\pi 100.000)^4 }} = \frac{2}{\sqrt{1 + 4 (10.000\ 10^{-8} 2\pi 100.000)^4 }}$
       >
       > $A_{v}(2\pi 100.000) = \frac{2}{\sqrt{1 + 4 (20\pi)^4 }} \approx 0.00025$
       >
       > La ganancia en dB es, por lo tanto:
       >
       > $A_{v_{dB}}(2\pi 100.000) = 20 log\left(A_{v}(2\pi 100.000)\right) \approx 20 log\left(0.00025\right) \approx -71.93$
    1. La ganancia maxima en dB (0.4 pt)
       
       > Como la función $A_v(\omega) = \frac{2}{\sqrt{1 + 4 (R_1C_1 \omega)^4 }}$ es monótonamente decreciente, su valor maximo se dá con el valor de $\omega$ minimo. Es decir,
       >
       > $max\{A_{v_{dB}}\} = A_{v_{dB}}(0) \approx 6.02$ 
    1. Qué tipo de filtro está implementado. (0.4 pt)
       
       > Como la función $A_v(\omega) = \frac{2}{\sqrt{1 + 4 (R_1C_1 \omega)^4 }}$ es monótonamente decreciente, la ganancia disminuye conform $\omega$ aumenta. Es decir, se trata de un filtro paso-baja.
    1. La(s) frecuencia(s) de corte en Hz. (0.4 pt)

       > Para encontrar la frecuencia de corte hay que igualar la ganancia a la ganancia maxima sobre $\sqrt{2}$:
       >
       > $A_v(\omega_c) = \frac{A_{v_{max}}}{\sqrt{2}}$
       >
       > $\frac{2}{\sqrt{1 + 4 (R_1C_1 \omega_c)^4 }} = \frac{2}{\sqrt{2}}$
       >
       > $1 + 4 (R_1C_1 \omega_c)^4 = 2$
       >
       > $ (R_1C_1 \omega_c)^4 = \frac{1}{4}$
       >
       > $ \omega_c = \frac{1}{R_1C_1 \sqrt{2}}$
       >
       > Y para encotnrar la frecuencia de corte en Hz:
       >
       > $f_c = \frac{\omega_c}{2\pi} =\frac{1}{2\pi R_1C_1 \sqrt{2}} $
       >
       > $f_c =\frac{1}{2\pi 10.000\ 10^{-8} \sqrt{2}} $
       >
       > $f_c =\frac{1}{2\pi 10^{-4} \sqrt{2}} \approx 1125 Hz$

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
