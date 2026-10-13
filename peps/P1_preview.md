<!-- Impresión: papel Carta (Letter), escala 100 %, márgenes de 15 mm, sin encabezados/pies del navegador. -->
# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/02
## Guía Prueba Escrita 1

Preparación para las preguntas 2 y 3. Puntaje referencial: 4 pt.

1. Analice estos circuitos independientes, con operacionales ideales alimentados con $\pm5\ V$. (2 pt)

    1. En el primer circuito, $R_{DA1}=R_{DA3}=10\ k\Omega$ y $R_{DA2}=R_{DA4}=30\ k\Omega$. Obtenga $v_o$ en función de $v_1$ y $v_2$. Evalúe para $v_1=0.802\ V$ y $v_2=0.800\ V$. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/difference_amplifier.png" width="300">

       <table width="100%" height="441">
       <tr><td valign="top">&nbsp;</td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. En el segundo circuito, $R_6=100\ k\Omega$, $C_3=10\ nF$ y $v_i(t)=0.020\sin(500t)\ V$, con $t$ en segundos. Determine $v_o(t)$ y su amplitud pico. Verifique si se alcanza algún límite de alimentación. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/differentiator.png" width="300">

       <table width="100%" height="692">
       <tr><td valign="top">&nbsp;</td></tr>
       </table>

    <div style="page-break-after: always;"></div>

2. Analice de manera independiente los siguientes circuitos. (2 pt)

    1. Datos: $R=20\ k\Omega$ y $C=0.5\ \mu F$. Con el capacitor inicialmente descargado, $v_{in}$ pasa de 0 a $3\ V$ en $t=0$. Determine $v_{out}$ en estado estacionario y la constante de tiempo. Justifique desde el circuito. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_lowpass.png" width="260">

       <table width="100%" height="609">
       <tr><td valign="top">&nbsp;</td></tr>
       </table>

       <div style="page-break-after: always;"></div>

    2. Considere $RA$, $LA$ y $LL$ voltajes de los electrodos de ECG. Con $R=10\ k\Omega$ y amplificadores operacionales ideales en régimen lineal, obtenga la salida rotulada $aVR$ en función de los tres voltajes. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr.png" width="440">

       <table width="100%" height="541">
       <tr><td valign="top">&nbsp;</td></tr>
       </table>

<div style="page-break-before: always;"></div>

# Fórmulas

Cortocircuito virtual, con realimentación negativa y operación lineal: $V_+=V_-$; 

corrientes de entrada de un operacional ideal: $i_+=i_-=0$.

$$ i_C=C\frac{dv_C}{dt} \qquad Z_C(s)=\frac{1}{Cs} $$

$$ H(s)=\frac{V_o(s)}{V_i(s)} \qquad \tau=-\frac{1}{p} \quad (p\text{ real y negativo}) $$


