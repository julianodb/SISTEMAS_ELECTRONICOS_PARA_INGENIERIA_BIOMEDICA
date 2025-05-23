# Amplificador Operacional

## Símbolo, nomenclatura y convenciones

<img src="https://julianodb.github.io/electronic_circuits_diagrams/opamp.png" width="200"> 

$$ V_o = A_V (V_+ - V_-) $$

$V_o$, $V_+$ y $V_-$ entre $V_{EE}$ y $V_{CC}$

- $A_V = \infty$
- $Z_i = \infty$
- $Z_o = 0$

## Comparador

Si $V_+ > V_- \implies V_o = V_{CC}$

Si $V_- > V_+ \implies V_o = V_{EE}$

Circuito optimizado para trabajar en modo saturado.

## Cortocircuito virtual

Si hay retroalimentación negativa $\implies V_+ = V_-$ 

La retroalimentación negativa genera un punto de equilibrio estable en los voltajes justo en el punto donde $V_+ = V_-$ . Es decir, los voltajes en $V_+$ y $V_-$ se igualan, aunque no hay ninguna corriente que fluye entre ellos. De ahí el término "cortocircuito virtual".

## capítulos del libro
- Capítulo 5
  - sesiones 5.15 y 5.16
- Capítulo 10
  - sesion 10.4
  - sesión 10.5 (apenas amplificador inversor) 

## ejercicios recomendados
- Capítulo 5
  - ejercicios 36 al 43, 45 al 48
- Capítulo 10
  - ejercicios 1 al 4
