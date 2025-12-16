# Transistor de Efecto de Campo Semiconductor de óxido metálico (MOSFET) tipo enriquecimento de canal n 

Transistor de efecto de campo metal-óxido-semiconductor (MOSFET) | Descripción del mosfet (terminales, convenciones, ecuaciones), modos de operacion: saturado y activo, uso del mosfet como llave


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
          \textrm{conduce }(I_B>0) & \quad \textrm{si } V_{BE} >  V_{BE_{SAT}} \\
          \textrm{no conduce }(I_B=0)                 & \quad \textrm{si } V_{BE} \leq V_{BE_{SAT}}
      \end{array} 
   \right}
   $$
1. $I_B$ vs $I_C$ vs $V_{CE}$
   1. En modo de corte ($I_B = 0$)

   $$I_C = 0$$
   1. (en modo saturado ($\beta I_B > I_{C_{SAT}} $)):
   
   $$V_{CE} = V_{CE_{SAT}}$$

$V_{BE_{SAT}}$, $\beta$ y $V_{CE_{SAT}}$ son constantes para cada transistor

tipicamente $V_{BE_{SAT}} \approx 0.7\ V$, $V_{CE_{SAT}} \approx 0.2\ V$ y $\beta \approx 100 $

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
