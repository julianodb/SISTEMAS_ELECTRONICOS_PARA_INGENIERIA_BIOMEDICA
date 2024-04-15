# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2024/01
## Guía Prueba Escrita 1

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa está entre $V_F = 0.62\ V$ y $V_F = 0.72\ V$ cuando $I_F = 10\ mA$ y $T=25°C$. El rango de temperatura de operación indicado es entre -65 °C y +175 °C. Asumiendo que $I_S=0.12\ pA$ y $n=1.1$ y utlizando la ecuación de Shockley, compruebe: (1.5 pt)
   1. Si el valor de $V_D$ a 25 °C con $I_F = 10\ mA$ realmente está dentro del rango indicado por el fabricante
      > $V_D = 0.701\ V$. Por lo tanto, está dentro del rango indicado
   1. En cuanto cambia $V_D$ si la temperatura baja a -65 °C ($I_F$ sigue siendo $10\ mA$).
      > $V_D = 0.489\ V$. 
   1. En cuanto cambia $V_D$ si la temperatura sube a +175 °C ($I_F$ sigue siendo $10\ mA$).
      > $V_D = 1.05\ V$. 

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 20\ V$, $R_B= 100\ k\Omega$, $R_C= 510\ \Omega$, $R_E= 100\ \Omega$, $\beta = 100$, la temperatura $T=300\ K$, $V_{CE_{SAT}} = 0.3\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)
   1. La corriente de colector de polarización $I_{C_Q}$
      > 
   2. La ganancia de voltaje AC ($A_V$)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_base_polarized.png" width="300"> 

# Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
- $T$: Temperatura en Kelvin
$$I_E = I_C + I_B$$
- en modo activo ($V_{CE} > V_{CE_{SAT}}$):
$$I_C = \beta I_B $$
- en modo saturado ($0 < \beta_{forzado} < \beta$):
$$V_{CE} = V_{CE_{SAT}}$$
$$I_C = I_{C_{SAT}} = \beta_{forzado} I_B $$
- modelo híbrido-$\pi$ de pequeñas señales:
$$r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$$
$$i_{C_{AC}} = \beta i_{B_{AC}} $$
$$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$$
