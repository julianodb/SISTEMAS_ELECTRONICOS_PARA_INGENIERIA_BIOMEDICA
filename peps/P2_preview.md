# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2025/02
## Guía Prueba Escrita 2

2. El siguiente circuito implementa un filtro activo:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_high_2_with_gain.png" width="400"> 

    Figura 2: Filtro con amplificador operacional

    La función de transferencia del circuito es
       $H(s) = \frac{V_o(s)}{V_i(s)} = \frac{2R^2C^2s^2}{1+RCs+R^2C^2s^2}$

    1. Determine qué tipo de filtro está implementado. (0.3pt)
    1. Muestre que la frecuencia con la que se obtiene la ganancia maxima es $\omega = \frac{\sqrt{2}}{RC}$. (0.5pt)
    1. Determine la(s) frecuencia(s) de corte en Hz, asumiendo que $R=1\ k\Omega$ y $C=0.1\ \mu F$. (1pt)
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. Asuma nuevamente que $R=1\ k\Omega$ y $C=0.1\ \mu F$. (0.7pt)

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y $V_D = - V_Z$ si el diodo zener está conduciendo en inversa, resuelva los siguientes circuitos (1.5 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=3.3\ k\Omega$, $R_2=4.7\ k\Omega$, $V_F=0.7\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R_alt.png" width="300">
   
   1. Datos: $V_{CC}=10\ V$, $R_3=1\ k\Omega$, $R_4=10\ k\Omega$, $R_5=5.1\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.3\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R.png" width="300">

   1. Datos: $V_{CC}=3.6\ V$, $R_6=R_7=R_8=1\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.3\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt.png" width="300">

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
$$\omega = 2 \pi f$$
$$ 2\pi [rad/s] = 1 [Hz]$$
$$ 1 [Hz] = 60 [rpm]$$
$$ A \beta = 1$$
