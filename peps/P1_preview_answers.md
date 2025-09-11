# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2025/02
## Guía Prueba Escrita 1

1. Para la adquisición de un electrocardiograma (ECG), es necesario medir la diferencia de voltaje entre electrodos que se posicionan en puntos específicos del paciente. Dicha diferencia de voltaje suele ser muy pequeña, del orden de pocos milivolts, por lo que requiere amplificación para poder graficarse y ser procesada. Considerando que la resistencia eléctrica de la interfaz piel-electrodo es de $R_S =47\ k\Omega$, que el circuito que consume la señal amplificada tiene una resistencia de entrada $R_L= 1\ k\Omega$, y que se disponen de amplificadores con las características a continuación, determine el factor de amplificación de la señal $v_S$ de cada una de las siguientes configuraciones. Considere que el voltaje de salida de cada circuito es $v_o$. ¿ Cuál configuración permite amplificar más la señal de ECG ?

   - Amplificador 1: $R_i = 10\ k\Omega$, $R_o = 1\ k\Omega$, $A_{V_{NL}} = 10$
   - Amplificador 2: $R_i = 330\ k\Omega$, $R_o = 20\ k\Omega$, $A_{V_{NL}} = 10$

    1. Configuración 1: (0.5 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rs_rl_double_black_box.png" width="800">

    > 
    > Respuesta: $A_V \approx 0.83$

2. Para medir la actividad eléctrica del corazón en un ECG se utilizan electrodos en determinadas posiciones del paciente. La siguiente figura muestra la ubicación y color estándar de los electrodos para un ECG que utiliza 4 electrodos.

    <div style="width:400px; overflow:hidden;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/Limb_leads.svg" style="width:570px; max-width:none;">
    </div>

    A partir de esta configuración, se puede medir la actividad eléctrica en distintas direcciones, dependiendo de como se combinan los voltajes de los electrodos. Cada dirección de medición se denomina derivación. Por ejemplo, la llamada derivación I mide el voltaje producido por corrientes eléctricas que se mueven de la derecha del paciente hacia su izquierda, y se obtiene a partir de la diferencia de voltaje $I = LA-RA$ (brazo izquierdo menos brazo derecho). Otro ejemplo es la derivación aVF, que mide el voltaje producido por corrientes eléctricas que se mueven desde arriba hacia abajo, y se obtiene a través de la siguiente combinación de voltajes: $aVF = LL- \frac{LA+RA}{2}$ . Los siguientes circuitos implementan algunas de las derivaciones del ECG, además de amplificar la señal. Determine que fórmula implementa cada uno de ellos:

    1. Encontrar $aVR$ en función de $LA$, $LL$ y $RA$, con $R=10\ k\Omega$ (0.8 pt)

       <img src="https://julianodb.github.io/electronic_circuits_diagrams/avr2.png" width="400"> 
       
    > 
    > Respuesta: 
    >
    > $aVR = 2 RA - LA - LL$

4. Es deseable eliminar ruido de alta frecuencia de la señal de ECG. Una de las formas de hacerlo es con el circuito a continuación, que implementa un filtro pasa-baja. Este circuito atenúa ruido con frecuencia mayor a $\approx\frac{\sqrt{2}}{R_1C}$ rad/s. Sin embargo, uno de los problemas con filtros pasa-baja es que cuanto menor su frecuencia de corte, más tiempo demoran en llegar a estado estacionario. Suponiendo que $v_i$ es un escalón unitario, que $R_2=R_1$, y que elegimos $R_1$ y $C$ para eliminar frecuencias mayores a 1 Hz ($\frac{\sqrt{2}}{R_1C} = 2\pi $), determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/active_low_pass2.png" width="220"> 

    1. El valor de $v_o$ en estado estacionario (0.5 pt)
       >
       > Respuesta: $v_{o,DC} = 2\ V$
    1. La(s) constante(s) de tiempo del sistema (0.8 pt)
       >
       > Respuesta: $\tau = R_1 C = \frac{\sqrt{2}}{2\pi} \approx 0.23\ s$
    1. Cuanto tiempo demoran los términos transitorios en bajar a menos de 1% de su valor inicial. (0.4 pt)
       >
       > Respuesta: $- \ln (0.01) R_1 C \approx 1\ s$

# Fórmulas

Corto Circuito Virtual: $V_+ = V_-$

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$1 [Hz] = 2\pi [rad/s]$$

Resistencia equivalente a una capacitancia C en el dominio de Laplace: $\frac{1}{Cs}$

Respuesta a escalón unitário del sistema $H(s)=K\frac{1}{1+\tau s}$: $v_o(t) = K(1-e^{-\frac{t}{\tau}})$

Respuesta a escalón unitário del sistema $H(s)=K\frac{\tau s}{1+\tau s}$: $v_o(t) = Ke^{-\frac{t}{\tau}}$