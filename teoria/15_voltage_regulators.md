# Reguladores de Voltaje

## Introducción

El objetivo de esta clase y la siguiente es completar el conocimiento necesario para entender el funcionamiento completo de una fuente de alimentación.

En el ambiente de trabajo, la fuente de energía eléctrica es típicamente una fuente de corriente alterna (220 V @ 50 Hz en Chile, por ejemplo). Sin embargo, practicamente todos los circuitos electrónicos estudiados en este ramo requieren de una fuente de alimentación de corriente contínua. Para poder convertir la fuente ca en un voltaje cc, se utilizan las fuentes de alimentación. Un diagrama simplificado del funcionamiento de una fuente de alimentación se muestra a continuación.

![fuente](../img/fuente_alimentacion.png)

Figura 1: Diagrama de bloques de una fuente de alimentación y formas de onda intermedias

### Transformador

La primera etapa es normalmente un transformador, el que baja el voltaje (por ejemplo de 220 V rms a 18 V rms) y provee aislamento galvanico entre la fuente y la carga. El aislamiento galvánico es una separación física y eléctrica entre dos circuitos, permitiendo la transferencia de energía o señales sin conexión eléctrica directa, lo que previene interferencias, bucles de tierra y aumenta la seguridad al separar diferentes potenciales eléctricos (como la tierra de una red de la de un dispositivo). En el caso del transformador, se logra transmitir la energía convirtiendo el voltaje alterno de la fuente en flujo magnético a través de una bobina, y luego, en una segunda bobina aislada eléctricamente de la primera, convirtiendo el flujo magnético de nuevo en un voltaje alterno.

### Rectificador

La segunda etapa es un Rectificador. Hemos estudiado rectificadores en las clases 10 y 11 en el contexto del estudio de diodos. Como recordatorio, el siguiente circuito convierte un voltaje alterno (con parte positiva y negativa) en un voltaje rectificado que solamente tiene voltajes positivos:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/full_bridge_no_transformer_no_cap.png" width="350">

Figura 2: Rectificador de onda completa

![fullwavegif](../img/instrumentationtools.com_full-wave-bridge-rectifier-operation.gif)

Figura 3: Animación mostrando el funcionamiento del rectificador de onda completa

![fullwave_waveforms](../img/Precision-Full-Wave-Rectifier-013.jpg)

Figura 4: Forma de onda de la entrada y salida del rectificador de onda completa

### Filtro

Una vez que se tiene una señal rectificada, es necesario eliminar las oscilaciones. Esto se hace inicialmente con un filtro. Una forma simple


## Capítulos del libro
- Capítulo 15
   - sesiones 15.1, 15.5 y 15.6
   
## Ejercicios recomendados
- Capítulo 15
  - sesión 15.5 ejercicios 19, 21, 23, 26 y 27
