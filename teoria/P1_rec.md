# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/01
## Prueba Escrita 1 - Recuperativa

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa típico es $V_F = 0.7\ V$. Conteste las preguntas a continuación para comprobar en que rango de corrientes dicha aproximación es "buena". Consideraremos una aproximación "buena" si el valor real del voltaje no difiere por más de 10% del valor asumido. Suponga que $I_S=1\ pA$ y $n=1$. Suponga también que la temperatura es $T=300\ K$. 
   1. Calcule la corriente mínima $I_{D_{min}}$ con la cual la aproximación es "buena". Es decir, calcule $I_D$ cuando $V_D$ es 10% menor, $V_D = 0.9*0.7 = 0.63\ V$
   1. Calcule la corriente máxima $I_{D_{max}}$ para la cual la aproximación es "buena". Es decir, calcule $I_D$ cuando $V_D$ es 10% mayor, $V_D = 1.1*0.7 = 0.77\ V$
   1. Si en determinado circuito la corriente en directa en el diodo $I_D$ estará entre 50 mA y 5 A, ¿es la aproximación $V_D = 0.7\ V$ una buena aproximación ?

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = 0.7\ V$ cuando los diodos están polarizados en directa y $I_D=0$ cuando están polarizados en inversa, resuelva los siguientes circuitos:
   
   1. Datos: $V_{CC}=12\ V$, $R_1=2\ k\Omega$ y $R_2=2\ k\Omega$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_2R.png" width="200">
   
   1. Datos: $V_{CC}=12\ V$, $R_3=3\ k\Omega$, $R_4=2\ k\Omega$, $R_5=1\ k\Omega$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_3R.png" width="200">

1. Calcule $V_o$ en el siguiente circuito, cuando el valor de $V_i$ es el señalado en cada ítem. Para cada ítem, calcule también $\beta_{forzado}$ si el transistor está operando en modo saturado, o $V_{CE}$ si está operando en modo activo. Asuma $V_{CC}=12\ V$, $R_B= 68\ k\Omega$, $R_C= 1\ k\Omega$, $\beta = 100$, $V_{CE_{SAT}} = 0.3\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa.
   1. $V_i = 0\ V$
   1. $V_i = 6\ V$
   1. $V_i = 12\ V$
   
      <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_inverter.png" width="200">

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 10\ V$, $R_1= 16\ k\Omega$, $R_2= 3.9\ k\Omega$, $R_C= 4.7\ k\Omega$, $R_E= 1\ k\Omega$, la temperatura $T=300\ K$, $\beta = 100$ ,$V_{CE_{SAT}} = 0.3\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa.
   1. La corriente de colector de polarización $I_{C_Q}$
   2. La ganancia de voltaje $A_V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter.png" width="300"> 

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
$$I_C = \beta_{forzado} I_B $$
- modelo híbrido-$\pi$ de pequeñas señales:
$$r_{\pi} = \frac{\beta V_T}{I_{C_Q}}$$
$$i_{C_{AC}} = \beta i_{B_{AC}} $$
$$A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$$
