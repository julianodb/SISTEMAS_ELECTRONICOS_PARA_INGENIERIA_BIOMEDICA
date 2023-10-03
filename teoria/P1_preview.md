# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/02
## Guía Prueba Escrita 1

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa típico es $V_F = 0.7\ V$. Calcule el valor de $V_D$ utilizando la ecuación de Shockley para los siguientes valores de $I_D$ para comprobar qué tan "buena" es dicha aproximación. Para cada item, calcule también el porcentaje de error con respecto al $V_F$ dado por el fabricante. Suponga que $I_S=10\ pA$ y $n=1$. Suponga también que la temperatura es $T=300\ K$. (1.5 pt)
   1. $I_D = 100\ mA$ 
      > $V_D \approx 0.596\ V$
      >
      > $error \% \approx -15 \%$
   1. $I_D = 1\ A$
      > $V_D \approx 0.655\ V$
      >
      > $error \% \approx -6.4 \%$
   1. $I_D = 10\ A$
      > $V_D \approx 0.715\ V$
      >
      > $error \% \approx 2.1 \%$

1. Calcule $I_C$ en el siguiente circuito, cuando el valor de $V_i$ es el señalado en cada ítem. Para cada ítem, calcule también $\beta_{forzado}$ si el transistor está operando en modo saturado, o $V_{CE}$ si está operando en modo activo. Asuma $V_{CC}=5\ V$, $R_E= 1\ k\Omega$, $R_C= 625\ \Omega$, $\beta = 100$, $V_{CE_{SAT}} = 0.2\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)
   1. $V_i = 0\ V$
      > $I_C = 0$
      >
      > $V_{CE} = 5\ V$
   1. $V_i = 2\ V$
      > $I_C \approx 1.29\ mA$
      >
      > $V_{CE} \approx 2.9\ V$
   1. $V_i = 5\ V$
      > $I_C \approx 0.8\ mA$
      >
      > $\beta_{forzado} \approx 0.2$
   
      <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_re_rc.png" width="150">

# Fórmulas
$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
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
