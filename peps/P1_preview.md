# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2026/01
## Guía Prueba Escrita 1

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y $V_D = - V_Z$ si el diodo zener está conduciendo en inversa, resuelva los siguientes circuitos (2 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_3=1\ k\Omega$, $R_4=10\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.3\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt.png" width="300">

   1. Datos: $V_{CC}=9\ V$, $R_5=R_6=R_7=1\ k\Omega$, $V_F=0.7\ V$, $V_Z = 5.1\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt2.png" width="300">

2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $aVL$ en función de $LA$, $LL$ y $RA$, con $R=6.8\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avl.png" width="400"> 

    2. Encontrar $aVR$ en función de $LA$, $LL$ y $RA$, con $R=10\ k\Omega$ (1 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr3.png" width="400"> 

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
