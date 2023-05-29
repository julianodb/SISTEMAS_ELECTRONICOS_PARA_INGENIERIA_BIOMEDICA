# PEP 1 (prévia)

1. Calcule todas las corrientes y tensiones para los siguientes circuitos. Asuma $V_F = 0.7V$ cuando polarizado en directa y $I_D=0$ cuando polarizado en inversa. 
   
   1. $V_{CC}=3V$, $R=100$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_resistor_diode.png" width="100">
   
   1. $V_{CC}=3V$, $R_3=400$, $R_4=500$, $R_5=600$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_3R.png" width="200">

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 30 V$, $R_1= 82 k\Omega$, $R_2= 5.6 k\Omega$, $R_C= 3.3 k\Omega$, $R_E= 1 k\Omega$, $\beta=100$
   1. La corriente de colector de polarización $I_{C_Q}$
   2. La ganancia de voltaje $A_V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter.png" width="300"> 

# Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$

$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23} J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19} C$

$$I_E = I_C + I_B$$

- en modo activo ($V_{CE} > V_{CE_{SAT}}$):

$$I_C = \beta I_B $$

- en modo saturado ($0 < \beta_{forzado} < \beta$):

$$V_{CE} = V_{CE_{SAT}}$$

$$I_C = \beta_{forzado} I_B $$

- modelo híbrido-$\pi$ de pequeñas señales:

$$r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$$

$$i_C = \beta i_B $$

$$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$$
