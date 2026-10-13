<!-- Impresión: papel Carta (Letter), escala 100 %, márgenes de 15 mm, sin encabezados/pies del navegador. -->
# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/02
## Guía Prueba Escrita 1 — Respuestas

Preparación para las preguntas 2 y 3. Puntaje referencial: 4 pt.

1. Analice estos circuitos independientes, con operacionales ideales alimentados con $\pm5\ V$. (2 pt)

    1. En el primer circuito, $R_{DA1}=R_{DA3}=10\ k\Omega$ y $R_{DA2}=R_{DA4}=30\ k\Omega$. Obtenga $v_o$ en función de $v_1$ y $v_2$. Evalúe para $v_1=0.802\ V$ y $v_2=0.800\ V$. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/difference_amplifier.png" width="300">

       <table width="100%" height="441">
       <tr><td valign="top">$V_+=\frac{R_{DA2}}{R_{DA1}+R_{DA2}}v_1=\frac{3}{4}v_1$ y $V_-=V_+$. <b>(+0,25 pt)</b><br>LKC: $\frac{v_2-V_-}{R_{DA3}}=\frac{V_--v_o}{R_{DA4}}$; $v_o=4V_--3v_2$. <b>(+0,35 pt)</b><br>Así, $v_o=3(v_1-v_2)$. <b>(+0,25 pt)</b><br>$v_o=3(0.802-0.800)=0.006\ V=6\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. En el segundo circuito, $R_6=100\ k\Omega$, $C_3=10\ nF$ y $v_i(t)=0.020\sin(500t)\ V$, con $t$ en segundos. Determine $v_o(t)$ y su amplitud pico. Verifique si se alcanza algún límite de alimentación. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/differentiator.png" width="300">

       <table width="100%" height="692">
       <tr><td valign="top">$V_-=0$; $i_C=C_3\,dv_i/dt$ y $v_o=-R_6i_C$. Entonces $v_o=-R_6C_3\,dv_i/dt$. <b>(+0,35 pt)</b><br>$R_6C_3=0.001\ s$; $dv_i/dt=10\cos(500t)\ V/s$, luego $v_o(t)=-0.010\cos(500t)\ V$. <b>(+0,35 pt)</b><br>La amplitud pico es $10\ mV$. <b>(+0,20 pt)</b><br>Los extremos son $\pm0.010\ V$, dentro de $\pm5\ V$: no se alcanza saturación. <b>(+0,10 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

2. Analice de manera independiente los siguientes circuitos. (2 pt)

    1. Datos: $R=20\ k\Omega$ y $C=0.5\ \mu F$. Con el capacitor inicialmente descargado, $v_{in}$ pasa de 0 a $3\ V$ en $t=0$. Determine $v_{out}$ en estado estacionario y la constante de tiempo. Justifique desde el circuito. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_lowpass.png" width="260">

       <table width="100%" height="609">
       <tr><td valign="top">En DC el capacitor no conduce. No hay caída de tensión en $R$, por lo que $v_{out}(\infty)=v_{in}=3\ V$. <b>(+0,40 pt)</b><br>Al anular la fuente ideal de entrada, el capacitor ve $R_{Th}=R=20\ k\Omega$. <b>(+0,35 pt)</b><br>$\tau=RC=20k\cdot0.5\ \mu F=10\ ms$. <b>(+0,25 pt)</b></td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Considere $RA$, $LA$ y $LL$ voltajes de los electrodos de ECG. Con $R=10\ k\Omega$ y amplificadores operacionales ideales en régimen lineal, obtenga la salida rotulada $aVR$ en función de los tres voltajes. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr.png" width="380">

       <table width="100%" height="561">
       <tr><td valign="top">El operacional conectado a $LL$ es un seguidor: su salida es $LL$. <b>(+0,20 pt)</b><br>Para el operacional conectado a $RA$, la entrada inversora está a $RA$. Con resistencias iguales, LKC da $u=2RA-LL$. <b>(+0,25 pt)</b><br>La etapa conectada a $LA$ tiene ganancia 2: $w=2LA$. <b>(+0,20 pt)</b><br>En la etapa de salida, la entrada no inversora está a $u$ y LKC da $aVR=2u-w$. <b>(+0,25 pt)</b><br>Por tanto $aVR=4RA-2LL-2LA=4\left(RA-\frac{LL+LA}{2}\right)$. <b>(+0,10 pt)</b></td></tr>
       </table>

<div style="page-break-before: always;"></div>

# Fórmulas

Cortocircuito virtual, con realimentación negativa y operación lineal: $V_+=V_-$; 

corrientes de entrada de un operacional ideal: $i_+=i_-=0$.

$$ i_C=C\frac{dv_C}{dt} \qquad Z_C(s)=\frac{1}{Cs} $$

$$ H(s)=\frac{V_o(s)}{V_i(s)} \qquad \tau=-\frac{1}{p} \quad (p\text{ real y negativo}) $$


