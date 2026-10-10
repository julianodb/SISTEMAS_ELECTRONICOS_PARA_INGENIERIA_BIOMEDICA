# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Taller de Fabricación 1 de Sistemas Electrónicos
#### Segundo Semestre de 2026

## Introducción

El proyecto de este semestre es un **amplificador de instrumentación de ganancia programable**, presentado en la [clase 01](../teoria/01_Introduccion.md). En este taller se fabricarán y caracterizarán las dos etapas de amplificación de la Placa 1 estudiadas en los [Trabajos T1](../trabajos/T1.md) y [T2](../trabajos/T2.md): el amplificador de instrumentación y la segunda etapa no inversora.

Utilicen los valores de resistencias seleccionados en esos trabajos. En F1 se comprobará el funcionamiento con una configuración fija de ganancia; la selección programable se desarrollará posteriormente, según la planificación del proyecto. Todos los componentes que se montarán en este taller serán de **agujero pasante**, soldados con cautín.

El objetivo es construir al menos una placa funcional por grupo y evaluar su ganancia real, su rechazo de modo común y sus límites de funcionamiento, comparando las mediciones con las predicciones del diseño.

## Materiales

- PCB de la Placa 1 correspondiente al circuito de la Figura 1.
- Componentes de agujero pasante de la lista de materiales (BOM) correspondiente a este taller.
- Resistencias con los valores definidos en T1 y T2, incluyendo $R_G$, $R_8$, $R_9$, $R_2$, $R_3$, $R_{10}$, $R_{11}$, $R_{12}$ y $R_{13}$.
- Zócalos, conectores y puentes según la PCB y la BOM del taller.
- Estaño para soldadura y cables para las conexiones de prueba.
- Resistencias para implementar un divisor de voltaje, si se necesita atenuar la señal del generador.
- Marcador para identificar la placa con el color o nombre del grupo.

## Equipamiento

- Cautín y soporte, esponja o limpiador de punta.
- Alicates de corte y de punta.
- Multímetro.
- Fuente de alimentación CC con limitación de corriente.
- Generador de funciones y osciloscopio con sondas.

## Circuito que se construirá

<img src="https://julianodb.github.io/electronic_circuits_diagrams/F1_full_circuit.png" width="800">

Figura 1: Circuito de la Placa 1 que se construirá en este taller, correspondiente a las etapas de amplificación del proyecto.

Identifiquen en el esquema las entradas $V_1$ y $V_2$, la salida de la primera etapa $V_{o1}$, la salida de la segunda etapa $V_{o2}$, los terminales de alimentación y la referencia de voltaje. Utilicen estos nombres en las mediciones y en el informe, indicando a qué nodos de la Figura 1 corresponden.

## Procedimiento experimental e informe (6 pt)

Organícense en los mismos grupos que para los Trabajos. Registren las conexiones de prueba, las condiciones de alimentación, los valores medidos y las capturas del osciloscopio. Antes de terminar el taller, demuestren al profesor el funcionamiento de al menos una placa por grupo.

### 1. Montaje y verificación inicial (2 pt)

1. Preparen una tabla con los valores nominales de las resistencias y sus valores medidos con el multímetro **antes de soldarlas**. Identifiquen especialmente las resistencias de la etapa diferencial, cuyo ajuste relativo afecta el rechazo de modo común.
2. Suelden primero los componentes de menor altura y luego los zócalos y conectores. Verifiquen la orientación de los circuitos integrados y la polaridad de los componentes que corresponda. Identifiquen la placa y revisen que no existan puentes de estaño, soldaduras deficientes ni terminales sin soldar.
3. Con la placa sin alimentación, comprueben la continuidad de las conexiones y la ausencia de cortocircuitos entre alimentación y masa. Confirmen con el profesor la tensión de alimentación y el límite de corriente antes de encenderla.
4. Alimenten la placa con ambas entradas conectadas al mismo voltaje de referencia válido para el circuito. Midan la tensión de alimentación, el consumo de corriente y los voltajes de reposo $V_{o1,0}$ y $V_{o2,0}$. Comparen las salidas con los valores de reposo esperados según el esquema y expliquen cualquier desviación o saturación. Si detectan consumo anormal o calentamiento, desconecten la fuente y revisen el montaje.

### 2. Ganancia diferencial real y rango de señal (1,5 pt)

Definan la entrada diferencial y el voltaje de modo común como:

$$V_D=V_2-V_1,\qquad V_{CM}=\frac{V_1+V_2}{2}$$

Para las resistencias nominales de T2, con la etapa diferencial de ganancia unitaria, las ganancias teóricas son:

$$A_{D1,\mathrm{teo}}=1+\frac{R_2+R_3}{R_G}$$

$$A_{V2,\mathrm{teo}}=1+\frac{R_8}{R_9},\qquad A_{D,\mathrm{teo}}=A_{D1,\mathrm{teo}}A_{V2,\mathrm{teo}}$$

1. Calculen estas ganancias con los valores seleccionados en T1 y T2. El valor 201 corresponde a la primera etapa con $R_2=R_3=100\,\text{k}\Omega$ y $R_G=1\,\text{k}\Omega$; la ganancia total incluye además la segunda etapa.
2. Apliquen una señal sinusoidal de **50 Hz**: mantengan $V_1$ en un voltaje de referencia válido y apliquen en $V_2$ una señal pequeña centrada en esa referencia. Verifiquen que ambas entradas y las salidas permanezcan dentro de sus rangos de funcionamiento. Si el generador no permite obtener una amplitud suficientemente pequeña, utilicen un divisor de voltaje y midan la señal **en los terminales de entrada de la placa**.
3. Midan las amplitudes pico a pico de $V_D$, $V_{o1}$ y $V_{o2}$, comprobando que no exista recorte. Calculen:

   $$|A_{D1,\mathrm{real}}|=\frac{V_{o1,pp}}{V_{D,pp}},\qquad |A_{V2,\mathrm{real}}|=\frac{V_{o2,pp}}{V_{o1,pp}},\qquad |A_{D,\mathrm{real}}|=\frac{V_{o2,pp}}{V_{D,pp}}$$

   $$\text{Error de ganancia (\%)}=100\frac{|A_{\mathrm{real}}|-A_{\mathrm{teo}}}{A_{\mathrm{teo}}}$$

   Comparen las tres ganancias y registren si las salidas están en fase o invertidas respecto de sus entradas. La excitación de una sola entrada también introduce una variación de modo común; consideren este efecto al interpretar la ganancia medida si el rechazo de modo común resulta bajo.
4. Repitan la medición con al menos tres amplitudes de entrada. Aumenten gradualmente la amplitud hasta observar el inicio del recorte y registren en qué etapa aparece primero. Informen la mayor amplitud diferencial ensayada sin distorsión visible y las tensiones máxima y mínima de salida; no utilicen señales recortadas para calcular la ganancia.

### 3. Rechazo de modo común: CMRR (1,5 pt)

1. Unan las dos entradas y apliquen a ambas la **misma señal sinusoidal de 50 Hz**, centrada en el mismo voltaje de referencia utilizado anteriormente. Así, $V_D\approx0$ y la señal aplicada es de modo común. Mantengan la misma configuración de ganancia y alimentación que en la medición diferencial.
2. Elijan una amplitud de modo común que permita medir la respuesta sin exceder el rango de entrada ni saturar ninguna etapa. Midan $V_{CM,pp}$ en la placa y la componente de salida a 50 Hz, tanto en $V_{o1}$ como en $V_{o2}$. La amplitud de modo común puede ser mayor que la diferencial utilizada en la sección anterior. No confundan el voltaje DC de reposo con la componente alterna de salida producida por la señal de prueba.
3. Calculen para cada salida:

   $$|A_{CM1}|=\frac{V_{o1,CM,pp}}{V_{CM,pp}},\qquad |A_{CM,\mathrm{total}}|=\frac{V_{o2,CM,pp}}{V_{CM,pp}}$$

   $$CMRR_1=\frac{|A_{D1,\mathrm{real}}|}{|A_{CM1}|},\qquad CMRR_{\mathrm{total}}=\frac{|A_{D,\mathrm{real}}|}{|A_{CM,\mathrm{total}}|}$$

   $$CMRR_{dB}=20\log_{10}(CMRR)$$

   Utilicen las ganancias diferenciales **medidas a 50 Hz**, y mantengan el mismo tipo de amplitud en todos los cocientes. No calculen el CMRR dividiendo directamente las salidas de ambas pruebas si las amplitudes de entrada fueron distintas.
4. Si la respuesta de modo común queda por debajo del ruido o de la resolución del instrumento, indiquen ese límite de medición. Por ejemplo, si la menor amplitud de salida distinguible es $V_{\mathrm{lim},pp}$, reporten un límite inferior estimado:

   $$CMRR_{dB}\gtrsim20\log_{10}\left(\frac{|A_{D,\mathrm{real}}|V_{CM,pp}}{V_{\mathrm{lim},pp}}\right)$$

   Apliquen la expresión a la salida correspondiente y documenten cómo determinaron $V_{\mathrm{lim},pp}$. No reporten un CMRR infinito porque el osciloscopio muestre una amplitud indistinguible de cero.
5. Comparen los resultados con el análisis de T2. Discutan el efecto del desajuste entre resistencias, las limitaciones de los amplificadores operacionales y el ruido de medición. Distingan el CMRR de la placa del CMRR de un amplificador operacional individual indicado en su hoja de datos.

En ambas pruebas conecten las masas del generador y del osciloscopio únicamente a la masa del circuito: las masas de estos instrumentos suelen estar unidas a tierra y no deben conectarse a nodos de señal. Las pruebas de este taller se realizarán con señales del generador.

### 4. Resultados y demostración (1 pt)

El informe debe contener:

- Identificación del grupo (color) y de sus integrantes.
- Fotografía de la placa terminada y tabla de resistencias nominales y medidas.
- Esquemas de conexión para las pruebas diferencial y de modo común, indicando alimentación, referencia, frecuencia y amplitudes aplicadas.
- Tabla de tensiones de reposo y consumo de corriente.
- Tabla de ganancias teóricas y reales de cada etapa y del conjunto, con sus errores porcentuales.
- Capturas que muestren la amplificación sin recorte y el inicio de la saturación, con escalas y unidades legibles.
- Tabla de $A_{CM}$, CMRR y $CMRR_{dB}$ a 50 Hz para la primera etapa y para el circuito completo, o los límites inferiores estimados cuando corresponda.
- Una discusión breve de las diferencias entre cálculo y medición, los problemas de montaje encontrados y las correcciones realizadas.

Durante la demostración, presenten la amplificación de una señal diferencial y la respuesta a una señal de modo común. Una vez completada la caracterización de la primera placa, pueden avanzar en la fabricación de las demás placas del grupo, ya que cada integrante recibirá una al finalizar el curso.
