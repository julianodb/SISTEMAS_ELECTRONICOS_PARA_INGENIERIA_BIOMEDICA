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

    Se ajustó el potenciometro hasta que $V_{R_B}$ tenga aproximadamente el valor indicado en cada línea de la siguiente tabla. Los resultados obtenidos fueron los siguientes

    ### Grupo A
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 1.01 | x | x | x |
    | 500 | 10.72 | x | x | x |
    | 1000 | 20.84 | x | x | x |
    | 2000 | 40.31 | x | x | x |
    | 3000 | 60.76 | 0.996 | 0.002 | 749 |
    | 4000 | 79.63 | 0.996 | 0.003 | 757 |
    | 5000 | 99.69 | 0.996 | 0.003 | 765 |
    | 6000 | 119.7 | 0.996 | 0.003 | 770 |
    | 7000 | 137.8 | 0.995 | 0.003 | 780 |
    | 8000 | 161.2 | 0.995 | 0.003 | 785 |
    
    ### Grupo B
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
    
    ### Grupo C
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 1.07 | 0.36 | 9.78 | 612 |
    | 500 | 10.75 | 4.05 | 6.20 | 667 |
    | 1000 | 21.5 | 7.6 | 2.701 | 690 |
    | 2000 | 43.01 | 10.13 | 0.201 | 715 |
    | 3000 | 64.51 | 10.18 | 0.152 | 718 |
    | 4000 | 86.02 | 10.27 | 0.133 | 720 |
    | 5000 | 107.53 | 10.28 | 0.121 | 721 |
    | 6000 | 129.03 | 10.29 | 0.113 | 722 |
    | 7000 | 150.54 | 10.30 | 0.106 | 723 |
    | 8000 | 172.04 | 10.30 | 0.100 | 724 |
    
    ### Grupo D
    | $V_{R_B}$ (mV) | $I_B$ ($\mu A$) | $I_C$ (mA) | $V_{CE}$ (V) | $V_B$ (mV) |
    | -- | -- | -- | -- | -- |
    | 50 | 1 | 0.0475 | 9.98 | 558 |
    | 500 | 10 | 4.11 | 5.89 | 665 |
    | 1000 | 20 | 7.88 | 2.126 | 680 |
    | 2000 | 40 | 9.84 | 0.184 | 710 |
    | 3000 | 60 | 9.88 | 0.144 | 713 |
    | 4000 | 80 | 9.9 | 0.127 | 715 |
    | 5000 | 100 | 9.3 | 0.116 | 717 |
    | 6000 | 120 | 9.92 | 0.108 | 717 |
    | 7000 | 140 | 9.925 | 0.1016 | 718.9 |
    | 8000 | 160 | 9.93 | 0.096 | 719 |

    1. Consolide los resultados en una sólo tabla, donde cada celda contiene el promedio de los valores medidos por cada grupo. (2.5pt)

    1. Considerando la tabla con los valores promedios, Calcule el valor de $\beta$ para cada línea. (0.5 pt)

    1. Considerando la tabla con los valores promedios, ¿para qué valores de $I_B$ el transistor está operando en modo activo, y para qué valores está en modo saturado ? (0.5 pt)

    1. Considerando la tabla con los valores promedios, ¿para que rango de valores de $V_B$ el transistor está operando en modo activo? (0.5 pt)


1. Se fijó la posición del potenciometro $R_{pot}$ para que generara un valor de $V_{CE} = 5\ V$. Se conectó un segundo potenciometro $R_{var}$ entre $R_C$ y el colector, conforme indica la Figura 2. Ésta forma de conectar el potenciometro permite utilizarlo como una resistencia variable.

   <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_characterization_vce.png" width="400">

   Figura 2: Caracterización de $I_C$ y $V_{CE}$ del BJT

   1. Se cambió $R_{var}$ a distintos valores y para cada uno se midió $V_{CE}$ e $I_C$. Los valores obtenidos fueron los siguientes:

   | $V_{CE}$ (V) | $I_C$ (mA) |
   | -- | -- |
   | 0.09 | 0.89 |
   | 0.104 | 1.3 |
   | 0.115 | 1.672 |
   | 0.126 | 2.065 |
   | 0.137 | 2.455 |
   | 0.149 | 2.865 |
   | 0.162 | 3.247 |
   | 0.180 | 3.64 |
   | 0.192 | 3.650 |
   | 0.21 | 4.024 |
   | 0.223 | 3.945 |
   | 0.32 | 4.421 |
   | 0.886 | 4.246 |
   | 0.925 | 4.195 |
   | 1.632 | 4.317 |
   | 2.528 | 4.409 |
   | 3.85 | 4.501 |
   | 5.3 | 4.68 |
   | 5.66 | 4.613 |
   
   Dibuje la gráfica de $I_C$ por $V_{CE}$. (1.5 pt)

   1. Indique en la gráfica la región de modo activo y la región de modo saturado. (0.5 pt)
