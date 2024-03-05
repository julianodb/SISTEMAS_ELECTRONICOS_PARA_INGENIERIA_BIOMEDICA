# Respuesta em frecuencia
## Filtros pasivos

Se puede probar matematicamente que la ganancia en frecuencia de un sistema con función de transferencia $H(s)$ es:

$$A_v(\omega) = ||H(j\omega)||$$

Donde $H(j\omega)$ es un número imaginario obtenido al reemplazar $s=j\omega$ en la función de transferencia.

Además, en vez de resolver el circuito electrónico y después aplicar la transformada de laplace, podríamos primero aplicar la transformada de laplace y después resolver el circuito. Al hacerlo, obtenemos las siguiente relación para la resistencia:

$v(t) = R i(t)$

$\implies V(s) = R I(s)$

Y para el capacitor:

$i(t) = C \frac{d v(t)}{dt}$

(asumiendo condiciones iniciales nulas)

$\implies I(s) = C s V(s)$

$\implies V(s) = \frac{1}{C s} I(s)$

Se observa que la última expresión se parece a la expresión de la resistencia, pero con un valor de $R = \frac{1}{C s}$ .

Por lo tanto, si reemplazamos los capacitores en el circuito por "resistencias" con valores $\frac{1}{C s}$, al resolverlo encontraremos la función de transferencia.

Por último, como nos interesa conocer la ganancia de frecuencia en estado estacionario, podemos reemplazar $s= j\omega$ desde el principio y de esa forma calcular immediatamente $H(j\omega)$. El resultado es el conocido valor de la impedancia de un capacitor, $\frac{1}{j\omega C}$ o $\frac{-j}{\omega C}$.

## capítulos del libro
- Capítulo 9
  - sesión 9.3 y 9.6
- Capítulo 11
  - sesión 11.5 (parte de amplificador de instrumentación) 

## ejercicios recomendados
- Capítulo 9
  - ejercicios 11 y 12
