# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2024/02
## Prueba Escrita 2 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivolts, por lo que requiere amplificación para poder graficarse y ser procesada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =47\ k\Omega$, que el circuito que consume la señal amplificada tiene una resistencia de entrada $R_L= 20\ k\Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

   - Amplificador 1: $Z_i = 12\ k\Omega$, $Z_o = 200\ \Omega$, $A_{V_{NL}} = 10$
   - Amplificador 2: $Z_i = 120\ k\Omega$, $Z_o = 2\ k\Omega$, $A_{V_{NL}} = 10$

    1. Configuración 1: (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rl_rs.png" width="400">
       
       > $v_o = \frac{R_L}{Z_o+R_L} A_{V_{NL}} v_i  $ (+0.2pt)
       >
       > $v_o = \frac{R_L}{Z_o+R_L} A_{V_{NL}} \frac{Z_i}{Z_i+R_S}v_S$ (+0.2pt)
       >
       > $\therefore A_V = \frac{v_o}{v_S} = A_{V_{NL}} \frac{R_L}{Z_o+R_L} \frac{Z_i}{Z_i+R_S} = 10 \frac{20k}{20k + 200} \frac{12k}{12k + 47k} \approx 2$ (+0.1pt)

    1. Configuración 2: (0.75 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box.png" width="800">
       
       > Se utilizará la notación $Z_{i1}$, $Z_{o1}$ y $A_{V_{NL1}}$ para representar la impedancia de entrada, impedancia de salida y ganancia sin carga del amplificador 1, respectivamente, y $Z_{i2}$, $Z_{o2}$ y $A_{V_{NL2}}$ para representar la impedancia de entrada, impedancia de salida y ganancia sin carga del amplificador 2, respectivamente.
       >
       > $v_o = \frac{R_L}{Z_{o2}+R_L} A_{V_{NL2}} v_{i2}  $ (+0.2pt)
       >
       > $v_o = \frac{R_L}{Z_{o2}+R_L} A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} v_{i1}$ (+0.2pt)
       >
       > $v_o = \frac{R_L}{Z_{o2}+R_L} A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} A_{V_{NL1}} \frac{Z_{i1}}{Z_{i1}+R_S} v_S$ (+0.2pt)
       >
       > $\therefore A_V = A_{V_{NL1}} A_{V_{NL2}} \frac{R_L}{Z_{o2}+R_L} \frac{Z_{i2}}{Z_{i2}+Z_{o1}} \frac{Z_{i1}}{Z_{i1}+R_S} = 10*10 \frac{20k}{20k + 2k} \frac{120k}{120k + 200} \frac{12k}{12k + 47k} \approx 18.5$ (+0.15pt)
       
    1. Configuración 3: (0.75 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box2.png" width="800">
       
       > Se utilizará la notación $Z_{i1}$, $Z_{o1}$ y $A_{V_{NL1}}$ para representar la impedancia de entrada, impedancia de salida y ganancia sin carga del amplificador 1, respectivamente, y $Z_{i2}$, $Z_{o2}$ y $A_{V_{NL2}}$ para representar la impedancia de entrada, impedancia de salida y ganancia sin carga del amplificador 2, respectivamente.
       >
       > $v_o = \frac{R_L}{Z_{o1}+R_L} A_{V_{NL1}} v_{i2}  $ (+0.2pt)
       >
       > $v_o = \frac{R_L}{Z_{o1}+R_L} A_{V_{NL1}} \frac{Z_{i1}}{Z_{i1}+Z_{o2}} A_{V_{NL2}} v_{i1}$ (+0.2pt)
       >
       > $v_o = \frac{R_L}{Z_{o1}+R_L} A_{V_{NL1}} \frac{Z_{i1}}{Z_{i1}+Z_{o2}} A_{V_{NL2}} \frac{Z_{i2}}{Z_{i2}+R_S} v_S$ (+0.2pt)
       >
       > $\therefore A_V = A_{V_{NL1}} A_{V_{NL2}} \frac{R_L}{Z_{o1}+R_L} \frac{Z_{i1}}{Z_{i1}+Z_{o2}} \frac{Z_{i2}}{Z_{i2}+R_S} = 10*10 \frac{20k}{20k + 200} \frac{12k}{12k + 2k} \frac{120k}{120k + 47k} \approx  61$ (+0.15pt)

       > La configuración 3 es la que tiene mayor factor de amplificación

2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $aVL$ en función de $LA$, $LL$ y $RA$, con $R=3.9\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl2.png" width="400"> 

       > Aplicando corto circuito virtual a todos los amplificadores operacionales y denominando $V_1$ y $V_2$ los voltajes desconocidos: (+0.2pt)
       >
       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl2_annotated.png" width="400"> 
       >
       > En la parte superior del circuito, se forma un divisor resistivo entre LL, LA y $V_2$, por lo que se puede escribir:
       >
       > $LA = LL \frac{R}{R+R} + V_2 \frac{R}{R+R}$ (+0.2pt)
       >
       > $2 LA = LL + V_2$
       >
       > $V_2 = 2 LA - LL$ (ecuación 1)
       >
       > De la misma forma, en la parte inferior del circuito se forma un divisor de voltaje entre tierra, RA y $V_1$:
       >
       > $RA = V_1 \frac{2R}{2R+R}$ (+0.2pt)
       >
       > $ V_1 = \frac{3}{2} RA $ (ecuación 2)
       >
       > Finalmente, también hay un divisor de voltaje entre $V_1$, $V_2$ y $aVL$:
       >
       > $V_2 = V_1 \frac{2R}{2R+R} + aVL \frac{R}{2R+R} $ (+0.2pt)
       >
       > Reemplazando las ecuaciones 1 y 2:
       >
       > $ 2 LA - LL = \frac{3}{2} RA \frac{2}{3} + aVL \frac{1}{3} $ (+0.2pt)
       >
       > $ 2 LA - LL - RA = aVL \frac{1}{3} $
       >
       > $ aVL = 6 LA - 3 LL - 3 RA $
       >
       > En realidad, la derivación aVL se define como: $aVL_{real} = LA - \frac{RA + LL}{2}$. Por lo tanto la señal que el circuito obtiene es la derivación aVL amplificada por 6.


    2. Encontrar $aVR$ en función de $LA$, $LL$ y $RA$, con $R=47\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr2.png" width="400"> 

       > Aplicando LKC en el nodo $V_-$: (+0.4pt)
       >
       > $\frac{LA-V_-}{2R} + \frac{LL-V_-}{2R} = \frac{V_- - aVR}{2R}$
       >
       > $LA-V_- + LL-V_- = V_- - aVR$
       >
       > $LA + LL + aVR = 3V_- $
       >
       > $V_- = \frac{LA + LL + aVR}{3}$
       >
       > Aplicando divisor de voltaje en  $V_+$: (+0.4pt)
       >
       > $V_+ = \frac{2RA}{3}$
       >
       > Aplicando corto circuito virtual:
       >
       > $V_+ = V_-$ (+0.2pt)
       >
       > $\frac{2RA}{3} = \frac{LA + LL + aVR}{3}$
       >
       > $2RA = LA + LL + aVR$
       >
       > $aVR = 2RA - LA - LL$
       >
       > En realidad, la derivación aVR se define como: $aVR_{real} = RA - \frac{LA + LL}{2}$. Por lo tanto la señal que el circuito obtiene es la derivación aVR amplificada por 2.

3. Es muy común que la señal de ECG contenga ruido, y por lo tanto se apliquen filtros como el que se muestra a continuación para reducirlo. Asumiendo que $R_1=620\ \Omega$ ,$R_2= 4.3\ k\Omega$, $R_3 = 12\ k\Omega$, $C_1=0.22\ \mu F$ y $C_2 = 2.2\ n F$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/mfb_low_pass.png" width="400"> 

    1. La función de transferencia $H(s) = \frac{v_o(s)}{v_i(s)}$ (0.5pt)

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/mfb_low_pass_annotated.png" width="400"> 
      >
      > Aplicando corto circuito virtual:
      >
      > $V_-=V_+=0$
      >
      > Aplicando Ley de Ohm en la capacitancia $C_2$:
      >
      > $0-v_o=\frac{i_3}{C_2 s}$
      >
      > $\implies i_3 = - C_2 s v_o$ (ecuación 1)
      >
      > Aplicando Ley de Ohm a $R_2$:
      >
      > $v_x - 0 = R_2 i_3$
      >
      > Reemplazando ecuación 1:
      >
      > $v_x = - R_2 C_2 s v_o$ (ecuación 2)
      >
      > Aplicando LKC en $v_x$:
      >
      > $i_1 = i_2 + i_3 + i_4$
      >
      > Aplicando Ley de Ohm en cada componente que se conecta a $v_x$, y utilizando la ecuación 2:
      >
      > $\frac{v_i - v_x}{R_1} = \frac{v_x}{\frac{1}{C_1 s}} + (- C_2 s v_o) + \frac{v_x-v_o}{R_3}$
      >
      > $\frac{v_i - (- R_2 C_2 s v_o)}{R_1} = \frac{- R_2 C_2 s v_o}{\frac{1}{C_1 s}} - C_2 s v_o + \frac{- R_2 C_2 s v_o-v_o}{R_3}$
      >
      > $\frac{v_i}{R_1} = \frac{- R_2 C_2 s v_o}{R_1} - R_2 C_1 C_2 s^2 v_o - C_2 s v_o - v_o \frac{R_2 C_2 s +1}{R_3}$
      >
      > $v_i = - R_2 C_2 s v_o - R_1 R_2 C_1 C_2 s^2 v_o - R_1 C_2 s v_o - v_o \frac{R_1 R_2 C_2 s +R_1}{R_3}$
      >
      > $v_i = - v_o( R_2 C_2 s + R_1 R_2 C_1 C_2 s^2  + R_1 C_2 s  + \frac{R_1 R_2 C_2 s +R_1}{R_3})$
      >
      > $H(s) = \frac{v_o}{v_i} = \frac{-1}{R_2 C_2 s + R_1 R_2 C_1 C_2 s^2  + R_1 C_2 s  + \frac{R_1 R_2 C_2 s +R_1}{R_3}}$
      >
      > $H(s) = \frac{v_o}{v_i} = -\frac{\frac{R_3}{R_1}}{\frac{R_3}{R_1} R_2 C_2 s + R_3 R_2 C_1 C_2 s^2  + R_3 C_2 s  +  R_2 C_2 s + 1}$
      >
      > $H(s) = \frac{v_o}{v_i} = -\frac{\frac{R_3}{R_1}}{1 + (\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 s + R_2 R_3 C_1 C_2 s^2  }$
    1. La ganancia en dB en corriente contínua.(0.3 pt)
    
      > $A_v(\omega) = |H(j\omega)| = \left|-\frac{\frac{R_3}{R_1}}{1 + (\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 j\omega + R_2 R_3 C_1 C_2 (j\omega)^2  } \right|$
      >
      > $A_v(\omega) = \frac{\frac{R_3}{R_1}}{\left|1  - R_2 R_3 C_1 C_2 \omega^2 + (\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 \omega j \right| } $
      >
      > $A_v(\omega) = \frac{\frac{R_3}{R_1}}{\sqrt{(1  - R_2 R_3 C_1 C_2 \omega^2)^2 + ((\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 \omega)^2 } } $
      >
      > en DC, $\omega=0$:
      >
      > $A_v(0) = \frac{\frac{R_3}{R_1}}{\sqrt{(1  - 0)^2 + (0)^2 } } $
      >
      > $A_v(0) = \frac{R_3}{R_1} = \frac{12k}{620} \approx 19 $
      >
      > $A_{v_{dB}}(0) \approx 20 \log{19} \approx 25.6$
    1. La ganancia en dB conforme la frecuencia de la entrada tiende al infinito. (0.3 pt)
      >
      > $$\lim_{\omega\to\infty} A_v(\omega) = \lim_{\omega\to\infty}\frac{\frac{R_3}{R_1}}{\sqrt{(1  - R_2 R_3 C_1 C_2 \omega^2)^2 + ((\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 \omega)^2 } } $$
      >
      > $$\lim_{\omega\to\infty} A_v(\omega) = 0$$
      >
      > $$\lim_{\omega\to\infty}A_{v_{dB}}(\omega) = \lim_{\omega\to\infty}20 \log{ A_v(\omega)} = -\infty$$
    1. La ganancia maxima en dB (0.3 pt)
    
      > $A_v(\omega) = \frac{\frac{R_3}{R_1}}{\sqrt{(1  - R_2 R_3 C_1 C_2 \omega^2)^2 + ((\frac{R_3R_2}{R_1} + R_2+R_3 ) C_2 \omega)^2 } } $
      >
      > Reemplazando los valores de los componentes:
      >
      > $A_v(\omega) = \frac{\frac{12000}{620}}{\sqrt{(1  - 4300 *12000* 0.22*10^{-6}* 2.2*10^{-9} \omega^2)^2 + ((\frac{12000*4300}{620} + 4300+12000 ) 2.2*10^{-9} \omega)^2 } } $
      >
      > $A_v(\omega) = \frac{19.355}{\sqrt{(1  - 2.5*10^{-8} \omega^2)^2 + (2.2*10^{-4} \omega)^2 } } $
      >
      > $A_v(\omega) = \frac{19.355}{\sqrt{1  - 5*10^{-8} \omega^2 + 6.2*10^{-16}\omega^4 + 4.8*10^{-8} \omega^2 } } $
      >
      > $A_v(\omega) = \frac{19.355}{\sqrt{1  - 2*10^{-9} \omega^2 + 6.2*10^{-16}\omega^4} } $
      >
      > El denominador tiende a crecer conforme $\omega$ aumenta. Por lo tanto, el maximo de $A_{v}(\omega)$ se da cuando el denominador tiene su valor mínimo, que se puede encontrar derivando e igualando a cero:
      >
      > $\frac{d}{d\omega}(1  - 2*10^{-9} \omega^2 + 6.2*10^{-16}\omega^4) = 4*6.2*10^{-16}\omega^3-2*2*10^{-9} \omega = 0$
      >
      > $\implies 2.48*10^{-15}\omega^3-4*10^{-9} \omega = 0 $
      >
      > $\implies \omega(2.48*10^{-15}\omega^2-4*10^{-9} ) = 0 $
      >
      > $\omega=0$, o $\omega=\sqrt{\frac{4*10^{-9}}{2.48*10^{-15}}} \approx 1270$
      >
      > Probando ambos valores:
      >
      > $A_v(0) = \frac{19.355}{\sqrt{1}} = 19.355$
      >
      > $A_v(1270) \approx \frac{19.355}{\sqrt{0.998}} \approx 19.394$
      >
      > La ganancia maxima en dB es, por lo tanto:
      >
      > $A_{v_{dB},max} = 20\log{19.394} \approx 26\ dB$
      >
      > Se consideran 0.2 pts si se utilizó $A_v(0)$ en vez de $A_v(1270)$.
    1. Qué tipo de filtro está implementado. (0.3 pt)

      > Como la ganancia disminuye conforme $\omega$ aumenta, se trata de un filtro paso-baja.
    1. La(s) frecuencia(s) de corte en Hz. (0.3 pt)
       
       AYUDA: una ecuación de la forma $ay^4 + by^2 +c=0$ se conoce como una ecuación bicuadrada, y se puede resolver primero haciendo un cambio de variable $x = y^2$, luego resolviendo la ecuación del segundo grado $ax^2+bx+c=0$, y finalmente encontrando $y=\sqrt{x}$.
       
      > $A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$
      >
      > $\frac{19.355}{\sqrt{1  - 2*10^{-9} (2\pi f_c)^2 + 6.2*10^{-16}(2\pi f_c)^4}} = \frac{19.394}{\sqrt{2}}$
       >
       > $\sqrt{1  - 2*10^{-9} (2\pi f_c)^2 + 6.2*10^{-16}(2\pi f_c)^4} = 0.998\sqrt{2}$
       >
       > $1  - 4\pi^2*10^{-9} f_c^2 + 9.92\pi^4*10^{-15} f_c^4 - 0.996*2 = 0$
       >
       > $9.7*10^{-13}f_c^4 -3.9*10^{-8} f_c^2 -0.992= 0$
       >
       > haciendo la transformación de variables $x=f_c^2$,
       >
       > $9.7*10^{-13}x^2 -3.9*10^{-8} x -0.992= 0$
       >
       > Aplicando la fórmula $x = \frac{-b\pm \sqrt{b^2-4ac}}{2a}$:
       >
       > $x = \frac{-(-3.9*10^{-8})\pm \sqrt{(-3.9*10^{-8})^2-4*9.7*10^{-13}*(-0.992)}}{2*9.7*10^{-13}}$
       >
       > $x = \frac{3.9*10^{-8}\pm \sqrt{1.5*10^{-15}+3.85*10^{-12}}}{1.94*10^{-12}}$
       >
       > $x_1 \approx 10^6$
       >
       > $x_2 \approx -10^6$ (solución no válida porque $x=f_c^2$ es positivo)
       >
       > $\therefore x = 10^6$
       >
       > $\implies f_c^2 = 10^6$
       >
       > $\implies f_c \approx 1\ kHz$

# Fórmulas

Corto Circuito Virtual: $V_+ = V_-$
$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = | H(s=j\omega) |$$
$$ A_{v_{dB}}(\omega) = 20 log\left(| H(j\omega) |\right)$$
$$ A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$
$$1 [Hz] = 2\pi [rad/s]$$
$$ax^2+bx+c=0 \implies x = \frac{-b\pm \sqrt{b^2-4ac}}{2a}$$