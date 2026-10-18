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

2. **Alarma por disminución de amplitud del ECG.** Una etapa anterior entrega $v_E$, una tensión proporcional a la amplitud del ECG (su envolvente). El circuito compara ese nivel con un umbral y, si permanece bajo, el temporizador activa una alarma. Todos los operacionales son ideales, alimentados entre 0 y $+5\ V$.

    OA1 tiene su entrada no inversora conectada a $v_E$ y su entrada inversora al nodo del divisor mostrado. Su salida es $u$ y no se realimenta a las entradas. $R_A=240\ k\Omega$ y $R_B=10\ k\Omega$.

    <pre>+5 V -- RA -- nodo de referencia -- RB -- GND
    vE --> OA1(+) ; nodo de referencia --> OA1(-)
    OA1(salida) = u --> temporizador --> alarma</pre>

    Determine el umbral y el valor de $u$ para cada caso independiente: $v_E=0.30\ V$ y $v_E=0.10\ V$. Explique qué cambio de $u$ inicia la temporización. (0,5 pt)

    <table width="100%" height="565">
    <tr><td valign="top">El divisor no está cargado: $V_{ref}=5\frac{R_B}{R_A+R_B}=0.20\ V$. <b>(+0,15 pt)</b><br>OA1 no tiene realimentación negativa: se debe comparar $v_E$ con $V_{ref}$, sin imponer cortocircuito virtual. <b>(+0,15 pt)</b><br>Para $v_E=0.30\ V$, $u=5\ V$; para $v_E=0.10\ V$, $u=0\ V$. Una disminución sostenida de la amplitud bajo el umbral produce el cambio $5\to0\ V$ que inicia la temporización. <b>(+0,20 pt)</b></td></tr>
    </table>

    <div style="page-break-after: always;"></div>

3. **Temporización de la alarma.** El circuito siguiente recibe $u$. OA2 y OA3 son ideales, alimentados entre 0 y $+5\ V$. El módulo de alarma suena cuando $v_A$ pasa a $+5\ V$.

    - **Rama F:** $u$ se conecta por $R_f=100\ k\Omega$ al nodo $v_f$; $C_f=10\ \mu F$ conecta ese nodo a tierra.
    - **Rama S:** $u$ se conecta por $R_i=200\ k\Omega$ a OA2(−). Entre la salida $v_s$ y OA2(−) están $R_t=200\ k\Omega$ y $C_t=10\ \mu F$ en paralelo. OA2(+) recibe $V_b$ desde un divisor de dos resistencias iguales de $10\ k\Omega$, entre $+5\ V$ y tierra.
    - **Salida:** OA3(−) recibe $v_f$. OA3(+) recibe $v_m$, punto medio del divisor $v_s$–$R_5$–$v_m$–$R_6$–tierra, con $R_5=R_6=10\ k\Omega$. La salida de OA3 es $v_A$.

    En un ensayo independiente, $u=5\ V$ durante mucho tiempo y en $t=0$ cambia a $0\ V$, manteniéndose allí. Determine los valores iniciales y finales de $v_f$ y $v_s$, los dos polos y las constantes de tiempo del bloque lineal entre $u$ y la diferencia de entradas de OA3. Halle cuándo se alcanza el umbral de activación de la alarma y exprese ese tiempo como múltiplo de las constantes de tiempo. **No se pide una expresión completa de $v_A(t)$.** (1,5 pt)

    <table width="100%" height="588">
    <tr><td valign="top">$V_b=2.5\ V$. En DC, $v_f=u$ y $v_s=2V_b-u=5-u$. Por continuidad: $(v_f,v_s)(0^+)=(5,0)\ V$; al final $(v_f,v_s)=(0,5)\ V$. <b>(+0,30 pt)</b><br>$\tau_f=R_fC_f=1\ s$, $\tau_s=R_tC_t=2\ s$. Para $d=v_s/2-v_f$, $H(s)=\Delta D/\Delta U=-\frac{3+5s}{2(1+s)(1+2s)}$: polos $-1$ y $-0.5\ s^{-1}$, sin cancelaciones. <b>(+0,40 pt)</b><br>De la transición de primer orden, sea $x=e^{-t/\tau_s}$: $v_f/5=x^2$ y $v_s/5=1-x$, pues $\tau_s=2\tau_f$. En el cruce $v_f=v_s/2$, luego $2x^2+x-1=0$. La raíz física es $x=1/2$; $t_d=\tau_s\ln2=2\tau_f\ln2\approx1.386\ s=1.386\tau_f=0.693\tau_s$. <b>(+0,60 pt)</b><br>En el cruce $(v_f,v_s)=(1.25,2.5)\ V$. Antes, $v_A=0\ V$; justo después, $v_A=5\ V$ y suena la alarma. La igualdad define el límite de conmutación; no fija la salida ideal exactamente en ese instante. <b>(+0,20 pt)</b></td></tr>
    </table>

    <div style="page-break-after: always;"></div>

4. Datos: $R_S=10\ k\Omega$, $R_1=20\ k\Omega$ y $C=1\ \mu F$. Con el capacitor inicialmente descargado, $v_S$ pasa de 0 a $3\ V$ en $t=0$. Determine $V_{out}$ en estado estacionario y la constante de tiempo. (1 pt)

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/sensor_passive_high_pass.png" width="320">

   <table width="100%" height="667">
   <tr><td valign="top">En estado estacionario DC el capacitor es un circuito abierto: no llega corriente desde la fuente a $R_1$. Por tanto $V_{out}(\infty)=0\ V$. <b>(+0,40 pt)</b><br>Al anular la fuente ideal $v_S$, cada placa del capacitor queda conectada a tierra por una resistencia distinta. La resistencia vista <b>entre las placas</b> es $R_{Th}=R_S+R_1=30\ k\Omega$; no están en paralelo. <b>(+0,35 pt)</b><br>$\tau=(R_S+R_1)C=30\ ms$. <b>(+0,25 pt)</b></td></tr>
   </table>

    <div style="page-break-after: always;"></div>

5. Las derivaciones estándar de ECG son combinaciones de los voltajes de los electrodos que permiten observar la actividad eléctrica cardíaca desde distintas direcciones. $RA$ = Right Arm (brazo derecho), $LA$ = Left Arm (brazo izquierdo) y $LL$ = Left Leg (pierna izquierda). Con $R=47\ k\Omega$ y operacional ideal en régimen lineal, obtenga la salida $aVL$ en función de esas entradas. (1 pt)

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

$$ e^{-2a}=(e^{-a})^2 \qquad e^{-a}=b\ \Longrightarrow\ a=-\ln b $$
