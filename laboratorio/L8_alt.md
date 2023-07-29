# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Lab 8 de Sist. Electrónicos - Recuperativo

## Recursos utilizados

| tipo | descripcion | cantidad | 
| -- | -- | -- | 
| Instrumentos |  |  |
|  | Osciloscopio | 1 |
|  | Generador de señales | 1 | 
|  | Fuente CC. | 1 |
| Implementos |  |  | 
|  | Cable Banana-Caimán | 2 | 
|  | Sonda | 2 | 
|  | BNC-Caimán | 1 |
| Otros |  |  | 
| | cables, alicate, etc | | 
| | Circuito del amplificador 1 | 1 | 

## Resultado experimental e informe

Se ajustó la fuente CC para 5V @ 100 mA. Se ajustó el generador de señales para generar una señal sinusoidal con ~100 mV peak-to-peak. Se conectaron las tierras del circuito, fuente CC, osciloscopio y generador de señales entre sí. Se conectaron los 5V de la fuente CC al cable Vcc del circuito. Se conectaron el generador de señales a IN y el osciloscopio a OUT.

Se midió la amplitud de la señal en OUT con distintas frecuencias de la señal del generador. La siguiente tabla resume los resultados obtenidos.
| frecuencia (Hz) | Amplitud Grupo A (mV) | Amplitud Grupo B (mV) | Amplitud Grupo C (mV) | Amplitud Grupo D (mV) |
| -- | -- | -- | -- | -- |
| 1000 | 50.8 | 108 | 63 | 124 |
| 100 | 50.8 | 102 | 63 | 130 |
| 20 | 50.8 | 102 | 63 | 120 |
| 10 | 50.8 | 102 $\pm$ 2 | 55 | 124 |
| 5 | 46.4 | 88 $\pm$ 4 | 55 | 116 |
| 2 | 29.6 | 60 $\pm$ 8 | 46 | 84 |
| 1 | 25.2 | 40 $\pm$ 8 | 31 | 46 |
| 0.5 | 11.6 | 22 $\pm$ 2 | 8.8 | 23.6 |
| 0.1 | 8.8 | 12 | 4.4 | 2.44 |

1. ¿Qué tipo de filtro está implementado ? (1 pt)

1. ¿ Cuál es la frecuencia de corte para cada grupo ? (2 pt)

1. ¿ Cual es la función de transferencia entre IN y OUT si no se considera el transistor Q en la figura 1 ? (1 pt)

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_lab8.png" width="300">

    Figura 1: Ejemplo de circuito analizado en laboratorio (los valores de las resistencias eran distintos para cada grupo)

1. Estimen la amplitud de la señal que habrían medido cada grupo si la frecuencia de entrada fuese: 2 kHz y 0.05 Hz (1 pt)

1. Estimen el valor de $r_\pi$, considerando los valores de la figura 1 y la frecuencia de corte del grupo D. (1 pt) AYUDA: Consideren el modelo de pequeñas señales y no olviden incluir $r_\pi$. AYUDA2: no es necesario saber la fórmula para $r_\pi$.