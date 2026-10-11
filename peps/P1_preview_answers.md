# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/02
## Guía Prueba Escrita 1 — Respuestas

Nombre: __________________________________________

Puntaje total: 6 pt. Justifique sus respuestas e indique unidades.

1. Los siguientes circuitos amplifican una señal biomédica. Datos del sensor y de la carga: $R_S=47\ k\Omega$, $R_L=2\ k\Omega$ y $v_S=2\ mV$. Para **cada configuración por separado**, calcule la ganancia total respecto del sensor y el voltaje de salida. Suponga operación lineal. (2 pt)

    - Amplificador 1: $R_{i1}=10\ k\Omega$, $R_{o1}=100\ \Omega$, $A_{V_{NL1}}=8$.
    - Amplificador 2: $R_{i2}=200\ k\Omega$, $R_{o2}=20\ k\Omega$, $A_{V_{NL2}}=12$.

    1. Configuración 1: (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box.png" width="460">

       <table width="100%" height="190">
       <tr><td valign="top">La carga de la primera etapa es la resistencia de entrada de la segunda. El sensor, las etapas y la carga generan tres divisores:<br>$G=\frac{R_{i1}}{R_S+R_{i1}}A_{V_{NL1}}\frac{R_{i2}}{R_{o1}+R_{i2}}A_{V_{NL2}}\frac{R_L}{R_{o2}+R_L}$. <b>(+0,60 pt: 0,20 por cada divisor correctamente combinado con las ganancias)</b><br>$G=\frac{10000}{57000}\,8\,\frac{200000}{200100}\,12\,\frac{2000}{22000}\approx 1.53\ V/V$. <b>(+0,25 pt)</b><br>$v_o=Gv_S\approx 3.06\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

    2. Configuración 2: (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box2.png" width="460">

       <table width="100%" height="190">
       <tr><td valign="top">La carga de la primera etapa es la resistencia de entrada de la segunda. El sensor, las etapas y la carga generan tres divisores:<br>$G=\frac{R_{i2}}{R_S+R_{i2}}A_{V_{NL2}}\frac{R_{i1}}{R_{o2}+R_{i1}}A_{V_{NL1}}\frac{R_L}{R_{o1}+R_L}$. <b>(+0,60 pt: 0,20 por cada divisor correctamente combinado con las ganancias)</b><br>$G=\frac{200000}{247000}\,12\,\frac{10000}{30000}\,8\,\frac{2000}{2100}\approx 24.68\ V/V$. <b>(+0,25 pt)</b><br>$v_o=Gv_S\approx 49.35\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

2. Los siguientes circuitos se utilizan en el acondicionamiento de señales biomédicas. Los operacionales son ideales y se alimentan con $\pm5\ V$. Analice cada circuito de manera independiente. (2 pt)

    1. Para el amplificador de instrumentación, $R_1=R_2=\cdots=R_6=12\ k\Omega$ y $R_G=3\ k\Omega$. Obtenga $v_o$ en función de $V_1$ y $V_2$, justificando la relación mediante las corrientes o ecuaciones de los nodos. Evalúe para $V_1=0.800\ V$ y $V_2=0.802\ V$. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/instrumentation_amplifier.png" width="340">

       <table width="100%" height="190">
       <tr><td valign="top">Las entradas inversoras de las primeras etapas están a $V_1$ y $V_2$. Tomando la corriente de $R_G$ desde arriba hacia abajo, $i_G=(V_1-V_2)/R_G$. <b>(+0,25 pt)</b><br>Sus salidas son $u_1=V_1+Ri_G$, $u_2=V_2-Ri_G$. La etapa final, con resistencias iguales, produce $v_o=u_2-u_1$. <b>(+0,35 pt)</b><br>$v_o=(1+2R/R_G)(V_2-V_1)=9(V_2-V_1)$. <b>(+0,25 pt)</b><br>$v_o=18\ mV$. <b>(+0,15 pt)</b></td></tr>
       </table>

    2. Para el segundo circuito, $R=50\ k\Omega$, $C=0.2\ \mu F$ y $v_o(0)=0.3\ V$. La entrada permanece en $0.1\ V$ desde $t=0$ hasta $t=40\ ms$; luego se hace cero. Determine el voltaje de salida al terminar ese intervalo y explique qué ocurre después. Verifique si se alcanza algún límite de alimentación. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/integrator.png" width="280">

       <table width="100%" height="190">
       <tr><td valign="top">Es un integrador inversor; se debe conservar la condición inicial. $RC=0.010\ s$ y $dv_o/dt=-v_i/(RC)=-10\ V/s$. <b>(+0,35 pt)</b><br>Durante el intervalo, $v_o(t)=0.3-10t$ V, con $t$ en segundos. En $t=40\ ms$, $v_o=0.3-10\cdot0.04=-0.10\ V$. <b>(+0,35 pt)</b><br>Luego la entrada es cero, la corriente del capacitor es cero y la salida se mantiene en $-0.10\ V$. <b>(+0,20 pt)</b><br>La salida va de $0.3\ V$ a $-0.10\ V$: no alcanza $\pm5\ V$. <b>(+0,10 pt)</b></td></tr>
       </table>

    <div style="page-break-after: always;"></div>

3. Resuelva los siguientes casos independientes, relacionados con el comportamiento transitorio y la medición de amplificadores en laboratorio. (2 pt)

    1. En el circuito mostrado, $R_1=20\ k\Omega$, $R_2=30\ k\Omega$ y $C_1=0.5\ \mu F$. El capacitor está inicialmente descargado y $v_i$ pasa de 0 a $5\ V$ en $t=0$. Determine el voltaje de salida en estado estacionario y la constante de tiempo, justificando ambos resultados desde el circuito. (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/transient_example4.png" width="240">

       <table width="100%" height="190">
       <tr><td valign="top">En estado estacionario DC el capacitor no conduce. El divisor resistivo da $v_o(\infty)=\frac{R_2}{R_1+R_2}v_i=\frac{30}{50}\cdot5=3\ V$. <b>(+0,40 pt)</b><br>Al anular la fuente ideal de entrada, el capacitor ve $R_{Th}=R_1\parallel R_2=\frac{20\cdot30}{50}\ k\Omega=12.000\ k\Omega$. <b>(+0,35 pt)</b><br>$\tau=R_{Th}C_1=6.000\ ms$. <b>(+0,25 pt)</b></td></tr>
       </table>

    2. En otro ensayo se utiliza el amplificador **no inversor** de L2, con $68\ k\Omega$ entre la entrada inversora y tierra, $680\ k\Omega$ en la realimentación y alimentación de 0 y $12\ V$. Se ajusta el promedio de salida a $6\ V$. La sonda que mide $v_i$ está físicamente en 10X, pero su canal indica 1X: la sinusoidal ocupa $3$ divisiones pico a pico con escala indicada de $0.01\ V/div$ y un período ocupa $4$ divisiones de $50\ \mu s/div$. Determine el voltaje pico a pico real de entrada, su frecuencia y el voltaje pico a pico esperado de salida. Indique el ajuste que corrige la lectura. Ignore limitaciones dinámicas. (1 pt)

       <table width="100%" height="190">
       <tr><td valign="top">La lectura es $3\cdot0.01=0.03\ V_{pp}$, pero la sonda atenúa diez veces: $v_{i,pp}=0.3\ V$. <b>(+0,30 pt)</b><br>$T=4\cdot50\ \mu s=0.2\ ms$; $f=1/T=5000\ Hz$. <b>(+0,20 pt)</b><br>La ganancia del no inversor es $1+680/68=11$; $v_{o,pp}=11v_{i,pp}=3.3\ V$. <b>(+0,30 pt)</b><br>Configurar la atenuación del canal en 10X para coincidir con la sonda. <b>(+0,20 pt)</b> La salida ideal oscila entre $4.35$ y $7.65\ V$, dentro de los rieles; el promedio dado no se suma al valor pico a pico.</td></tr>
       </table>

<div style="page-break-before: always;"></div>

# Fórmulas

$$ R_{serie}=R_a+R_b \qquad R_{paralelo}=\frac{R_aR_b}{R_a+R_b} $$

$$ v=Ri \qquad \sum i=0 \qquad \sum v=0 $$

$$ v_o=A_{V_{NL}}\frac{R_L}{R_L+R_o}\frac{R_i}{R_S+R_i}v_S $$

Cortocircuito virtual, con realimentación negativa y operación lineal: $V_+=V_-$; corrientes de entrada de un operacional ideal: $i_+=i_-=0$.

$$ v_o=\left(1+\frac{R_f}{R_g}\right)v_i \qquad v_o=-R_f\sum_k\frac{v_k}{R_k} $$

$$ v_o=\left(1+\frac{2R}{R_G}\right)(V_2-V_1) $$

La última expresión corresponde al amplificador de instrumentación de tres operacionales con las seis resistencias iguales a $R$.

$$ i_C=C\frac{dv_C}{dt} \qquad Z_C(s)=\frac{1}{Cs} $$

$$ H(s)=\frac{V_o(s)}{V_i(s)} \qquad \tau=-\frac{1}{p} \quad (p\text{ real y negativo}) $$

$$ v_o(t)=V_f+(V_0-V_f)e^{-t/\tau} \qquad \tau=R_{Th}C $$

$$ v_o(t)=v_o(0)-\frac{1}{RC}\int_0^t v_i(u)\,du \qquad v_o(t)=-RC\frac{dv_i}{dt} $$

$$ f=\frac{1}{T} \qquad V_{pp}=2V_{pico} \qquad A_{v_{AC}}=\frac{v_{o,pp}}{v_{i,pp}} $$
