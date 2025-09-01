# Transistor de Unión Bipolar (BJT) III ???

mosfet como amplificador | Uso del mosfet como amplificador, Análisis de grandes señales, Amplificador dreno común

- Modo Activo

## Resúmen BJT: Modo de Saturación vs modo activo

$$I_E = I_C + I_B$$

- en modo activo ($V_{CE} > V_{CE_{SAT}}$):

$$I_C = \beta I_B $$

- en modo saturado ($0 < \beta_{forzado} < \beta$):

$$V_{CE} = V_{CE_{SAT}}$$

$$I_C = \beta_{forzado} I_B $$

## ejercicios con BJT

- Calcular $V_C$, $V_E$, $I_B$, $I_C$ y $I_E$ si $V_{CC} = 10\ V$, $R_C=4.7\ k\Omega$, $R_E=3.3\ k\Omega$ y:
  - $\beta = 100$ y $V_i = 4\ V$ 
  - $\beta = 50$ y $V_i = 6\ V$

![npn_re_rc](https://julianodb.github.io/electronic_circuits_diagrams/npn_re_rc.png)

## $I_{C_{SAT}}$

- corriente de colector impuesta por el circuito externo cuando $V_{CE} = V_{CE_{SAT}}$

## Uso del BJT como llave

![npn_inverter](https://julianodb.github.io/electronic_circuits_diagrams/npn_inverter.png)

![v_i_square_wave](https://julianodb.github.io/electronic_circuits_diagrams/v_i_square_wave.png)

Asumiendo $V_{LOW} < V_{BE}$ y $V_{HIGH} > V_{BE}$:

1. Calcular $I_{C_{Sat}}$ (en el ejemplo, $I_{C_{Sat}} = \frac{V_{CC} - V_{CE_{SAT}}}{R_C}$)
2. Elegir $\beta_{forzado} < \beta$
3. Calcular $I_B = \frac{I_{C_{Sat}}}{\beta_{forzado}}$
4. Calcular $R_B = \frac{V_{HIGH} - V_{BE}}{I_B}$

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.)

### Capítulos
- Capítulo 3, sesión 3.11
- Capítulo 4, sesiones 4.3 y 4.15

### Ejercícios Recomendados
- Capítulo 4
  - Sesíon 4.3: ej 4
  - Sesión 4.4: ejs 9 y 10
  - Sesión 4.15: ejs 44 y 45
