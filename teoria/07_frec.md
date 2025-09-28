# Respuesta em frecuencia

<details>

<summary> Recordatorio </summary>

<br />

$\mathcal{L} \left\{  e^{-at} \right\} = \frac{1}{s+a}$

$\mathcal{L} \left\{ cos(\omega t) \right\} = \frac{s}{s^s+\omega^2}$

$\mathcal{L} \left\{ sen(\omega t) \right\} = \frac{\omega}{s^s+\omega^2}$

$\mathcal{L} \left\{ cos(\omega t + \phi) \right\} = \frac{s\ cos(\phi) + \omega\ sin(\phi)}{s^s+\omega^2}$

</details>

## Filtros pasivos

¿Cuanto vale $v_{out} (t)$ si $v_{in} (t) = 2\cos{(\omega t)}$ ?

<img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_lowpass.png" width="200"> 

$H(s) = \frac{1}{RCs+1}$

$V_{in}(s) = 2\frac{s}{s^2+\omega^2}$

$V_{out}(s) = H(s)V_{in}(s) = 2\frac{1}{RCs+1}\frac{s}{s^2+\omega^2}$

Para aplicar la transformada de Laplace inversa necesitamos separar la función resultante en fracciones parciales. Aplicando el método de Heaviside:

$V_{out}(s) = 2\frac{1}{RCs+1}\frac{s}{s^2+\omega^2} = 2\frac{s}{(RCs+1)(s+j\omega)(s-j\omega)} = 2(\frac{A}{RCs+1}+\frac{B}{s+j\omega}+\frac{B^*}{s-j\omega})$

Donde $B^*$ es el complejo cojungado del número complejo $B$

Para encontrar cada coeficiente, basta remover su denominador de la forma original y reeplazar s por el valor de la raiz del término removido:

$ A = \left.\frac{s}{s^2+\omega^2}\right|_{s=-\frac{1}{RC}} = \frac{-\frac{1}{RC}}{(\frac{1}{RC})^2+\omega^2}$

$ B = \left.\frac{s}{(RCs+1)(s-j\omega)}\right|_{s=-j\omega} = \frac{-j\omega}{(-RCj\omega+1)(-j\omega-j\omega)} = \frac{1}{2(-RCj\omega+1)}$

$ B^* = \left.\frac{s}{(RCs+1)(s+j\omega)}\right|_{s=+j\omega} = \frac{j\omega}{(RCj\omega+1)(j\omega+j\omega)} = \frac{1}{2(RCj\omega+1)}$

Como comprobación de los cálculos, notamos que efectivamente $B$ y $B^*$ son números complejos conjugados.

Resolviendo el ejercicio:

$V_{out}(s) = (\frac{-\frac{1}{RC}}{(\frac{1}{RC})^2+\omega^2}\frac{1}{RCs+1}+\frac{1}{2(-RCj\omega+1)}\frac{1}{s+j\omega}+\frac{1}{2(RCj\omega+1)}\frac{1}{s-j\omega})$

Uniendo


Si eliminamos los términos transitorios de la respuesta obtenemos su respuesta en estado estacionario. De forma general, la respuesta en estado estacionario tiene la misma frecuencia que la entrada. Podemos definir la ganancia en frecuencia del circuito como la relación entre la amplitud de la respuesta en estado estacionario y la amplitud de la entrada.

## Ganancia en frecuencia, función de transferencia e impedancia

Se puede probar matematicamente que la ganancia en frecuencia de un sistema con función de transferencia $H(s)$ es:

$$A_v(\omega) = ||H(j\omega)||$$

Donde $H(j\omega)$ es un número imaginario obtenido al reemplazar $s=j\omega$ en la función de transferencia.

Como podemos reemplazar los capacitores en el circuito por "resistencias" con valores $\frac{1}{C s}$, y dependiendo del problema, lo que nos interesa es conocer la ganancia de frecuencia en estado estacionario, podemos reemplazar $s= j\omega$ desde el principio y de esa forma calcular immediatamente $H(j\omega)$. 

El resultado es el conocido valor de la impedancia de un capacitor, $\frac{1}{j\omega C}$ o $\frac{-j}{\omega C}$. Es decir, el valor de la impedancia es simplemente la ganancia del componente en estado estacionario, la cual puede depender de la frecuencia.

## capítulos del libro
- Capítulo 9
  - sesión 9.3 y 9.6

## ejercicios recomendados
- Capítulo 9
  - ejercicio 11 (a,b y c)
  - ejercicio 12 (a,b y c - calculen la magnitud del cociente $\frac{V_o}{V_i}$ en vez del ángulo de adelanto)
  - ejercicio 32 (utilicen Matlab en vez de PSpice)
