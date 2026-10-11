# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Taller de Fabricación 1 de Sistemas Electrónicos
#### Segundo Semestre de 2026

## Objetivo

Construir por grupo un **prototipo inicial en stripboard** de las dos etapas de amplificación estudiadas en [T1](../trabajos/T1.md) y [T2](../trabajos/T2.md), y demostrar su funcionamiento midiendo la ganancia real y el CMRR. Este prototipo permite validar el circuito del proyecto de amplificador de instrumentación de ganancia programable; en este taller se utilizará una ganancia fija y componentes de agujero pasante.

## Materiales y equipamiento

- Stripboard (placa con pistas de cobre paralelas), componentes y valores seleccionados en T1 y T2, zócalos, cables para puentes y conectores.
- Cautín, estaño, alicates y herramienta para cortar las pistas de cobre.
- Multímetro, fuente CC con limitación de corriente, generador de funciones y osciloscopio.
- Protoboard opcional y resistencias para atenuar la señal del generador, si es necesario.

## Circuito

<img src="https://julianodb.github.io/electronic_circuits_diagrams/F1_full_circuit.png" width="800">

Figura 1: Circuito que se construirá en stripboard.

## Preparación y organización

Trabajen en los mismos grupos de T1 y T2. **Lleguen con los valores de los componentes, la ganancia teórica total y un bosquejo de distribución en stripboard**, indicando componentes, puentes y cortes de pista. Identifiquen las entradas $V_1$ y $V_2$, la salida final $V_o$, la alimentación y la referencia de voltaje.

La protoboard puede utilizarse antes del taller o brevemente al inicio para comprobar una etapa o una conexión dudosa. No se exige duplicar el montaje completo: las mediciones evaluadas se realizarán en el prototipo soldado.

Distribución sugerida para **150 minutos**: 15 min para revisar la distribución, 90 min para montar y corregir, 30 min para medir y 15 min para la demostración. Repartan entre los integrantes las tareas de montaje, verificación y preparación de las pruebas.

## Actividad y evaluación (6 pt)

### 1. Montaje y puesta en marcha (3 pt)

1. Revisen los valores de las resistencias y la orientación de los circuitos integrados. Planifiquen los cortes para que las pistas no unan nodos distintos, especialmente bajo los zócalos. Mantengan accesibles las entradas y salidas de ambas etapas.
2. Realicen los cortes y comprueben su aislamiento con el multímetro. Suelden los componentes y puentes siguiendo el bosquejo. Identifiquen el prototipo con el color del grupo.
3. Sin alimentación, revisen continuidad, soldaduras y ausencia de cortocircuitos entre alimentación y masa. Alimenten con la tensión y el límite de corriente indicados por el profesor. Con ambas entradas en el mismo voltaje de referencia válido, registren el consumo y el voltaje de reposo de la salida; comprueben que las etapas no estén saturadas.

### 2. Ganancia real (1,5 pt)

1. Mantengan $V_1$ en la referencia y apliquen a $V_2$ una señal sinusoidal pequeña de **50 Hz**, centrada en esa referencia. Atenúen la señal si es necesario para obtener una salida sin recorte. Midan las amplitudes pico a pico en la entrada de la placa y en la salida final.
2. Calculen la ganancia real y compárenla con la ganancia teórica total de T1 y T2:

   $$V_D=V_2-V_1,\qquad |A_D|=\frac{V_{o,pp}}{V_{D,pp}}$$

   $$\text{Error (\%)}=100\frac{|A_D|-A_{D,\mathrm{teo}}}{A_{D,\mathrm{teo}}}$$

### 3. Rechazo de modo común (1,5 pt)

1. Unan las dos entradas y apliquen la misma señal sinusoidal de **50 Hz** a ambas, centrada en la referencia. Mantengan la alimentación y la ganancia anteriores. Pueden aumentar la amplitud respecto de la prueba diferencial, siempre dentro del rango de entrada y sin saturar ninguna etapa.
2. Midan la amplitud de entrada $V_{CM,pp}$ y la componente alterna de salida a 50 Hz $V_{o,CM,pp}$, excluyendo el voltaje DC de reposo. Calculen:

   $$|A_{CM}|=\frac{V_{o,CM,pp}}{V_{CM,pp}},\qquad CMRR_{dB}=20\log_{10}\left(\frac{|A_D|}{|A_{CM}|}\right)$$

   Utilicen la ganancia diferencial medida y amplitudes pico a pico en ambos cocientes. Si la salida no se distingue del ruido, indiquen el límite de amplitud detectable y presenten el CMRR como un límite inferior estimado, usando ese límite en lugar de $V_{o,CM,pp}$; no lo reporten como infinito.

En todas las pruebas, conecten las masas del generador y del osciloscopio a la masa del circuito. Utilicen señales del generador y respeten los rangos de alimentación y entrada.

## Demostración y presentación de resultados

**No se solicita informe.** Antes de finalizar el taller, presenten el prototipo soldado y demuestren al profesor la amplificación diferencial y el rechazo de modo común. Acompañen la demostración con una tabla breve, en papel o pantalla, que incluya alimentación, consumo, voltaje de reposo, amplitudes medidas, ganancia teórica y real, error porcentual y CMRR a 50 Hz. Expliquen brevemente las diferencias con lo esperado y las correcciones realizadas.
