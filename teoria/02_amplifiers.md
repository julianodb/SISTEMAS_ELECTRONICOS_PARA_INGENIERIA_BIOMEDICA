# Amplificadores

- Introducción
- modelo de 4 puertas
- Efecto de $R_L$ y $R_S$
- Definición de impedancia de entrada ($Z_i$) y de salida ($Z_o$)

## Introducción 



## Efecto de $R_L$ y Definición de impedancia de salida ($Z_o$)

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

En este nuevo circuito, aplicando la formula de divisor de votltaje entre $Z_o$ y $R_L$, se puede llegar al mismo resultado anterior:

$v_{o_{AC}} = \frac{R_L}{R_L+Z_o} A_{V_{NL}} v_{i_{AC}}$

O, de forma equivalente:

$A_V = \frac{R_L}{R_L+Z_o} A_{V_{NL}} $

## Efecto de $R_S$ y Definición de impedancia de entrada ($Z_i$)

Si ahora modelamos el circuito que antecede al amplificador utilizando su equivalente de Thevenin, obtenemos:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_thevenin_rl_rs.png" width="300"> 

Donde $v_S$ es el voltaje del sensor y $R_S$ su resistencia de salida.

Nótese que la entrada del amplificador se modeló como una resistencia llamada Impedancia de entrada, identificada por el símbolo $Z_i$. Para el amplificador de emisor común con el cual iniciamos este análisis, es fácil ver que $Z_i = R_B$.

Utilizando el circuito completo, se puede mostrar que:

$v_{o_{AC}} = \frac{Z_i}{Z_i+R_S} \frac{R_L}{R_L+Z_o} A_{V_{NL}} v_S$

Es decir, la ganancia total es:

$A_{V} = \frac{v_{o_{AC}}}{v_S} = \frac{Z_i}{Z_i+R_S} \frac{R_L}{R_L+Z_o} A_{V_{NL}}$

Al igual que al agregar una carga, al considerar la resistencia de salida del circuito que antecede el amplificador la ganancia se ve reducida nuevamente, ésta vez por un factor $\frac{Z_i}{Z_i+R_S}$.

## Un amplificador ideal y compromisos

Al diseñar un circuito amplificador, el objetivo es tener una alta ganancia de voltaje. Sin embargo, el efecto de las impedancias de entrada y de salida pueden afectar negativamente a la ganancia total. De ésta forma, buscando que los factores asociados a dichas impedancias sean lo más grandes posible (lo más cercanos a 1), es deseable que $Z_i$ sea lo más grande posible y $Z_o$ lo más pequeña posible. En el caso ideal,

- $A_{V_{NL}} = \infty$
- $Z_i = \infty$
- $Z_o = 0$

En la práctica, no es posible mejorar todos los parámetros del amplificador, pues al mejorar uno puede que se afecte negativamente a otro. Si observamos las fórmulas para $A_{V_{NL}}$ y $Z_o$ del amplificador con emisor común, por ejemplo:

- $\|A_{V_{NL}}\| = \frac{R_C I_{CQ}}{V_T}$
- $Z_o = R_C$

Podemos observar que si queremos disminuir $Z_o$, es necesario disminuir $R_C$. Sin embargo, al hacerlo, también estamos disminuyendo la ganancia ($A_{V_{NL}}$). Hay compromisos similares con respecto a $Z_i$. As veces es posible mejorarlos pero aumentando el consumo de energía del amplificador, o el costo de sus componentes.

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
