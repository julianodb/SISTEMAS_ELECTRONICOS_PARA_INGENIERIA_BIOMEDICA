# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2024/02
## Guía Prueba Escrita 1

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F = 0.7\ V$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y que el voltaje de zener del diodo zener es $V_Z=5.1\ V$, resuelva los siguientes circuitos (1.5 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=5.1\ k\Omega$, $R_2=10\ k\Omega$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R.png" width="350">
   
   1. Datos: $V_{CC}=5\ V$, $R_3=6.8\ k\Omega$, $R_4=4.7\ k\Omega$, $R_5=3.3\ k\Omega$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R.png" width="300">

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 10\ V$, $R_B= 1\ M\Omega$, $R_C= 5.1\ k\Omega$, $R_E= 100\ \Omega$, $\beta = 100$, la temperatura $T=300\ K$, $V_{CE_{SAT}} = 0.3\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)
   1. La corriente de colector de polarización $I_{C_Q}$
   2. La ganancia de voltaje AC ($A_V$)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_base_polarized_no_ce.png" width="300"> 

# Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
- $T$: Temperatura en Kelvin

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = | H(s=j\omega) |$$
$$ A_{v_{dB}}(\omega) = 20 log\left(| H(j\omega) |\right)$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$

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
