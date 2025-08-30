# Respuesta en estado estacionario y transitoria

## Capacitores

Cuando hay dos materiales conductores eléctricos separados por un material aislante eléctrico, se observa que al aplicar una diferencia de voltaje entre los materiales conductores, cargas eléctricas se acumulan en ellos (una vez que no son capaces de cruzar el material aislante). Además, la cantidad de carga eléctrica que se acumula (Q) es proporcional al voltaje aplicado (V):

$Q \propto V$

La constante de proporcionalidad se conoce como capacitancia:

$C = \frac{Q}{V}$

Por lo tanto:

$Q = CV$

Al derivar con respecto al tiempo:

$\frac{dQ}{dt} = \frac{d(CV)}{dt}$

La carga eléctrica en movimiento es la corriente eléctrica ($i$), lo que significa que el cambio de carga eléctrica es igual a la corriente. Además, si $C$ es constante:

$i = C\frac{dV}{dt}$

(ecuación 1)

## Circuitos eléctricos como sistemas dinámicos

Consideren el siguiente circuito eléctrico, con entrada $v_{in}$ y salida $v_{out}$:

<img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_lowpass.png" width="200"> 

Supongan que $v_{in}$ es un escalón unitario. Es decir, las condiciones iniciales son nulas y en $t=0$ se conecta $v_{in}$ a una fuente de voltaje constante de 1 V. ¿Cuanto vale $v_{out}(t)$ ?

### Intento 1: ecuaciones diferenciales

ATENCIÓN: la resolución a continuación está aqui de forma referencial, pero no se recomienda para resolver ejercicios similares. 

Notese que la corriente en la resistencia es igual a la corriente en el capacitor, por lo tanto, podemos escribir:

$i_R = i_C$

Al utilizar la Ley de Ohm y la ecuación del capacitor (ecuación 1) se obteniene:

$\frac{V_R}{R} = C\frac{dV_C}{dt}$

Como $V_R=v_{in}-v_{out}$ y $V_C=v_{out}-0$,

$\frac{v_{in}-v_{out}}{R} = C\frac{dv_{out}}{dt}$

$\implies RC\frac{dv_{out}}{dt} + v_{out} = v_{in}$

Que es una ecuación diferencial lineal heterogenea con coeficientes constantes.

Una forma de resolverla es encontrando la raiz de la ecuación característica ($RCx + 1 = 0 \implies x = -1/RC$), lo que nos permite escribir la familia de soluciones de la versión homogenea de la ecuación:

$V_{out,homogeneo}(t) = Ke^\frac{-t}{RC}$

Con una constante $K$. Para encontrar la solución de la versión heterogenea, basta observar que como $v_{in}=1$, $v_{out} = 1$ es una solución de la ecuación. Por lo tanto, la solución general tiene la forma

$V_{out,heterogeneo}(t) = 1+Ke^\frac{-t}{RC}$

Para encontrar K basta aplicar las condiciones iniciales nulas:

$v_{out}(0) = 0$

$\implies 1+Ke^\frac{-0}{RC} = 0$

$\implies 1+K = 0$

$\therefore K = -1$

Y la solución del problema es:

$v_{out}(t) = 1-e^\frac{-t}{RC}$

#### Respuesta en Estado Estacionario

Es interesante observar el comportamiento de $v_{out}(t)$ conforme $t \to \infty$ . El segundo término ($e^\frac{-t}{RC}$) tiene una exponencial cuyo exponente es el tiempo multiplicado por una constante negativa. Así, conforme $t \to \infty$, este término tiende a cero. Por lo tanto,

$\lim_{t \to \infty} v_{out}(t) = 1$

Es decir, conforme avanza el tiempo, la respuesta tiende a estabilizarse en un valor igual al primer término de la expresión de $v_{out}(t)$.

Llamaremos el término con estas características de "**respuesta en estado estacionario**". Es decir, la respuesta en estado estacionario es el "estado final" del sistema, el que se alcanza después de un tiempo suficientemente largo.

#### Respuesta transitoria

En contraste con la respuesta en estado estacionario, la "**respuesta transitoria**" es la forma como evoluciona el sistema antes de alcanzar el estado estacionario.

Para el circuito de ejemplo, la respuesta transitoria es:

$v_{out}(t) = 1-e^\frac{-t}{RC}$

La que tiene la siguiente forma:

![unit_response](../img/unit_step_response_first_order.png)

El producto $RC$ se conoce como la constante de tiempo de este sistema, la cual normalmente se identifica con la letra tau ($\tau$). 

- Cuando $t=\tau$, $v_{out} = 1 - e^{-1} \approx 0.632$. Es decir, $\approx 63.2$% del valor en estado estacionario.
- Cuando $t=2\tau$, $v_{out} = 1 - e^{-2} \approx 0.865$. Es decir, $\approx 86.5$% del valor en estado estacionario.
- Cuando $t=3\tau$, $v_{out} = 1 - e^{-3} \approx 0.950$. Es decir, $\approx 95.0$% del valor en estado estacionario.
- Cuando $t=4\tau$, $v_{out} = 1 - e^{-4} \approx 0.982$. Es decir, $\approx 98.2$% del valor en estado estacionario.

### Intento 2: Laplace

Recordatorio:

$\mathcal{L}^{-1} \left\\{ \frac{1}{s+a} \right\\} = e^{-at}$

Una vez que obtuvimos la ecuación característica del circuito

$RC\frac{dv_{out}}{dt} + v_{out} = v_{in}$

Podemos resolverla aplicando la transformada de laplace:

$\mathcal{L} \left\\{ RC\frac{dv_{out}}{dt} + v_{out} \right\\} = \mathcal{L} \left\\{ v_{in} \right\\}$

$RC(sV_{out} - v_{out}(0)) + V_{out} = V_{in}$

donde $V_{out}$ y $V_{in}$ representan la transformada de Laplace de $v_{out}$ y $v_{in}$, respectivamente. Como las condiciones iniciales son nulas, $v_{out}(0) = 0$ y se obtiene:

$RCsV_{out} + V_{out} = V_{in}$

$V_{out}(RCs + 1) = V_{in}$

$V_{out} = \frac{1}{1+RCs}V_{in}$

Que también se puede expresar como una función de transferencia:

$H(s) = \frac{V_{out}}{V_{in}} = \frac{1}{1+RCs}$

Una vez que se tiene la función de transferencia, para resolver el problema basta reemplazar $V_{in}$ por un escalón unitario ($1/s$), y, utilizando fracciones parciales, resolver la transformada inversa de Laplace:

$V_{out} = \frac{1}{1+RCs}V_{in} =  \frac{1}{1+RCs}\frac{1}{s}$

$V_{out} = \frac{-RC}{1+RCs} + \frac{1}{s}$

$\implies v_{out} = \mathcal{L}^{-1} \left\\{ V_{out} \right\\} = \mathcal{L}^{-1} \left\\{  \frac{-RC}{1+RCs} + \frac{1}{s} \right\\}$

$\implies v_{out} = \mathcal{L}^{-1} \left\\{  \frac{-1}{s+\frac{1}{RC}} + \frac{1}{s} \right\\}$

$\therefore v_{out} = -e^\frac{-t}{RC}+1$

Al realizar los pasos anteriores se puede notar algo interesante: El término $-e^\frac{-t}{RC}$ proviene del término con denominador $(1+RCs)$, que a su vez proviene de la función de transferencia del circuito. En otras palabras, independentemente de la forma y valor de $v_{in}$, al hacer fracciones parciales siempre obtendremos un factor con denominador igual al de la función de transferencia, el que dará origen a una función de la forma  $Ke^\frac{-t}{RC}$, con alguna constante K. Es decir, *el término exponencial de la respuesta transitoria está determinado por la función de transferencia*. Además, nótese que la constante que multiplica $t$ es exactamente el pólo de $H(s)$:

$1+RCs = 0 \implies s= \frac{-1}{RC}$

Lo que nos lleva a la siguiente conclusión:

**La constante de tiempo de la respuesta transitoria depende solamente de la función de transferencia del sistema.**

---

Para circuitos estables con entradas constantes, la respuesta en estado estacionario coincide con la respuesta que se obtienen haciendo un analisis DC.

---

Además, en vez de resolver el circuito eléctrico y después aplicar la transformada de laplace, podríamos primero aplicar la transformada de laplace y después resolver el circuito. Al hacerlo, obtenemos las siguiente relación para la resistencia:

$v(t) = R i(t)$

$\implies V(s) = R I(s)$

Y para el capacitor:

$i(t) = C \frac{d v(t)}{dt}$

(asumiendo condiciones iniciales nulas)

$\implies I(s) = C s V(s)$

$\implies V(s) = \frac{1}{C s} I(s)$

Se observa que la última expresión se parece a la expresión de la resistencia, pero con un valor de $R = \frac{1}{C s}$ .

Por lo tanto, si reemplazamos los capacitores en el circuito por "resistencias" con valores $\frac{1}{C s}$, al resolverlo encontraremos la función de transferencia.

## capítulos del libro ???
- Capítulo 9
  - sesión 9.3 y 9.6
- Capítulo 11
  - sesión 11.5 (parte de amplificador de instrumentación) 

## ejercicios recomendados ???
- Capítulo 9
  - ejercicios 11 y 12
