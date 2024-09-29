# Transistor de Unión Bipolar (BJT)

- Motivación
- Transistores a grandes rasgos
- Símbolo, nomenclatura y convenciones

![npn](https://julianodb.github.io/electronic_circuits_diagrams/npn.png)

- Ecuaciones del transistor bipolar NPN

1. LKC
   $$I_E = I_C + I_B$$
1. BASE-EMISOR es un diodo:
   $$ 
   \left\{ 
      \begin{array}{ c l }
          \textrm{conduce }(I_B>0) & \quad \textrm{si } V_{BE} > V_f \\
          \textrm{no conduce }(I_B=0)                 & \quad \textrm{si } V_{BE} \leq V_f
      \end{array} 
   \right.
   $$
1. (en modo activo ($V_{CE} > V_{CE_{SAT}}$)):
   $$I_C = \beta I_B $$

$\beta$ es una constante para cada transistor

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 3, sesión 3.6
- Capítulo 4, sesiones 4.1, 4.3

### Ejercícios Recomendados
- Capítulo 3
  - Sesión 3.3: ej 8, 9
  - Sesión 3.6: ej 20
- Capítulo 4
  - Sesíon 4.3: ejs 1, 2, 3
  - Sesión 4.4: ejs 6, 7, 8, 11
