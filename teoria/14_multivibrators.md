# Multivibradores

## Introducción

Los multivibradores son sistemas dinámicos que poseen 2 estados, y se clasifican de acuerdo a cuantos de estos estados son estados: 
1. Si ambos estados son estados, se denomina multivibrador biestable
2. Si ninguno de los estados es estable, se denomina multivibrador astable 
3. Si apenas 1 de los estados es estable, se denomina multivibrador monoestable

## 1. Multivibrador biestable

### Ejemplo mecanico

Un ejemplo mecánico de un multivibrador biestable es una barra comprimida en su dirección longitudinal, conforme indica la figura a continuación

<img src="https://upload.wikimedia.org/wikipedia/commons/4/43/Buckled_column.svg" width="200">

La barra forma una curva para equilibrar los esfuerzos en ella aplicados. Si se intenta deshacer la curva aplicando un segundo esfuerzo, se observa que al dejar de realizar dicho esfuerzo, la barra vuelve a la configuración con la curva. Sin embargo, si el esfuerzo es grande lo suficiente, se observa que la barra "salta" a una segunda configuración, donde la curva está para el lado opuesto. Esta segunda configuración es estable, pues nuevamente al intentar moverla y soltar, la barra simplemente vuelve a formar la curva.

![14_buckling](../img/14_buckling.png "buckling")

La barra por lo tanto es un sistema con 2 estados estables: curvado hacia la izquierda y curvado hacia la derecha. Para pasar de un estado a otro, es necesario aplicar un esfuerzo y desplazar la barra hasta que supere cierto umbral,  momento en el cual el sistema "salta" al otro estado estable. 
Como curiosidad, cuando el fenomeno estructural descrito anteriormente se conoce como pandeo.

### Comparador

Con respecto a circuitos eléctricos biestables, en realidad ya hemos estudiado un ejemplo: el comparador.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/comparator.png" width="300">

La salida del amplificador operacional depende de la diferencia entre $V_+$ y $V_-$: si es positiva la salida se satura con el voltaje de almientación positiva, y si la diferencia es negativa la salida se satura con el voltaje de alimentación negativo. El sistema, por lo tanto, tiene dos estados estables: salida en $+V_{CC}$ y salida en $-V_{CC}$. Al igual que en el caso mecanico, perturbar la entrada no cambia la salida a menos que se supere cierto umbral (0 V, en este caso), lo que hace con que el sistema "salte" a la otra configuración estable.

Al utilizar el comparador en circuitos eléctricos para comparar señales se puede encontrar el problema de "rebote". Debido a que las señales reales pueden contener ruido, el cruce cuando una señal pasa de ser menor que la referencia a ser mayor puede no ser tan claro. Como se indica en la imagen a continuación, puede que hayan varios cruces de polaridad en el momento en que las dos señales tienen valores cercanos. La señal superior es la salida del amplificador.

<img src="https://www.analog.com/-/media/images/analog-dialogue/en/volume-34/number-1/articles/curing-comparator-instability-with-hysteresis/comparators-fig-01.gif?la=en&imgver=1" width="300">

Para corregir el fenomeno de "rebote", se puede modificar el circuito del comparador para que tenga dos umbrales distintos: uno para transicionar de $-V_{CC}$ a $+V_{CC}$, y otro para cambiar en la dirección contraria. Dichos comparadores se denominan comparadores con histeresis, o comparadores schmitt.

### Comparador Schmitt

Una posible implementación del comparador schmitt se muestra a continuación.

<img src="https://julianodb.github.io/electronic_circuits_diagrams/comparator_schmitt_non_inverting.png" width="300">

Para analizarlo, se considera el voltaje en $V_+$, el cual estará dado por el divisor resistivo compuesto por $R_8$ y $R_9$:

$$ V_+ = \frac{R_9 v_i + R_8 v_o}{R_8 + R_9}$$

Si definimos $\beta = \frac{R_8}{R_9}$, se obtiene:

$$ V_+ = \frac{ v_i + \beta v_o}{\beta + 1}$$

Si suponemos que $V_+ < V_-$, la salida del amplificador es $-V_{CC}$. Dicha condición se mantendrá mientras la inegualdad sea verdadera. Por lo tanto:

$$V_+ < V_-$$
$$ \frac{ v_i + \beta v_o}{\beta + 1} <0 $$
$$ v_i - \beta V_{CC} <0 $$
$$ v_i < \beta V_{CC} $$

Es decir, mientras la entrada se mantenga menor que $\beta V_{CC}$, la salida se mantendrá en $-V_{CC}$. Si se grafica el resultado en una gráfica de $v_o$ por $v_i$, se obtiene la siguiente figura:

TBD

Analicemos el otro caso, en que $V_+ > V_-$. La salida del amplificador será $+V_{CC}$, y dicha condición se mantendrá mientras la inegualdad sea verdadera:

$$V_+ > V_-$$
$$ \frac{ v_i + \beta v_o}{\beta + 1} > 0 $$
$$ v_i + \beta V_{CC} > 0 $$
$$ v_i > - \beta V_{CC} $$

Es decir, mientras la entrada se mantenga mayor a $- \beta V_{CC}$, la salida se mantendrá en $+V_{CC}$. Si se grafica el resultado en la gráfica anterior de $v_o$ por $v_i$, se obtiene la siguiente figura:

TBD

Primeramente, notese que $v_o$ tiene dos posibles valores: $-V_{CC}$ o $+V_{CC}$. Se trata, por lo tanto, de un multivibrador. Además, cuando la salida cambia a uno de estos valores, se mantiene en él si no cambian las condiciones de entrada. Son, por lo tanto, dos estados estables. Se trata por lo tanto de un multivibrador biestable. 

Sin embargo, esta configuración contiene una característica peculiar que lo distingue del comparador tradicional. Si la entrada está entre $-\beta V_{CC}$ y $+\beta V_{CC}$, la salida puede estar en alguno de los dos estados. Solamente la información del valor de $v_i$ es insuficiente para determinar en cual de los dos. Es necesario saber, también, el pasado del circuito. Si antes de entrar en la región entre $-\beta V_{CC}$ y $+\beta V_{CC}$ $v_i$ era mayor que $+\beta V_{CC}$, la salida estará en $+V_{CC}$. Si, en el caso contrario, $v_i$ era menor que $-\beta V_{CC}$ antes de entrar a la región central, la salida se mantiene en $-V_{CC}$. Por ésta razon se dice que el comparador con histeresis es un circuito con memoria, y se puede utilizar como bloque básico para construir circuitos digitales.

Otra forma de entender el circuito es observar que el umbral de $v_i$ para hacer la salida cambiar a $+V_{CC}$ es $+\beta V_{CC}$, pero el umbral de $v_i$ para hacer la salida cambiar a $-V_{CC}$ es $-\beta V_{CC}$. Es decir, el comparador tiene dos umbrales distintos. Es ésta característica que lo hace muy útil para minimizar el fenómeno de rebote descrito anteriormente. Esto porque al cruzar el umbral positivo por primera vez, será más dificil que el voltaje cruce el umbral negativo que se encuentra más bajo por diversos milivolts. Se generan transiciones más limpias, en este caso.

## 2. Multivibrador astable

<img src="https://julianodb.github.io/electronic_circuits_diagrams/astable_multivibrator.png" width="300">

## 3. Multivibrador monoestable

<img src="https://julianodb.github.io/electronic_circuits_diagrams/monostable_multivibrator.png" width="400">