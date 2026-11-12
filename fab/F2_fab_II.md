# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Taller de Fabricación 2 de Sistemas Electrónicos
#### Segundo Semestre de 2026

## Objetivo

Cada grupo ensamblará **al menos una placa 2 y una placa 3** del **amplificador de instrumentación de ganancia programable** diseñado durante el semestre y demostrará el funcionamiento de ambas. La placa 2 corresponde al visualizador de la señal de salida del amplificador; la placa 3 contiene la fuente de alimentación y el circuito de configuración de ganancia.

Utilizaremos las **PCB diseñadas en Fusion 360, enviadas a fabricar y ya recibidas**. El trabajo del taller consiste en identificar los componentes, montarlos y soldarlos, revisar el ensamblaje y realizar las pruebas eléctricas. Los componentes de montaje superficial se soldarán **por refusión**. La teoría de PCB, encapsulados y soldadura se encuentra en la [introducción de F2](F2_fab_II_intro.md).

## Materiales y equipamiento

- PCB de las placas 2 y 3, y sus stencils para aplicar pasta de soldadura.
- Componentes de ambas placas, según la lista de materiales (BOM) y los valores finales seleccionados en T3, T4 y T5; LEDs del color del equipo.
- Conectores, pin headers y jumpers correspondientes a las huellas y conexiones de las PCB.
- Pasta de soldadura, espátula, pinzas de precisión y lupa o equipo de aumento para inspección.
- Horno de refusión, cautín, estaño, flux, malla desoldadora y alicates.
- Multímetro, fuente CC con limitación de corriente, generador de funciones, osciloscopio y cables de prueba.

## Preparación y organización

Trabajen en los mismos grupos de los Trabajos 1 a 5, que ya deberán estar terminados. Repartan las tareas de identificación, montaje, inspección y pruebas, de modo que todos participen en el proceso de soldadura y verificación.

Tengan disponibles los esquemas y diseños de las PCB en Fusion 360, la BOM y sus resultados de:

- [T3](../trabajos/T3.md): valores finales de $R_{14}$ a $R_{23}$, incluyendo las correcciones para evitar saturación, polaridad de LED6 y LED7 y corrientes previstas.
- [T4](../trabajos/T4.md): valores de $R_{24}$ a $R_{35}$ y tablas de funcionamiento de JP1–JP5, $A1$, $A0$, $B0$ y los LEDs indicadores.
- [T5](../trabajos/T5.md): selección de $C_8$ y $C_9$, conexiones del AMS1117-5.0 y estimación de consumo.

**Antes de soldar, relacionen cada referencia del esquema y de la serigrafía con el componente físico que le corresponde.** Comprueben valor, número de parte, encapsulado y orientación. No basta con que el componente quepa en la huella. En particular, distingan los terminales de los MOSFET y del regulador, el pin 1 de los circuitos integrados, la polaridad de los diodos y LEDs y la de los condensadores que la requieran. Midan las resistencias cuando sea necesario para confirmar su valor.

## Actividad y evaluación (6 pt)

### 1. Identificación, montaje y soldadura por refusión (2,5 pt)

1. Preparen una lista de montaje para cada placa, con referencia, componente o valor y encapsulado. Contrástenla con los componentes disponibles y resuelvan cualquier diferencia antes de aplicar pasta. Utilicen los valores finales de sus trabajos y las huellas de las PCB recibidas.
2. Con la PCB limpia y fija, alineen el stencil y apliquen pasta de soldadura sobre los pads SMD. Retiren el stencil y revisen que los depósitos estén bien definidos, sin excesos ni uniones entre pads vecinos.
3. Coloquen los componentes SMD con pinzas, comprobando su posición y orientación con el esquema y el diseño de la placa. Inspeccionen todo el montaje antes de calentarlo.
4. Realicen la refusión con el horno y bajo las indicaciones del profesor, utilizando el ciclo térmico correspondiente a la pasta y los componentes. Esperen a que la placa se enfríe antes de manipularla.
5. Inspeccionen las uniones con aumento. Busquen puentes de soldadura, terminales sin soldar y componentes desplazados. Corrijan los defectos con las herramientas indicadas por el profesor y vuelvan a inspeccionar.
6. Suelden con cautín los componentes de agujero pasante, conectores y pin headers. Identifiquen cada placa con el color del grupo, sin cubrir referencias ni puntos de prueba.
7. Con la alimentación desconectada, comprueben continuidad en las conexiones relevantes y ausencia de cortocircuitos entre los rieles de alimentación. Revisen también la orientación de los conectores antes de preparar las pruebas.

### 2. Placa 3: fuente y configuración (2 pt)

1. Prueben primero la placa 3 sin conectar las otras placas. Apliquen la tensión de entrada prevista en T5 mediante una fuente CC con limitación de corriente, según las indicaciones del profesor. Verifiquen la polaridad de $B^+$ y $B^-$ antes de encender.
2. Midan el voltaje de entrada, la salida de IC9 y el consumo de la placa. Comprueben que el regulador entregue aproximadamente **5 V entre $V_{CC}$ y $V_{EE}$**. Comparen el consumo con la parte de su presupuesto de T5 correspondiente a esta placa y al estado de sus LEDs.

   **$B^-$ y $V_{EE}$ son el mismo nodo. La tierra virtual se genera en la placa 1:** la placa 3 por sí sola no proporciona la referencia analógica de $0\,\text{V}$. La salida regulada de 5 V permite obtener los rieles de $+2{,}5\,\text{V}$ y $-2{,}5\,\text{V}$ cuando se dispone de esa referencia intermedia.

3. Comprueben las dos posiciones de JP1 y las cuatro selecciones de JP2–JP5. En **JP2–JP5 utilicen un único jumper, instalado en sólo uno de ellos a la vez**. Cambien las posiciones con la alimentación desconectada.
4. Para cada selección, midan $A1$, $A0$ y $B0$ según corresponda y observen los LEDs indicadores. Comparen los resultados con las tablas de T4. Expresen los voltajes medidos respecto de $V_{EE}$ y utilicen esa misma referencia al compararlos con los niveles lógicos previstos.

La comprobación de esta placa consiste en verificar la alimentación y las señales de configuración. Asocien cada combinación de controles con la ganancia prevista en T4; la medición de esa ganancia requiere la placa 1.

### 3. Placa 2: visualizador de señal (1,5 pt)

1. Alimenten la placa con **$+2{,}5\,\text{V}$ y $-2{,}5\,\text{V}$ respecto de una referencia de $0\,\text{V}$**, utilizando una fuente de laboratorio configurada para ello y verificada antes de conectar la PCB. Registren las tensiones y el consumo. No conecten la placa 2 directamente a la batería de 9 V.
2. Apliquen a la entrada del visualizador una señal del generador referida a $0\,\text{V}$. Comprueben con el osciloscopio su amplitud y offset antes de conectarla. Utilicen una variación lenta, por ejemplo **1 Hz**, para observar la alternancia de los LEDs; mantengan la entrada dentro del intervalo de T3.
3. Demuestren que **LED6 responde a la señal positiva y LED7 a la negativa**, y que el brillo cambia al variar la magnitud de la señal. Observen también el comportamiento cerca de cero.
4. Para al menos un valor positivo y uno negativo de entrada, midan la caída de voltaje en la resistencia de seguridad del LED que conduce y calculen su corriente:

   $$i_P=\frac{V_{R_{18}}}{R_{18}},\qquad i_N=\frac{V_{R_{23}}}{R_{23}}$$

   Midan la caída desde el extremo de la resistencia conectado a la fuente de corriente hacia el ánodo del LED. Comparen las corrientes con las previstas en T3 para las entradas aplicadas. Si difieren, revisen los valores montados, la alimentación y los voltajes de los operacionales para identificar posibles errores o saturación.

En las pruebas del visualizador, conecten las tierras del generador y del osciloscopio a la referencia de $0\,\text{V}$. Al preparar cada montaje, comprueben las conexiones de tierra de los instrumentos para evitar unir accidentalmente esa referencia con $V_{EE}$.

## Demostración y presentación de resultados

**No se solicita informe.** Antes de finalizar el taller, presenten **al menos una placa 2 y una placa 3 ensambladas por el grupo y funcionando**. Demuestren al profesor la regulación de la fuente, la selección de las señales de configuración y la respuesta del visualizador a ambas polaridades de entrada.

Acompañen la demostración con la lista de montaje y una tabla breve, en papel o pantalla, que incluya:

- Tensiones de alimentación y consumo de cada placa.
- Salida del regulador y comparación con los 5 V previstos.
- Posiciones de los jumpers, niveles de control medidos y estados de los LEDs, comparados con T4.
- Voltajes de entrada del visualizador, caídas en las resistencias de seguridad y corrientes de los LEDs, comparadas con T3.

Expliquen brevemente las diferencias con lo esperado y las correcciones realizadas durante el montaje y las pruebas. Una vez demostradas ambas placas, aprovechen el tiempo restante para avanzar en las unidades adicionales del grupo.
