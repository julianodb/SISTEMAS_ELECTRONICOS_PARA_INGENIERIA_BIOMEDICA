# 03 - Diodos y Aplicaciones II

## Limites del Diodo y Hojas de Dato

- Polarizado en directa
- Polarizado en inversa
- Tensión inversa
- Tensión de ruptura
- Potencia

## Diodos Zener y TVS

$$ \left\{ 
    \begin{array}{ c l }
        \textrm{conduce }(I_D>0) & \quad \textrm{si } V_D > V_f \\
        \textrm{no conduce }(I_D=0)                 & \quad \textrm{si } -V_Z < V_D \leq V_f \\
        \textrm{conduce }(I_D<0)                 & \quad \textrm{si } V_D \leq -V_Z
    \end{array} 
\right.
$$

La tensión de zener ($V_Z$) es una constante para cada diodo. Depende del material y forma de construcción, y se puede obtener en distintos valores, usualmente mayores y más estables que $V_f$

- ESD -> TVS

El diodo zener utilizado como protección de picos de voltaje limita el voltaje que llega a la carga a que esté entre $-V_f$ y $V_Z$.

## Diodo real

### Ecuación de Shockley

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$

- $I_D$ y $V_D$: Corriente y tención del diodo de acuerdo a la convención
- $I_S$: Corriente de saturación en inversa. Constante para cada diodo.
- $n$: Constante de idealidad. $n \in [1,2]$
- $V_T$: Voltaje térmico

$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23} J/K$
- $T$: Temperatura del diodo en Kelvin
- $q$: Carga del electrón. $q=1.6*10^{-19} C$

### Curva de Carga

<img src="https://julianodb.github.io/electronic_circuits_diagrams/resistance_diode.png" width="48">

$I_R = I_D$

- $I_R (V_D) = \frac{V_i - V_D}{R}$
- $I_D (V_D) = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right)$

No tiene solucción analítica. Útil para entender el circuito graficamente

## Hojas de Datos

- Valores máximos: $V_f$, $I_f$, potencia disipada, $V_R$
- $V_f$ para distintos valores de prueba de $I_f$. Temperatura de prueba determinada (por ejemplo 25°C)
- Gráficos

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 1, sesiones 1.6, 1.7, 1.9, 1.12, 1.15
- Capítulo 2, sesiones 2.1, 2.2, 2.10, 2.12

### Ejercícios Recomendados
- Capítulo 1
  - Sesión 1.6: ej 15, 16, 17, 18, 21
  - Sesión 1.12: ej 43, 46
- Capítulo 2
  - Sesíon 2.2: ejs 1, 2, 3, 4
  - Sesión 2.10: ejs 42, 43, 44, 45, 46
