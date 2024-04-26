# Amplificadores

- Efecto de $R_L$ y $R_S$
- Definición de impedancia de entrada ($Z_i$) y de salida ($Z_o$)

Si empezamos con un amplificador con emisor común:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_base_polarized_isource.png" width="300"> 

Podemos obtener su modelo de pequeñas señales, con $r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_rb_small_signal.png" width="300"> 

Y calcular la ganancia de voltaje AC:

$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}} = -\frac{R_C I_{C_Q}}{V_T}$

Sin embargo, si conectamos un circuito a la salida del amplificador, la ganancia se podría ver afectada. Por ejemplo, si modelamos el circuito externo como una resistencia de carga $R_L$ (L de load):

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_base_polarized_isource_rl.png" width="300"> 

El nuevo modelo de pequeñas señales sería:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_rb_small_signal_with_rl.png" width="300"> 

Y la ganancia de voltaje AC:

$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}} = -\frac{R_L}{R_L+R_C} \frac{R_C I_{C_Q}}{V_T} $

Si llamamos a la ganancia sin carga $A_{V_{NL}}$ (NL = no load):

$A_{V_{NL}} = -\frac{R_C I_{C_Q}}{V_T}$

La ganancia con la carga se puede escrbir como:

$A_V = \frac{R_L}{R_L+R_C} A_{V_{NL}} $

Se puede notar que la ganancia con la carga se ve dismiuida por un factor $\frac{R_L}{R_L+R_C}$, que es menor que 1 (el denominador es mayor que el numerador).

Podemos llegar al mismo resultado si utilizamos un modelo equivalente de Thevenin para el circuito del amplificador en pequeñas señales:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rl.png" width="300"> 

Donde la fuente de voltaje tiene un valor de $A_{V_{NL}} v_{i_{AC}}$ y la resistencia $R_C$. Utilizar el equivalente de Thevenin nos permite generalizar el resultado, una vez que otros circuitos de amplificadores con distintas conexiones y componentes también se podrían modelar como su equivalente de Thevenin. En este sentido, llamaremos la resistencia que aparece en el circuito equivalente de *impedancia de salida*, identificada por el simbolo $Z_o$.

common_emitter_small_signal

RC_common_emitter_double

RC_common_emitter_output **

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 5, sesiones 5.13, 5.15 y 5.16

### Ejercícios Recomendados
- Capítulo 5
  - Sesión 5.5: ej 9 (a y b)
  - Sesión 5.6: ej 14
  - Sesión 5.13-5.15: ejs 36, 37, 38, 39, 40, 41, 42
  - Sesión 5.16: ejs 45, 46, 47, 48
