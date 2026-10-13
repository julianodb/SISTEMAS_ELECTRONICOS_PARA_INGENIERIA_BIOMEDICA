<!-- Impresión: papel Carta (Letter), escala 100 %, márgenes de 15 mm, sin encabezados/pies del navegador. -->
# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/02
## Prueba Escrita 1 — Pauta

Nombre: __________________________________________

Puntaje total: 6 pt. Justifique sus respuestas e indique unidades.

1. En el contexto de mediciones de señales biomédicas, los cables de los sensores añaden resistencia y pueden captar ruido. Una solución es amplificar en el propio pad (electrodo activo). Para **cada configuración por separado**, calcule la ganancia respecto de $v_S$ y el voltaje de salida. Suponga operación lineal; la resistencia efectiva del cable se ha elegido con fines didácticos. (2 pt)

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

2. Los siguientes circuitos se utilizan en el acondicionamiento de señales biomédicas. Los operacionales son ideales y se alimentan con $\pm5\ V$. Analice cada circuito de manera independiente. (2 pt)

    1. ¿Cuál es el voltaje de salida del siguiente circuito, si $V_+=1.8\ V$ y $V_-=2.0\ V$? (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/P1_2_1.png" width="380">

       <table width="100%" height="558">
       <tr><td valign="top">La salida no está conectada a ninguna entrada: no hay realimentación negativa y no corresponde imponer $V_+=V_-$. <b>(+0,35 pt)</b><br>$V_+-V_-=1.8-2.0=-0.2\ V$; la ganancia de lazo abierto es positiva y muy grande. <b>(+0,30 pt)</b><br>La salida alcanza el límite inferior de la alimentación: $v_o=V_{EE}=-5\ V$. El operacional está actuando como comparador. <b>(+0,35 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Para el segundo circuito, $R=100\ k\Omega$, $C=0.1\ \mu F$ y $v_o(0)=0.4\ V$. La entrada permanece en $0.2\ V$ desde $t=0$ hasta $t=30\ ms$; luego se hace cero. Determine el voltaje de salida al terminar ese intervalo y explique qué ocurre después. Verifique si se alcanza algún límite de alimentación. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/integrator.png" width="340">

       <table width="100%" height="647">
       <tr><td valign="top">Es un integrador inversor; se debe conservar la condición inicial. $RC=0.010\ s$ y $dv_o/dt=-v_i/(RC)=-20\ V/s$. <b>(+0,35 pt)</b><br>Durante el intervalo, $v_o(t)=0.4-20t$ V, con $t$ en segundos. En $t=30\ ms$, $v_o=0.4-20\cdot0.03=-0.20\ V$. <b>(+0,35 pt)</b><br>Luego la entrada es cero, la corriente del capacitor es cero y la salida se mantiene en $-0.20\ V$. <b>(+0,20 pt)</b><br>La salida va de $0.4\ V$ a $-0.20\ V$: no alcanza $\pm5\ V$. <b>(+0,10 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

3. Analice de manera independiente los siguientes circuitos. (2 pt)

    1. Datos: $R_S=10\ k\Omega$, $R_1=20\ k\Omega$ y $C=1\ \mu F$. Con el capacitor inicialmente descargado, $v_S$ pasa de 0 a $3\ V$ en $t=0$. Determine $V_{out}$ en estado estacionario y la constante de tiempo. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/sensor_passive_high_pass.png" width="320">

       <table width="100%" height="609">
       <tr><td valign="top">En estado estacionario DC el capacitor es un circuito abierto: no llega corriente desde la fuente a $R_1$. Por tanto $V_{out}(\infty)=0\ V$. <b>(+0,40 pt)</b><br>Al anular la fuente ideal $v_S$, cada placa del capacitor queda conectada a tierra por una resistencia distinta. La resistencia vista <b>entre las placas</b> es $R_{Th}=R_S+R_1=30\ k\Omega$; no están en paralelo. <b>(+0,35 pt)</b><br>$\tau=(R_S+R_1)C=30\ ms$. <b>(+0,25 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Las derivaciones estándar de ECG son combinaciones de los voltajes de los electrodos que permiten observar la actividad eléctrica cardíaca desde distintas direcciones. $RA$ = Right Arm (brazo derecho), $LA$ = Left Arm (brazo izquierdo) y $LL$ = Left Leg (pierna izquierda). Con $R=47\ k\Omega$ y operacional ideal en régimen lineal, obtenga la salida $aVL$ en función de esas entradas. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl3.png" width="340">

       <table width="100%" height="494">
       <tr><td valign="top">En la entrada no inversora hay un divisor: $V_+=LA/3$. Por realimentación negativa, $V_-=V_+$. <b>(+0,25 pt)</b><br>LKC en la entrada inversora: $\frac{RA-V_-}{4R}+\frac{LL-V_-}{4R}=\frac{V_--aVL}{R}$. <b>(+0,35 pt)</b><br>$RA+LL+4aVL=6V_-=2LA$; $aVL=\frac{2LA-RA-LL}{4}$. <b>(+0,25 pt)</b><br>$aVL=\frac{1}{2}\left(LA-\frac{RA+LL}{2}\right)=\frac{1}{2}aVL_{ECG}$: es la derivación atenuada a la mitad. <b>(+0,15 pt)</b></td></tr>
       </table>

<div style="page-break-before: always;"></div>

# Fórmulas

Cortocircuito virtual, con realimentación negativa y operación lineal: $V_+=V_-$; 

corrientes de entrada de un operacional ideal: $i_+=i_-=0$.

$$ i_C=C\frac{dv_C}{dt} \qquad Z_C(s)=\frac{1}{Cs} $$

$$ H(s)=\frac{V_o(s)}{V_i(s)} \qquad \tau=-\frac{1}{p} \quad (p\text{ real y negativo}) $$