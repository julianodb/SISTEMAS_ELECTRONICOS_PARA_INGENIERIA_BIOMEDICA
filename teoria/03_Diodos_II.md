# 03 - Diodos y Aplicaciones II

## Revisión de sentido de voltaje y corrientes

Corriente tiene el sentido contrario de la tensión eléctrica, a menos que sea un dispositivo que entrega energía al circuito, como una batería.

## Diodos Zener y TVS

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

$I_R = I_D$

- $I_R (V_D) = \frac{V_i - V_D}{R}$
- $I_D (V_D) = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right)$

No tiene solucción analítica. Útil para entender el circuito graficamente

## Hojas de Datos

- Valores máximos: $V_f$, $I_f$, potencia disipada, $V_R$
- $V_f$ para distintos valores de prueba de $I_f$. Temperatura de prueba determinada (por ejemplo 25°C)
- Gráficos

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.). Cap.1 y 2, pág. 1-114

## [Trabajo 1](/teoria/T1.md)

### [Aclaraciones](/teoria/T1.md#aclaraciones-05042023)

### [Aclaraciones 2](/teoria/T1.md#aclaraciones-18042023)