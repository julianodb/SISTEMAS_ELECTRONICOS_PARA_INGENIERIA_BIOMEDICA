<!-- Impresión: papel Carta (Letter), escala 100 %, márgenes de 15 mm, sin encabezados/pies del navegador. -->
# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/02
## Prueba Escrita 1 — Pauta

Nombre: __________________________________________

Puntaje total: 6 pt. Justifique sus respuestas e indique unidades.

1. En las mediciones de señales biomédicas, los cables de los sensores añaden resistencia y pueden captar ruido. Una solución es amplificar en el propio pad (electrodo activo). Para **cada configuración por separado**, calcule la ganancia respecto de $v_S$ y el voltaje de salida. Suponga operación lineal; la resistencia efectiva del cable se ha elegido con fines didácticos. (2 pt)

    - Sensor, cable y carga: $R_S=51\ k\Omega$, $R_c=100\ k\Omega$, $v_S=1\ mV$ y $R_L=10\ k\Omega$.
    - Amplificador 1: $R_{i1}=51\ k\Omega$, $R_{o1}=100\ \Omega$, $A_{V_{NL1}}=10$.
    - Amplificador 2: $R_{i2}=1\ M\Omega$, $R_{o2}=100\ \Omega$, $A_{V_{NL2}}=10$.

    1. Configuración 1: cable antes del amplificador 1. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_cable_antes.png" width="430">

       <table width="100%" height="430">
       <tr><td valign="top">El cable se suma a la resistencia de la fuente antes de la primera etapa. $G_1=\frac{R_{i1}}{R_S+R_c+R_{i1}}A_{V_{NL1}}\frac{R_{i2}}{R_{o1}+R_{i2}}A_{V_{NL2}}\frac{R_L}{R_{o2}+R_L}$. <b>(+0,60 pt: 0,20 por cada divisor combinado con las ganancias)</b><br>$G_1=\frac{51}{51+100+51}\,10\,\frac{1000}{0.1+1000}\,10\,\frac{10}{0.1+10}\approx 25.00\ V/V$. Las resistencias se expresan en kΩ. <b>(+0,25 pt)</b><br>$v_o=G_1v_S\approx 25.00\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Configuración 2: amplificador 1 junto al pad. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_cable_despues.png" width="430">

       <table width="100%" height="765">
       <tr><td valign="top">El cable ya no carga directamente al sensor: su resistencia se suma a $R_{o1}$ entre etapas. $G_2=\frac{R_{i1}}{R_S+R_{i1}}A_{V_{NL1}}\frac{R_{i2}}{R_{o1}+R_c+R_{i2}}A_{V_{NL2}}\frac{R_L}{R_{o2}+R_L}$. <b>(+0,60 pt: 0,20 por cada divisor combinado con las ganancias)</b><br>$G_2=\frac{51}{51+51}\,10\,\frac{1000}{0.1+100+1000}\,10\,\frac{10}{0.1+10}\approx 45.00\ V/V$. Las resistencias se expresan en kΩ. <b>(+0,25 pt)</b><br>$v_o=G_2v_S\approx 45.00\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

2. Un sensor entrega $v_E$, una tensión proporcional a la amplitud del ECG del paciente (su envolvente). El circuito mostrado entrega una salida $u$ que permite detectar si ese nivel está por debajo de un umbral. OA1 es ideal y se alimenta entre 0 y $+5\ V$. Considere $R_A=240\ k\Omega$ y $R_B=10\ k\Omega$. (1 pt)


    1. Determine el voltaje de salida $u$ para cada caso independiente: $v_E=0.30\ V$ y $v_E=0.10\ V$. (0,80 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_alarma_deteccion.png" width="350">

       <table width="100%" height="484">
       <tr><td valign="top">Como la entrada del operacional ideal no consume corriente, el divisor no está cargado: $V_{ref}=5\frac{R_B}{R_A+R_B}$. <b>(+0,20 pt)</b><br>$V_{ref}=5\frac{10}{240+10}=0.20\ V$. <b>(+0,10 pt)</b><br>OA1 no tiene realimentación negativa. Con $v_E=0.30\ V$, la entrada no inversora está por encima de la referencia de $0.20\ V$. <b>(+0,15 pt)</b><br>La salida alcanza el límite superior de alimentación: $u=5\ V$. <b>(+0,10 pt)</b><br>OA1 no tiene realimentación negativa. Con $v_E=0.10\ V$, la entrada no inversora está por debajo de la referencia de $0.20\ V$. <b>(+0,15 pt)</b><br>La salida alcanza el límite inferior de alimentación: $u=0\ V$. <b>(+0,10 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Indique qué estado de la salida $u$ señala que la amplitud del ECG está por debajo del umbral. (0,20 pt)

       OA1 es ideal y se alimenta entre 0 y $+5\ V$; $R_A=240\ k\Omega$ y $R_B=10\ k\Omega$. La entrada es $v_E$ y la salida es $u$.

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_alarma_deteccion.png" width="350">

       <table width="100%" height="478">
       <tr><td valign="top">La amplitud está por debajo del umbral cuando $u=0\ V$ (estado bajo). <b>(+0,10 pt)</b><br>Esto ocurre porque $v_E \lt V_{ref}$: la entrada no inversora está a menor tensión que la inversora. <b>(+0,10 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

3. El operacional del circuito siguiente es ideal, se alimenta con $+5\ V$ y $-5\ V$ y tiene la entrada no inversora conectada a tierra. Considere $R_1=R_2=5.1\ k\Omega$, $R_3=100\ k\Omega$, $C_1=6.8\ \mu F$ y $C_2=2.2\ nF$. Inicialmente, el circuito está en reposo, con $v_i=0\ V$. En $t=0$ se aplica un escalón de $100\ mV$. (2 pt)

    1. Determine el valor de $v_s$ en estado estacionario. (0,70 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_low_pass_2_poles.png" width="450">

       <table width="100%" height="328">
       <tr><td valign="top">En DC los capacitores son circuitos abiertos y $V_-=V_+=0$. La corriente de entrada es $i=100\ mV/(R_1+R_2)$. Entonces $v_s(\infty)=-R_3i=-\frac{R_3}{R_1+R_2}\,100\ mV\approx-0.980\ V$, dentro de los rieles. <b>(+0,70 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Estime el tiempo transcurrido desde $t=0$ para que $v_s$ alcance el 95 % de su valor en estado estacionario. Justifique la estimación. (1,30 pt)

       Operacional ideal, alimentado con $\pm5\ V$; $R_1=R_2=5.1\ k\Omega$, $R_3=100\ k\Omega$, $C_1=6.8\ \mu F$ y $C_2=2.2\ nF$. El circuito parte del reposo y recibe un escalón de $100\ mV$ en $t=0$.

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_low_pass_2_poles.png" width="450">

       <table width="100%" height="322">
       <tr><td valign="top">En Laplace, con condiciones iniciales nulas: $V_x$ es el nodo común a $R_1$, $R_2$ y $C_1$; por realimentación negativa, $V_-=0$, $i_-=0$.<br>En $V_x$: $\frac{V_x-V_i}{R_1}+sC_1V_x+\frac{V_x}{R_2}=0$; así, $V_i=(1+\frac{R_1}{R_2}+sR_1C_1)V_x$.<br>En la entrada inversora: $-\frac{V_x}{R_2}-\frac{V_s}{R_3}-sC_2V_s=0$, luego $V_x=-\frac{R_2}{R_3}(1+sR_3C_2)V_s$.<br>Sustituyendo $V_x$ en la primera ecuación: $V_i=-\frac{R_1+R_2+sR_1R_2C_1}{R_3}(1+sR_3C_2)V_s$.<br>Así, $H(s)=\frac{V_s}{V_i}=-\frac{R_3}{(R_1+R_2+sR_1R_2C_1)(1+sR_3C_2)}$.<br>Con los valores dados: $H(s)=\frac{-9.80392}{(1+0.01734s)(1+0.000220s)}$. <b>(+0,50 pt)</b><br>Los polos dan $\tau_1=17.34\ ms$ y $\tau_2=0.220\ ms$. Como $\tau_1/\tau_2\approx78.8$, domina $\tau_1$. Con el formulario, $t_{95}\approx3\tau_1\approx52\ ms$ (aproximación por polo dominante). <b>(+0,80 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

4. Las derivaciones estándar de ECG son combinaciones de los voltajes de los electrodos que permiten observar la actividad eléctrica cardíaca desde distintas direcciones. $RA$ = Right Arm (brazo derecho), $LA$ = Left Arm (brazo izquierdo) y $LL$ = Left Leg (pierna izquierda). Con $R=47\ k\Omega$ y un operacional ideal en régimen lineal, obtenga la salida $aVL$ en función de esas entradas. (1 pt)

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl3.png" width="340">

   <table width="100%" height="530">
   <tr><td valign="top">En la entrada no inversora hay un divisor: $V_+=LA/3$. Por realimentación negativa, $V_-=V_+$. <b>(+0,25 pt)</b><br>LKC en la entrada inversora: $\frac{RA-V_-}{4R}+\frac{LL-V_-}{4R}=\frac{V_--aVL}{R}$. <b>(+0,35 pt)</b><br>$RA+LL+4aVL=6V_-=2LA$; $aVL=\frac{2LA-RA-LL}{4}$. <b>(+0,25 pt)</b><br>$aVL=\frac{1}{2}\left(LA-\frac{RA+LL}{2}\right)=\frac{1}{2}aVL_{ECG}$: es la derivación atenuada a la mitad. <b>(+0,15 pt)</b></td></tr>
   </table>

<div style="page-break-before: always;"></div>

# Fórmulas

Cortocircuito virtual, con realimentación negativa y operación lineal: $V_+=V_-$; 

corrientes de entrada de un operacional ideal: $i_+=i_-=0$.

$$ i_C=C\frac{dv_C}{dt} \qquad Z_C(s)=\frac{1}{Cs} $$

$$ H(s)=\frac{V_o(s)}{V_i(s)} \qquad \tau=-\frac{1}{Re\{p\}} $$

Transición de un sistema de primer orden entre estados constantes:

$$ v(t)=V_f+(V_0-V_f)e^{-t/\tau} $$

Respuesta a escalón de un sistema de primer orden, inicialmente en reposo:

| Tiempo | Porcentaje del valor en estado estacionario alcanzado |
| :---: | :---: |
| $\tau$ | 63,2 % |
| $2\tau$ | 86,5 % |
| $3\tau$ | 95,0 % |
| $4\tau$ | 98,2 % |
| $5\tau$ | 99,3 % |