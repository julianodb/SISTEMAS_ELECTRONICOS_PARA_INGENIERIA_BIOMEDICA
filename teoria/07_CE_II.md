# Amplificador con emisor común II

## Ejercício: Amplificador con emisor común con polarización por divisor de voltaje y estabilizada por emisor

Calcular $I_{C_Q}$ y $A_V$.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter.png" width="300"> 

1. Analisis DC

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_thevenin.png" width="300">

$V_{th} = \frac{R_2}{R_1 + R_2} V_{CC}$ 

$R_{th} = R_1 // R_2 = \frac{R_1 R_2}{R_1 + R_2}$

Malla base-emisor

$V_{th} - R_{th} I_B - V_{BE} - R_E I_E = 0$

Como $I_E = I_C + I_B$ y, asumiendo modo activo, $I_C = \beta I_B$, podemos utilizar $I_E = (\beta + 1) I_B$ para obtener:

$V_{th} - R_{th} I_B - V_{BE} - R_E (\beta + 1) I_B = 0$

$I_B = \frac{V_{th}  - V_{BE}}{R_{th} + (\beta + 1) R_E}$

y finalmente calcular $I_{C_Q} = \beta I_B$.

Para comprobar modo activo, calculamos $V_{CE}$ con

$V_C = V_{CC} - R_C I_{C_Q} $

y

$V_{E} = R_E I_{E} = R_E (\beta + 1) I_B$

2. Analisis AC

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_small_signal.png" width="300"> 

malla de la base:

$v_{i_{AC}} - r_\pi i_{B_{AC}} = 0$

con 

$r_{\pi} = \frac{\beta n V_T}{I_{C_Q}}$

por lo tanto,

$ i_{B_{AC}} = \frac{I_{C_Q}}{\beta n V_T} v_{i_{AC}}$

Luego

$ i_{C_{AC}} = \beta i_{B_{AC}} = \frac{I_{C_Q}}{ n V_T} v_{i_{AC}} $

En la malla del colector:

$v_{o_{AC}} + R_C i_{C_{AC}} = 0$

$v_{o_{AC}} = - R_C i_{C_{AC}}$

$v_{o_{AC}} = - \frac{R_C I_{C_Q}}{ n V_T} v_{i_{AC}} $

Como la ganancia de voltaje es $A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$,

$A_V = \frac{- R_C I_{C_Q} }{n V_T}$

## Bibliografia

Atención: en clase hemos preferido la notación de $r_\pi$ para la resistencia entre base y emisor en el modelo de pequeñas señales, pero en el libro se prefiere la notación $\beta r_e$. De todas formas, son equivalentes:

$r_{\pi} = \beta r_e$

$r_{e} = \frac{V_T}{I_{C_Q}}$

$r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 4, sesión 4.5
- Capítulo 5, sesiones 5.5 y 5.6

### Ejercícios Recomendados
- Capítulo 4
  - Sesión 4.5: ej 20 (a, b y c)
- Capítulo 5
  - Sesíon 5.5: ej 13 (ignorar $r_o$)
