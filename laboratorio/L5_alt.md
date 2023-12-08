# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 5 de Sistemas Electrónicos - Recuperativo
#### Segundo Semestre de 2023

## Recursos utilizados

| tipo | descripcion | cantidad | | tipo | descripcion | valor | cantidad |
| -- | --  | -- | --| -- | -- | -- | -- |
| Instrumentos  |  |  | | Dispositivos |  |  |  |
|  | Multímetro  | 1 | |  | Transistor NPN | 2N2222 | 1 |
|  | Fuente CC.  | 1 | |  | Resistencias (Ω) |  |  |
| Implementos |   |  | |  |  | 1k | 1 |
|  | Cable Banana-Caimán  | 2 | |  |  | 51k | 1 |
| Otros |   |  | |  | | 1M | 1 |
| | Protoboard |  1 | |  | | Potenciometro 10k (de panel) |1  |
| | cables, alicate, etc |  | |  | | |  |

## Resultado experimental e informe

1. Se armó el circuito de la Figura 1, utilizando una resistencia de 1k para $R_C$ y una de 51k para $R_B$. Se utilizó la fuente CC. para generar $V_{CC} = 10\ V$, y se limitó la corriente máxima a 200 mA.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_characterization.png" width="400">

    Figura 1: Caracterización de $I_B$ e $I_C$ del BJT

    Se ajustó el potenciometro hasta que $V_{R_B}$ tenga aproximadamente el valor indicado en cada línea de la siguiente tabla, se calcularon $I_B$ e $I_C$ y se midieron $V_{CE}$ y $V_B$. Los resultados obtenidos fueron los siguientes:
    
    ### Grupo A
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 0.98 | 0.066 | 9.767 | 534 |
    | 500 | 9.8 | 2.22 | 7.619 | 630 |
    | 1000 | 19.7 | 4.93 | 4.933 | 654 |
    | 2000 | 39.3 | 9.19 | 0.745 | 680 |
    | 3000 | 58.96 | 9.82 | 0.1126 | 691 |
    | 4000 | 78.6 | 9.84 | 0.089 | 693 |
    | 5000 | 98.3 | 9.85 | 0.079 | 695 |
    | 6000 | 117.9 | 9.86 | 0.071 | 697 |
    | 7000 | 137.6 | 9.87 | 0.065 | 698 |
    | 6000 | 157.2 | 9.87 | 0.060 | 700.2 |
    
    ### Grupo B
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 0.978 | 0.05 | 9.87 | 285 |
    | 500 | 11 | 2.59 | 7.34 | 615 |
    | 1000 | 21.1 | 5.2997 | 4.69 | 643 |
    | 2000 | 40.89 | 9.7747 | 0.21 | 670 |
    | 3000 | 59.6 | 9.9155 | 0.105 | 680 |
    | 4000 | 79.3 | 9.7647 | 0.085 | 687 |
    | 5000 | 100 | 9.9507 | 0.074 | 689 |
    | 6000 | 119.5 | 9.9588 | 0.066 | 689 |
    | 7000 | 139.5 | 9.9628 | 0.0606 | 691.3 |
    | 8000 | 158.5 | 9.9668 | 0.0561 | 692.1 |
    
    ### Grupo C
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 0.961 | 0.064 | 10.026 | 539 |
    | 500 | 9.725 | 2.474 | 7.609 | 638 |
    | 1000 | 19.569 | 5.086 | 5.009 | 659 |
    | 2000 | 39.333 | 9.589 | 0.504 | 689 |
    | 3000 | 58.963 | 9.980 | 0.106 | 694 |
    | 4000 | 78.490 | 10.000 | 0.085 | 695 |
    | 5000 | 98.039 | 10.011 | 0.074 | 696 |
    | 6000 | 117.608 | 10.018 | 0.066 | 697 |
    | 7000 | 137.235 | 10.024 | 0.060 | 698 |
    | 8000 | 156.902 | 10.025 | 0.056 | 700 |

    1. Consolide los resultados en una sólo tabla, donde cada celda contiene el promedio de los valores medidos por cada grupo. (2.5pt)

    1. Considerando la tabla con los valores promedios, Calcule el valor de $\beta$ para cada línea. (0.5 pt)

    1. Considerando la tabla con los valores promedios, ¿para qué valores de $I_B$ el transistor está operando en modo activo, y para qué valores está en modo saturado ? (0.5 pt)

    1. Considerando la tabla con los valores promedios, ¿para que rango de valores de $V_B$ el transistor está operando en modo activo? (0.5 pt)

2. Se armó el circuito de la Figura 2, utilizando $R_C = 1\ k\Omega$ y $R_B = 1\ M\Omega$. Ésta forma de conectar el potenciometro $R_{var}$ permite utilizarlo como una resistencia variable.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_characterization_vce_alt.png" width="400">

   Figura 2: Caracterización de $I_C$ y $V_{CE}$ del BJT

   Se cambió $R_{var}$ a distintos valores y para cada uno se midió $V_{CE}$ e $I_C$. Los valores obtenidos fueron los siguientes:

   | $V_{CE}$ (V) | $I_C$ (mA) |
   | -- | -- |
   | 0.0612 | 0.733 |
   | 0.064 | 0.802 |
   | 0.0703 | 0.924 |
   | 0.0744 | 1.012 |
   | 0.075 | 1.022 |
   | 0.108 | 1.702 |
   | 0.140 | 2.080 |
   | 0.160 | 2.190 |
   | 1.222 | 1.81 |
   | 2.7 | 2.35 |
   | 5.7 | 2.4 |
   | 7.464 | 2.3751 |
   
   1. Dibuje la gráfica de $I_C$ por $V_{CE}$. (1 pt)

   1. Indique en la gráfica la región de modo activo y la región de modo saturado. (1 pt)
