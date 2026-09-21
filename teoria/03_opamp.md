# Amplificador Operacional

## Símbolo, nomenclatura y convenciones

<img src="https://julianodb.github.io/electronic_circuits_diagrams/opamp.png" width="200"> 

$$ V_o = A_V (V_+ - V_-) $$

- $A_V = \infty$
- $R_i = \infty$
- $R_o = 0$

Componente activo, se alimenta con un voltaje positivo $V_{CC}$ y uno negativo $V_{EE}$, normamente simétricos ($V_{CC} = +5\ V$ y $V_{EE} = -5\ V$, por ejemplo).

El voltaje en las entradas debe mantenerse entre los voltajes de alimentación para evitar daños al amplificador. Revisar el datasheet para entender la restricción exacta (podría ser [$V_{EE}+0.5\ V$;$V_{CC}-0.3\ V$], por ejemplo). 

La salida siempre produce un voltaje entre los dos voltajes de alimentación. Es decir, $V_o$ es mayor a $V_{EE}$ y menor a $V_{CC}$. En ciertos dispositivos la salida puede ser incluso más limitada, pero en los ejercicios teóricos asumiremos que los límites son $V_{EE}$ y $V_{CC}$.

## Comparador

Si $V_+ > V_- \implies V_o = V_{CC}$

Si $V_- > V_+ \implies V_o = V_{EE}$

Circuito optimizado para trabajar en modo saturado.

## Cortocircuito virtual

Ejemplo: 

<img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_non_inverting.png" width="200"> 

$R_5 = R_6$

Cual es la relación entre $v_o$ y $v_i$ ?

La retroalimentación negativa genera un punto de equilibrio estable en los voltajes justo en el punto donde $V_+ = V_-$ . Es decir, los voltajes en $V_+$ y $V_-$ se igualan, aunque no hay ninguna corriente que fluye entre ellos. De ahí el término "cortocircuito virtual".

Si hay retroalimentación negativa $\implies V_+ = V_-$ 

$\frac{v_o}{2} = v_i$

$\implies v_o = 2v_i$

## Amplificador no-inversor

<img src="https://julianodb.github.io/electronic_circuits_diagrams/amplifier_non_inverting.png" width="200"> 

## capítulos del libro
- Capítulo 10
  - sesion 10.4
  - sesión 10.5 (apenas amplificador no-inversor)
- Capítulo 11
  - sesión 11.3

## ejercicios recomendados
- Capítulo 10
  - ejercicio 5, 6 y 7
