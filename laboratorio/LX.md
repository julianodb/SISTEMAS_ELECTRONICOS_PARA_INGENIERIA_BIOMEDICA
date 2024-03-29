# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 3 de Sistemas Electrónicos
#### Segundo Semestre de 2023

## Recursos del pañol

- Instrumentos
  - 1 x Osciloscopio
  - 1 x Generador de señales
  - 1 x Multímetro
  - 1 x Fuente C.C.
- Implementos
  - 2 x Sonda
  - 1 x BNC-Caimán
- Dispositivos
  - Diodos
    - 2 x Diodo rectificador
    - 3 x LED blanco
    - 1 x LED azul
  - Resistencias (Ω):
    - 4 x 330
    - 1 x 390
    - 2 x 10k
    - 3 x 20k
    - 3 x 6.8k
    - 1 x fotorresistencia (LDR)
  - Transistor
    - 3 x PN2222
- Otro
    - 1 x Protoboard
    - 1 x sensor CNY70
    - cables, alicate, etc

## Procedimiento experimental e informe

Nota: Ante cualquier duda en el uso de los instrumentos, o las conexiones eléctricas, consultar al profesor.

1. Identifiquen en el protoboard el circuito de la Figura 1, en el cual $R_1=330\ \Omega$ y $R_2= 10\ k\Omega$. Configuren la fuente CC para generar 10 V y limiten la corriente a 500 mA.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/ldr_cc.png" width="200">

   Figura 1: Circuito con fotorresistencia en CC

   1. Midan y anoten el voltaje en el LED. ¿Como se compara con el valor de la hoja de datos de $V_f = 3.5\ V$ ? (0.2 pt)
   1. Basándose en la medición anterior, estimen $I_f$. (0.2 pt)
   1. Asegurense de que no hay objetos en frente al LED, midan $v_o$ y anoten su valor. (0.4 pt)
   1. Interpongan un objeto a aproximadamente 2 cm de distancia del LED, midan y anoten el valor de $v_o$ nuevamente (0.4 pt)
   1. Acerquen el objeto al LED mientras miden $v_o$, y encuentren el punto donde $v_o$ es mínimo. Anoten el valor de $v_o$ mínimo. (0.4 pt)

1. Desconecten el LED de la fuente CC y conectenlo al generador de funciones, conforme la figura 2. Configuren el generador de funciones para generar una onda cuadrada entre 0 y $V_{CC}$ con frecuencia 5 Hz.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/ldr_ac.png" width="400">

   Figura 2: Circuito con fotorresistencia en AC

   1. Midan el voltaje en el led en uno de los canales del osciloscopio, y $v_o$ en el otro, conforme la figura 2. Asegurense de conectar las tierras de cada sonda con la tierra del circuito. ¿Cómo se comparan las formas de onda de los dos voltajes? (0.4 pt)
   1. La respuesta de la fotorresistencia no es instantanea cuando cambia la luminosidad. Aumenten la frecuencia, hasta que la mitad del período de la onda sea comparable con el tiempo de subida de $v_o$, y utilicen esta información para estimar cuanto tiempo la fotorresistencia se demora en cambiar de valor (0.5 pt)

1. Identifiquen en el protoboard el circuito de la Figura 3, en el cual $R_1=390\ \Omega$ y $R_2= 10\ k\Omega$. Configuren la fuente CC para generar 10 V y limiten la corriente a 500 mA.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/cny70_cc.png" width="600"> 

   Figura 3: Circuito con CNY70 en CC

   1. Midan y anoten el voltaje en el LED del sensor CNY70. ¿Como se compara con el valor de la hoja de datos de $V_f = 1.2\ V$ ? (0.2 pt)
   1. Basándose en la medición anterior, estimen $I_f$. (0.2 pt)
   1. Asegurense de que no hay objetos en frente al LED, midan $v_o$ y anoten su valor. (0.4 pt)
   1. Interpongan un objeto a aproximadamente 2 cm de distancia del sensor CNY70, midan y anoten el valor de $v_o$ nuevamente (0.4 pt)
   1. Acerquen el objeto al CNY70 mientras miden $v_o$, y encuentren el punto donde $v_o$ es mínimo. Anoten el valor de $v_o$ mínimo.
   1. Encuentren las distancias entre el objeto y el sensor CNY70 que encienden 1, 2 y 3 de los LEDs indicadores ($D_2$, $D_3$ y $D_4$). Anóten los valores de $v_o$ y los voltajes en los diodos $D_{B_1}$ y $D_{B_2}$ en cada una de las tres posiciones. ¿Cuáles de los diodos $D_{B_1}$ y $D_{B_2}$ están conduciendo ? (0.4 pt)

1. Desconecten el LED de la fuente CC y conectenlo al generador de funciones, conforme la figura 4. Configuren el generador de funciones para generar una onda cuadrada entre 0 y $V_{cc}$ con frecuencia 5 Hz.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/cny70_ac.png" width="400">

   Figura 4: Circuito con sensor CNY70 en AC

   1. Midan el voltaje en el LED del sensor CNY70 en uno de los canales del osciloscopio, y $v_o$ en el otro, conforme la figura 4. Asegurense de conectar las tierras de cada sonda con la tierra del circuito. ¿Cómo se comparan las formas de onda de los dos voltajes? (0.4 pt)
   1. La respuesta del fototransistor no es instantanea cuando cambia la luminosidad. Aumenten la frecuencia, hasta que la mitad del período de la onda sea comparable con el tiempo de subida de $v_o$, y utilicen esta información para estimar cuanto tiempo el fototransistor del sensor CNY70 se demora en cambiar de valor (0.5 pt)
   2. ¿Cómo se compara la velocidad de la fotorresistencia con la del fototransistor ? (0.6 pt)
