# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/01
## Prueba Escrita 1 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.


1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y $V_D = - V_Z$ si el diodo zener está conduciendo en inversa, resuelva los siguientes circuitos (2 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=2.2\ k\Omega$, $R_2=10\ k\Omega$, $V_F=0.7\ V$, $V_Z = 5.1\ V$ (1pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt2.png" width="300">
      
      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt2_with_currents.png" width="300">
      >
      > Identificación de todos los voltajes y corrientes: 0.1pt
      >
      > Al remover los diodos se observa que $V_{D_1} = 10\ V$ y $V_{D_Z} = 0 V$. Por lo tanto $D_1$ conduce y $D_Z$ no. (+0.1pt) 
      >
      > Al reemplazar $D_1$ por una fuente de voltaje de $0.7\ V$, se observa que $V_2 = 9.3\ V$ (+0.1pt) y $V_1 \approx 1.7\ V $. Por lo tanto, el nuevo $V_{D_Z} = 1.7 - 9.3 = -7.6\ V < -V_Z$, lo que implica que $D_Z$ conduce en inversa. (+0.2pt)
      >
      > Al reemplazar $D_Z$ por una fuente de voltaje de $-5.1\ V$, se observa que $V_1 = 4.2\ V$ (+0.1pt)
      >
      > $I_{R_2} =  \frac{V_2-V_1}{R_2} = \frac{5.1}{10\ k} = 510\ \mu A$ (+0.1pt)
      >
      > $I_{R_1} = I_{D_1} = \frac{V_1}{R_1} = \frac{4.2}{2.2\ k} \approx 1.9\ m A$ (+0.2pt)
      >
      > $I_{D_Z} = I_{D_1} - I_{R_2} = 1.9\ mA - 510\ \mu A \approx 1.4\ mA$ (+0.1pt)

   1. Datos: $V_{CC}=9\ V$, $R_3=1\ k\Omega$, $R_4=R_5=2\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.9\ V$ (1pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt3.png" width="300">

      >
      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt3_with_currents.png" width="300">
      >
      > Identificación de todos los voltajes y corrientes: 0.1pt
      >
      > Al remover ambos diodos se observa que $V_{D_2} = V_2 - 0 = 9\ V$. Por lo tanto $D_2$ conduce. (+0.1pt)
      >
      > Por otro lado, $V_1 = V_{CC}\frac{R_4}{R_4+R_3} = 6\ V$ 
      >
      > Así, $V_{D_Z} = V_2-V_1= 3\ V$  y $D_Z$ conduce en directa 
      >
      > Como $D_2$ conduce, $V_2 = 0.7\ V$ (+0.1pt)
      >
      > Con el nuevo valor de $V_2$, se calcula $V_{D_Z}$ nuevamente:
      >
      > $V_{D_Z} = V_2-V_1= 0.7 - 6 = -5.4\ V$ y se obtiene que $D_Z$ conduce en inversa. (+0.1pt).
      >
      > Como $D_Z$ conduce en inversa, $V_1 = V_2 - V_{D_Z} = 0.7 - (-3.9) = 4.6\ V$ (+0.1pt)
      >
      > Se calculan las corrientes:
      >
      > $I_2 = \frac{V_{CC}-V_2}{R_5} = \frac{9-0.7}{2\ k} = 4.15\ mA$ (+0.1pt)
      >
      > $I_1 = \frac{V_{CC}-V_1}{R_3} = \frac{9-4.6}{1\ k} = 4.4\ mA$ (+0.1pt)
      >
      > $I_5 = \frac{V_1}{R_4} = \frac{4.6}{2\ k} = 2.3\ mA$ (+0.1pt)
      >
      > $I_3 = I_1 - I_5 = 4.4\ mA - 2.3\ mA = 2.1\ mA$ (+0.1pt)
      >
      > $I_4 = I_2 + I_3 = 4.15\ mA + 2.1\ mA = 6.25\ mA$ (+0.1pt)


2. La siguiente imagen muestra la implementación de un circuito conocido como "par diferencial", que es la base para construir un amplificador operacional. Las entradas son $V_+$ y $V_-$  y la salida es $V_o $. El circuito se alimenta con un voltaje positivo $V_{CC} $ y uno negativo $-V_{CC}$. Además, el circuito contiene una fuente de corriente que se proyecta de tal forma que $ I_B = \frac{2 V_{CC}}{R} $. Asumiendo que se puede utilizar el modelo de pequeñas señales de los transistores $Q_1$ y $Q_2$, y que dichos transistores son identicos (tienen el mismo $g_{FS}$, $g_{m} $, $k$, $V_{GS(th)}$ y $R_{DS(on)}$ ), ¿Cuál es la relación entre el voltaje de salida y los de entrada ? Asuma que $V_{CC}=5\ V$, $R=100\ k\Omega$, $g_{FS} = 0.32\ S$, $g_m = 0.32\ S$, $V_{GS(th)} = 1\ V$, $R_{DS(on)}=1.2\ \Omega$ (1pt)

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/mosfet_differential_pair.png" width="280">

   >
   > <img src="https://julianodb.github.io/electronic_circuits_diagrams/mosfet_differential_pair_small_signal.png" width="280">
   >
   > Estrategia: 
   > 1. Aplicar la fórmula de pequeñas señales para escribir $I_1$ e $I_2$ en función de $V_+$, $V_-$ y $V_x$. 
   > 1. Luego, aplicar LKC para encontrar $V_x$ en función de las otras variables. 
   > 1. Después, reemplazar el valor de $V_x$ en la fórmula de $I_2$
   > 4. Finalmente, escribir $V_o$ como $V_o = V_{CC} - R I_2$
   >
   > (1) Aplicar fórmula de pequeñas señales (+0.2pt)
   >
   > $I_1 = g_m (V_+-V_x)$
   >
   > $I_2 = g_m (V_--V_x)$
   >
   > (2) LKC (+0.3pt)
   >
   > $I_1 + I_2 = I_B$
   > 
   > $g_m (V_+-V_x) + g_m (V_--V_x) = \frac{2V_{CC}}{R}$
   > 
   > $g_m (V_++V_-) - 2g_m V_x = \frac{2V_{CC}}{R}$
   > 
   > $ 2g_m V_x = g_m (V_++V_-) -\frac{2V_{CC}}{R}$
   > 
   > $ V_x = \frac{V_++V_-}{2} -\frac{V_{CC}}{Rg_m}$
   >
   > (3) Reemplazar $V_x$ en la formula de $I_2$ (+0.3pt)
   >
   > $I_2 = g_m (V_--V_x)$
   >
   > $I_2 = g_m (V_--\frac{V_++V_-}{2} +\frac{V_{CC}}{Rg_m})$
   >
   > $I_2 = g_m (\frac{V_--V_+}{2} +\frac{V_{CC}}{Rg_m})$
   >
   > $I_2 = g_m (\frac{V_--V_+}{2}) +\frac{V_{CC}}{R}$
   >
   > (4) Resolver $V_o$ (+0.2pt)
   >
   > $V_o = V_{CC} - R I_2$
   >
   > $V_o = V_{CC} - R (g_m (\frac{V_--V_+}{2}) +\frac{V_{CC}}{R})$
   >
   > $V_o = V_{CC} - R g_m (\frac{V_--V_+}{2}) -V_{CC}$
   >
   > $V_o = \frac{R g_m}{2} (V_+-V_-)$
   >
   > Utilizando los valores dados en el enunciado:
   >
   > $V_o = 16000 (V_+-V_-)$

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivoltios, por lo que requiere de amplificación antes de ser procesada o visualizada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =800\ k\Omega$, que el circuito que consume la señal amplificada tiene una resistencia de entrada $R_L= 200\ \Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

   - Amplificador 1: $R_i = 100\ k\Omega$, $R_o = 100\ \Omega$, $A_{V_{NL}} = 8$
   - Amplificador 2: $R_i = 1\ M\Omega$, $R_o = 2\ k\Omega$, $A_{V_{NL}} = 12$

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
       > $A_V = 12 \frac{200}{200+2k} 8 \frac{1M}{1M+100} \frac{100k}{800k+100k} \approx 0.97 $
       
       
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
       > $A_V = 8 \frac{200}{200+100} 12 \frac{100k}{100k+2k} \frac{1M}{800k+1M} \approx 34.9 $

   > $\therefore $ La configuración 2 permite amplificar más la señal de ECG

2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $II$ en función de $LL$ y $RA$, con $R_1=R_2=R_3=R_4=R_5=R_6=100\ k\Omega$ y $R_G=51\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/ecg_II.png" width="400"> 

    2. Encontrar $aVL$ en función de $LA$, $LL$ y $RA$, con $R=47\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl3.png" width="400"> 

# Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
- $T$: Temperatura en Kelvin

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

$$v_o = A_{V_{NL}} \frac{R_L}{R_L+R_o}v_i$$

$$v_o = A_{V_{NL}} \frac{R_L}{R_L+R_o} \frac{R_i}{R_S+R_i} v_S$$

Corto Circuito Virtual: $V_+ = V_-$