# Respuesta em frecuencia
## Filtros pasivos

¿Cuanto vale $v_{out} (t)$ si $v_{in} (t) = 2\cos{(\omega t)}$ ?

<img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_lowpass.png" width="200"> 

(...)

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
