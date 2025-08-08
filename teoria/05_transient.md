# Respuesta en estado estacionario y transiente

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

## capítulos del libro ???
- Capítulo 9
  - sesión 9.3 y 9.6
- Capítulo 11
  - sesión 11.5 (parte de amplificador de instrumentación) 

## ejercicios recomendados ???
- Capítulo 9
  - ejercicios 11 y 12
