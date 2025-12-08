# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2025/02
## Prueba Escrita 1 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivolts, por lo que requiere amplificación para poder graficarse y ser procesada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =47\ k\Omega$, que el circuito que consume la señal amplificada tiene una resistencia de entrada $R_L= 1\ k\Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

   - Amplificador 1: $R_i = 10\ k\Omega$, $R_o = 100\ \Omega$, $A_{V_{NL}} = 8$
   - Amplificador 2: $R_i = 200\ k\Omega$, $R_o = 20\ k\Omega$, $A_{V_{NL}} = 12$

    1. Configuración 1: (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box.png" width="800">

       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_double_2025_02_a.png" width="800">
       > 
       > Para el amplificador 1: (+0.2pt)
       >
       > $v_{o1} = A_{V_{NL1}} \frac{R_{i2}}{R_{i2}+R_{o1}} \frac{R_{i1}}{R_S+R_{i1}} v_S$
       >
       > Para el amplificador 2: (+0.2pt)
       >
       > $v_{o} = A_{V_{NL2}} \frac{R_{L}}{R_{L}+R_{o2}} v_{i2}$
       >
       > Como $v_{o1} = v_{i2}$: (+0.1pt)
       >
       > $v_{o} = A_{V_{NL2}} \frac{R_{L}}{R_{L}+R_{o2}} A_{V_{NL1}} \frac{R_{i2}}{R_{i2}+R_{o1}} \frac{R_{i1}}{R_S+R_{i1}} v_S $
       >
       > Y, por lo tanto:
       >
       > $A_V = \frac{v_o}{v_S} = A_{V_{NL2}} \frac{R_{L}}{R_{L}+R_{o2}} A_{V_{NL1}} \frac{R_{i2}}{R_{i2}+R_{o1}} \frac{R_{i1}}{R_S+R_{i1}} $
       >
       > $A_V = 12 \frac{1k}{1k+20k} 8 \frac{200k}{200k+100} \frac{10k}{47k+10k} \approx 0.8 $
       
    1. Configuración 2: (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box2.png" width="800">

       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_double_2025_02_b.png" width="800">
       > 
       > Para el amplificador 2: (+0.2pt)
       >
       > $v_{o1} = A_{V_{NL2}} \frac{R_{i1}}{R_{i1}+R_{o2}} \frac{R_{i2}}{R_S+R_{i2}} v_S$
       >
       > Para el amplificador 1: (+0.2pt)
       >
       > $v_{o} = A_{V_{NL1}} \frac{R_{L}}{R_{L}+R_{o1}} v_{i2}$
       >
       > Como $v_{o1} = v_{i2}$: (+0.1pt)
       >
       > $v_{o} = A_{V_{NL1}} \frac{R_{L}}{R_{L}+R_{o1}} A_{V_{NL2}} \frac{R_{i1}}{R_{i1}+R_{o2}} \frac{R_{i2}}{R_S+R_{i2}} v_S $
       >
       > Y, por lo tanto:
       >
       > $A_V = \frac{v_o}{v_S} = A_{V_{NL1}} \frac{R_{L}}{R_{L}+R_{o1}} A_{V_{NL2}} \frac{R_{i1}}{R_{i1}+R_{o2}} \frac{R_{i2}}{R_S+R_{i2}} $
       >
       > $A_V = 8 \frac{1k}{1k+100} 12 \frac{10k}{10k+20k} \frac{200k}{47k+200k} \approx 23.6 $

   > $\therefore $ La configuración 2 permite amplificar más la señal de ECG

2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $aVL$ en función de $LA$, $LL$ y $RA$, con $R=6.8\ k\Omega$ (0.8 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl.png" width="400"> 

       > Aplicando LKC en el nodo $V_-$: (+0.3pt)
       >
       > $\frac{RA-V_-}{2R} + \frac{LL-V_-}{2R} = \frac{V_- - aVL}{R}$
       >
       > $RA-V_- + LL-V_- = 2V_- - 2aVL$
       >
       > $RA + LL + 2aVL = 4V_- $
       >
       > $V_- = \frac{RA + LL + 2aVL}{4}$
       >
       > Aplicando divisor de voltaje en  $V_+$: (+0.3pt)
       >
       > $V_+ = \frac{LA}{2}$
       >
       > Aplicando corto circuito virtual:
       >
       > $V_+ = V_-$ (+0.2pt)
       >
       > $\frac{LA}{2} = \frac{RA + LL + 2aVL}{4}$
       >
       > $2LA = RA + LL + 2aVL$
       >
       > $aVL = LA - \frac{RA + LL}{2}$
       >
    2. Encontrar $aVR$ en función de $LA$, $LL$ y $RA$, con $R=10\ k\Omega$ (0.8 pt)
    
       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr3.png" width="400"> 
         
       > Aplicando corto circuito virtual a todos los amplificadores operacionales y denominando $V_1$ y $V_2$ los voltajes desconocidos: (+0.2pt)
       >
       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr3_annotated.png" width="400"> 
       >
       > En la parte superior del circuito, se forma un divisor resistivo entre LL, RA y $V_2$, por lo que se puede escribir:
       >
       > $RA = LL \frac{R}{R+R} + V_2 \frac{R}{R+R}$ (+0.15pt)
       >
       > $2 RA = LL + V_2$
       >
       > $V_2 = 2 RA - LL$ (ecuación 1)
       >
       > De la misma forma, en la parte inferior del circuito se forma un divisor de voltaje entre tierra, LA y $V_1$:
       >
       > $LA = V_1 \frac{3R}{3R+R}$ (+0.15pt)
       >
       > $ V_1 = \frac{4}{3} LA $ (ecuación 2)
       >
       > Finalmente, también hay un divisor de voltaje entre $V_1$, $V_2$ y $aVR$:
       >
       > $V_2 = V_1 \frac{3R}{3R+R} + aVR \frac{R}{3R+R} $ (+0.15pt)
       >
       > Reemplazando las ecuaciones 1 y 2:
       >
       > $ 2 RA - LL = \frac{4}{3} LA \frac{3}{4} + aVR \frac{1}{4} $ (+0.15pt)
       >
       > $ 2 RA - LL - LA = aVR \frac{1}{4} $
       >
       > $ aVR = 8 RA - 4 LL - 4 LA $
       >
       > En realidad, la derivación aVR se define como: $aVR_{real} = RA - \frac{LA + LL}{2}$. Por lo tanto la señal que el circuito obtiene es la derivación aVR amplificada por 8.

3. Es muy común que la señal de ECG contenga un valor DC que no se utiliza para su análisis. Una de las formas de eliminar el valor DC (línea de base) es utilizando el circuito a continuación. $v_s$ y $R_S$ son el circuito equivalente de Thevenin del electrodo (sensor) de ECG. Asumiendo que $v_s$ es un escalón de 5 V, $R_S=47\ k\Omega$ ,$R_1= 100\ k\Omega$ y $C=0.22\ \mu F$, determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sensor_active_high_pass.png" width="400"> 

    1. El valor de $v_o$ en estado estacionario (0.5 pt)

       > Como capacitores actuan como circuitos abiertos en DC, basta desconectar el capacitor y resolver el circuito. (+0.2pt)
       >
       > En el nodo $V_-$ sólo estaría conectada  la resistencia $R_1$ y, asumiendo un amp op ideal, esto significa que no fluye corriente en este nodo. Por lo tanto, la corriente en $R_1$ es cero. Si la corriente en $R_1$ es cero, la caída de tensión también es cero: (+0.1pt)
       >
       > $V_{R_1} = v_o - V_- = R_1 I = 0$
       >
       > Además, como hay retroalimentación negativa, (+0.2pt)
       >
       > $V_+ = V_- = 0$
       >
       > Por lo tanto:
       >
       > $v_o - V_- = 0$
       >
       > $v_o = 0$
    1. La(s) constante(s) de tiempo del sistema (0.8 pt)

       > Reemplazando $C$ por una resistencia con valor $\frac{1}{Cs}$: (+0.2pt)
       >
       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/sensor_active_high_pass_laplace.png" width="400"> 
       >
       > Como la corriente que entre en el nodo $V_-$ por la izquierda es igual a la corriente que sale por $R_1$, podemos escribir: (+0.2pt)
       >
       > $\frac{V_S-V_-}{R_S+\frac{1}{Cs}} = \frac{V_--V_o}{R_1}$
       >
       > Además, como hay retroalimentación negativa: (+0.2pt)
       >
       > $V_- = V_+ = 0$
       >
       > Por lo tanto
       >
       > $\frac{V_S}{R_S+\frac{1}{Cs}} = \frac{-V_o}{R_1}$
       >
       > $V_o = -\frac{R_1V_S}{R_S+\frac{1}{Cs}} $
       >
       > Finalmente,
       >
       > $H(s) = \frac{V_o}{V_S} = -\frac{R_1}{R_S+\frac{1}{Cs}} = -\frac{R_1 C s}{R_S C s+1} $
       >
       > El pólo de la función de transferencia ($s_1$) es: (+0.1pt)
       >
       > $R_S C s_1+1=0$
       >
       > $\implies s_1 = -\frac{1}{R_S C}$
       >
       > Y la constante de tiempo es, por lo tanto: (+0.1pt)
       >
       > $\tau = -\frac{1}{s_1} = R_S C = 47k \times 0.22 \mu \approx 10\ ms$
    1. Cuanto tiempo demoran los términos transitorios en bajar a menos de 1% de su valor inicial. (0.4 pt)
       
       > Para poder utilizar la formula en anexo para la respuesta a escalón unitario de un sistema $H(s)=K\frac{\tau s}{1+\tau s}$ hay que reordenar los factores de la función de transferencia encontrada en el ítem anterior:
       >
       > $-\frac{R_1 C s}{R_S C s+1} = -\frac{R_1}{R_S}\frac{R_S C s}{1+R_S C s}$
       >
       > Se observa que $K = -\frac{R_1}{R_S}$ y $\tau =R_S C $.
       >
       > Por lo tanto, la respuesta a escalón unitario será: (+0.1pt)
       >
       > $v_{o,escalon\ unitario}(t) = Ke^{-\frac{t}{\tau}} = -\frac{R_1}{R_S}e^{-\frac{t}{R_S C}}$
       >
       > Como la entrada es un escalón de 5V, la respuesta será: (+0.1pt)
       >
       > $v_o(t) = -5\frac{R_1}{R_S}e^{-\frac{t}{R_S C}}$
       >
       > El valor inicial del término transitorio es: (+0.1pt)
       >
       > $v_o(0) = -5\frac{R_1}{R_S}e^{-\frac{0}{R_S C}}= -5\frac{R_1}{R_S}$
       >
       > Por lo tanto, el valor de t en el cual los términos transitorios bajan a 1% de su valor inicial es el tiempo $t_1$ en que: (+0.1pt)
       >
       > $v_o(t_1) = 0.01 (-5\frac{R_1}{R_S})$
       >
       > Reemplazando $v_o(t_1)$: 
       >
       > $-5\frac{R_1}{R_S}e^{-\frac{t_1}{R_S C}} = 0.01 (-5\frac{R_1}{R_S})$
       >
       > $e^{-\frac{t_1}{R_S C}} = 0.01 $
       >
       > $-\frac{t_1}{R_S C} = \ln (0.01) $
       >
       > $t_1 = -\ln (0.01) R_S C \approx  47.6\ ms$

4. Además de eliminar el valor DC, también es deseable eliminar ruido de alta frecuencia de la señal de ECG. Una de las formas de hacerlo es con el circuito a continuación, que implementa un filtro pasa-baja. Este circuito atenúa ruido con frecuencia mayor a $\approx\frac{0.3247}{RC}$ rad/s cuando $C_1=C_2=C$, $R_1=R$ y $R_2=1.5 R$. Sin embargo, uno de los problemas con filtros pasa-baja es que cuanto menor su frecuencia de corte, más tiempo demoran en llegar a estado estacionario. Suponiendo que $v_i$ es un escalón unitario, que $C_1=C_2=C$, que $R_1=R$, que $R_2=1.5 R$ y que elegimos $R$ y $C$ para eliminar frecuencias mayores a 1 Hz ($\frac{0.3247}{RC} = 2\pi $), determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/transient_example2.png" width="220"> 

    1. El valor de $v_o$ en estado estacionario (0.5 pt)
       
       > Como capacitores actuan como circuitos abiertos en DC, basta desconectar el capacitor y resolver el circuito. (+0.2pt)
       >
       > El resultado es la conexión entre $v_i$ y $v_o$ por $R_1$ y $R_2$, sin ninguna ramificación que se conecta a tierra. Por lo tanto, la corriente en $R_1$ y en $R_2$ es cero. Si la corriente en $R_1$ y $R_2$ es cero, la caída de tensión también es cero: (+0.1pt)
       >
       > $V_{R_1} = 0$
       >
       > $V_{R_2} = 0$
       >
       > Además, la diferencia de voltaje entre $v_i$ y $v_o$ es la suma de $V_{R_1}$ y $V_{R_2}$: (+0.2pt)
       >
       > $v_i - v_o = V_{R_1} + V_{R_2}$
       >
       > Por lo tanto:
       >
       > $v_i - v_o = 0 + 0 = 0$
       >
       > $v_o = v_i = 1\ V$

    1. La(s) constante(s) de tiempo del sistema (0.8 pt)

       > Reemplazando $C_1$ y $C_2$ por resistencias con valores $\frac{1}{C_1s}$ y $\frac{1}{C_2s}$, respectivamente: (+0.2pt)
       >
       > <img src="https://julianodb.github.io/electronic_circuits_diagrams/transient_example2_laplace.png" width="220">
       >
       > Escribiendo $V_X$ en función de $V_o$:
       >
       > $V_o = \frac{\frac{1}{C_2s}}{\frac{1}{C_2s}+R_2} V_X = \frac{1}{1+R_2C_2s} V_X$ 
       >
       > $\implies V_X = (1+R_2C_2s) V_o$
       >
       > Por otro lado, $i_1 = i_2 + i_3$, por lo que podemos escribir:
       >
       > $\frac{V_i-V_X}{R_1} = \frac{V_X}{\frac{1}{C_1s}} + \frac{V_o}{\frac{1}{C_2s}}$
       >
       > $\frac{V_i-V_X}{R_1} = V_X C_1 s + V_o C_2 s$
       >
       > $V_i-V_X = V_X R_1 C_1 s + V_o R_1 C_2 s$
       >
       > Reemplazando $V_X$:
       >
       > $V_i-(1+R_2C_2s) V_o = (1+R_2C_2s) V_o R_1 C_1 s + V_o R_1 C_2 s$
       >
       > $V_i= V_o(1+R_2C_2s)  + V_o (R_1 C_1 s+R_1R_2C_1C_2s^2)   + V_o R_1 C_2 s$
       >
       > $V_i= V_o(1+R_2C_2s  + R_1 C_1 s+R_1R_2C_1C_2s^2 +  R_1 C_2 s)$
       >
       > $\therefore H(s) = \frac{V_o}{V_i}= \frac{1}{1+R_2C_2s  + R_1 C_1 s +  R_1 C_2 s +R_1R_2C_1C_2s^2}$ (+0.2pt)
       >
       > Como  $C_1=C_2=C$, $R_1=R$ y $R_2=1.5 R$ :
       >
       > $H(s) = \frac{1}{1+1.5RCs  + R C s +  R C s +1.5R^2C^2s^2}$
       >
       > $H(s) = \frac{1}{1+3.5RCs +1.5R^2C^2s^2}$
       >
       > Los pólos ($s_1$ y $s_2$) de $H(s)$ son:
       >
       > $s_{1,2} = \frac{-3.5RC \pm \sqrt{(3.5RC)^2 - 4 \times 1.5R^2C^2 \times 1 }}{2 \times 1.5R^2C^2}$
       >
       > $s_{1,2} = \frac{-3.5 \pm \sqrt{(3.5)^2 - 4 \times 1.5 }}{3RC}$
       >
       > $s_{1,2} = \frac{-3.5 \pm \sqrt{(\frac{7}{2})^2 - 6 }}{3RC}= \frac{-3.5 \pm \sqrt{\frac{49}{4} - 6 }}{3RC}= \frac{-3.5 \pm \sqrt{\frac{49}{4} - \frac{24}{4} }}{3RC}$
       >
       > $s_{1,2} = \frac{-3.5 \pm \sqrt{\frac{25}{4} }}{3RC} = \frac{-3.5 \pm \frac{5}{2} }{3RC}$
       >
       > $\therefore s_1 = -\frac{1}{3RC}$ ; $s_2 = -\frac{6}{3RC} = -\frac{2}{RC}$ (+0.2pt)
       >
       > Luego, las constantes de tiempo $\tau_1$ y $\tau_2$ asociadas a dichos pólos son:
       >
       > $\tau_1 = -\frac{1}{s_1} = 3 R C$ ; y
       >
       > $\tau_2 = -\frac{1}{s_1} = \frac{R C}{2}$
       >
       > Finalmente, del enunciado tenemos que:
       >
       >  $\frac{0.3247}{RC} = 2\pi $
       >
       > $\implies RC = \frac{0.3247}{2 \pi}$
       >
       > Por lo tanto, (+0.2pt)
       >
       > $\tau_1 = 3 R C = 3\frac{0.3247}{2 \pi} \approx 155\ ms$ ; y 
       >
       >  $\tau_2 = \frac{R C}{2} = \frac{0.3247}{2 \times 2 \pi} \approx 25.8\ ms$
       >
       > Se nota que  $\tau_1 \approx 155\ ms$ es la constante de tiempo más lenta y, por lo tanto, la que dominará la respuesta dinamica del sistema.

    1. Cuanto tiempo demoran los términos transitorios en bajar a menos de 1% de su valor inicial. (0.4 pt)
    
       > Para poder utilizar la formula en anexo para la respuesta a escalón unitario de un sistema $H(s)=K\frac{1}{1+\tau s}$ hay que reordenar los factores de la función de transferencia encontrada en el ítem anterior:
       >
       > $H(s) = \frac{1}{1+3.5RCs +1.5R^2C^2s^2}$
       >
       > Como encontramos que las raices del denominador son $s_1 = -\frac{1}{3RC}$ y $s_2 = -\frac{2}{RC}$, podemos factorizar el polinomio:
       >
       > $H(s) = \frac{\frac{2}{3R^2C^2}}{(s + \frac{1}{3RC})(s+\frac{2}{RC})}$
       >
       > Y separarlo en dos fracciones:
       >
       > $H(s) = \frac{2}{3R^2C^2}(\frac{\frac{3RC}{5}}{s + \frac{1}{3RC}} + \frac{-\frac{3RC}{5}}{s+\frac{2}{RC}}) = \frac{2}{5RC}(\frac{1}{s + \frac{1}{3RC}} + \frac{-1}{s+\frac{2}{RC}}) = \frac{2}{5RC}\frac{1}{s + \frac{1}{3RC}} - \frac{2}{5RC}\frac{1}{s+\frac{2}{RC}}$
       >
       > Que es la suma de dos funciones de la forma $K\frac{1}{1+\tau s}$ con $K_1 = \frac{2}{5RC}$ , $\tau_1 = 3R C $, $K_2 = -\frac{2}{5RC}$ , $\tau_2 = \frac{R C}{2} $.
       >
       > Por lo tanto, la respuesta a escalón unitario será: (+0.2pt)
       >
       > $v_{o}(t) = K_1(1-e^{-\frac{t}{\tau_1}}) + K_2(1-e^{-\frac{t}{\tau_2}}) = \frac{2}{5RC}(1-e^{-\frac{t}{3R C}})- \frac{2}{5RC}(1-e^{-\frac{2t}{R C}})$
       >
       > Cuyos términos transitorios son $-\frac{2}{5RC}e^{-\frac{t}{3R C}}$ y $ \frac{2}{5RC}e^{-\frac{2t}{R C}}$
       >
       > Los valores iniciales de los términos transitorios son $-\frac{2}{5RC}$ y $\frac{2}{5RC}$, respectivamente (+0.1pt)
       >
       > Por lo tanto, los valores de t en que los términos transitorios bajan a 1% de su valor inicial son los tiempos $t_1$ y $t_2$ en los cuales: (+0.1pt)
       >
       > $-\frac{2}{5RC}e^{-\frac{t_1}{3R C}} = -0.01\frac{2}{5RC}$
       >
       > y
       >
       > $ \frac{2}{5RC}e^{-\frac{2t_2}{R C}} = 0.01\frac{2}{5RC}$
       >
       > Resolviendo las ecuaciones:
       >
       > $e^{-\frac{t_1}{3R C}} = 0.01 \implies t_1 = -\ln (0.01) 3 R C \approx 710\ ms$
       >
       > y 
       >
       > $ e^{-\frac{2t_2}{R C}} = 0.01 \implies t_2 = -\ln (0.01)\frac{RC}{2} \approx 120\ ms$
       >
       > OBS: también era aceptable utilizar la fórmula $t = -\ln (0.01) \tau$ directamente


# Fórmulas

$$v_o = A_{V_{NL}} \frac{R_L}{R_L+R_o}v_i$$

$$v_o = A_{V_{NL}} \frac{R_L}{R_L+R_o} \frac{R_i}{R_S+R_i} v_S$$

Corto Circuito Virtual: $V_+ = V_-$

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$1 [Hz] = 2\pi [rad/s]$$

Resistencia equivalente a una capacitancia C en el dominio de Laplace: $\frac{1}{Cs}$

Respuesta a escalón unitário del sistema $H(s)=K\frac{1}{1+\tau s}$: $v_o(t) = K(1-e^{-\frac{t}{\tau}})$

Respuesta a escalón unitário del sistema $H(s)=K\frac{\tau s}{1+\tau s}$: $v_o(t) = Ke^{-\frac{t}{\tau}}$