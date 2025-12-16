# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2025/02
## Prueba Escrita 2 - Pauta

1. Para el siguiente circuito, determine la amplitud de $V_{out}$ en estado estacionario si $V_{in} = 10 cos(\omega t)$. Considere que $R= 100\ k\Omega$, $C= 0.68\ \mu F$ y $\omega$ tiene los siguientes valores (1.2pt):

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_highpass.png" width="200">

    Figura 1: Filtro pasivo
    
    > por divisor de voltaje,
    >
    > $H(s) = \frac{RCs}{1+RCs}$
    >
    > por lo tanto,
    >
    > $A_v(\omega) = | H(s=j\omega) | = | \frac{RCj\omega}{1+RCj\omega}|$
    >
    > $A_v(\omega) = \frac{RC\omega}{\sqrt{1+(RC\omega)^2}}$
    >
    > $A_v(\omega) = \frac{0.068\omega}{\sqrt{1+(0.068\omega)^2}}$

    1. $\omega = 1\ rad/s$
       > $A_v(\omega = 1) = \frac{0.068}{\sqrt{1+(0.068)^2}}$ (+0.3pt)
       >
       > $A_v(\omega = 1) \approx 0.068$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.1pt)
       >
       > $|V_{o}| = A_v(\omega)|V_i|$
       >
       > $|V_{o}| \approx 0.068 \times 10 = 0.68\ V$
    1. $\omega = 10\ rad/s$
       > $A_v(\omega = 10) = \frac{0.068 \times 10}{\sqrt{1+(0.068\times 10)^2}}$ (+0.3pt)
       >
       > $A_v(\omega = 10) \approx 0.56$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.1pt)
       >
       > $|V_{o}| = A_v(\omega)|V_i|$
       >
       > $|V_{o}| \approx 0.56 \times 10 = 5.6\ V$
    1. $\omega = 100\ rad/s$
       > $A_v(\omega = 100) = \frac{0.068 \times 100}{\sqrt{1+(0.068\times 100)^2}}$ (+0.3pt)
       >
       > $A_v(\omega = 100) \approx 0.99$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.1pt)
       >
       > $|V_{o}| = A_v(\omega)|V_i|$
       >
       > $|V_{o}| \approx 0.99 \times 10 = 9.9\ V$

3. El siguiente circuito implementa un filtro activo:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_bandpass_2.png" width="400"> 

    Figura 2: Filtro con amplificador operacional

    La función de transferencia del circuito es
       $H(s) = \frac{V_o(s)}{V_i(s)} = \frac{16RCs}{3+8RCs+8R^2C^2s^2}$

    1. Determine qué tipo de filtro está implementado. (0.3pt)
         > $A_V(\omega) = |\frac{16RCj\omega}{3+8RCj\omega+8R^2C^2(j\omega)^2}|$
         >
         > $A_V(\omega) = \frac{16RC\omega}{\sqrt{(3-8R^2C^2\omega^2)^2+8^2R^2C^2\omega^2}}$
         >
         > $A_V(\omega = 0) = 0$ (+0.1pt)
         >
         > $\lim_{\omega \to +\infty}A_V(\omega) = 0$ (+0.1pt)
         >
         > Para cualquier otro valor de $\omega$, $A_V(\omega) >0$. Por ejemplo, $A_V(\omega = \frac{1}{RC}) \approx 1.7 $
         >
         > Por lo tanto, se trata de un filtro pasa-banda +0.1pt
    1. Muestre que la frecuencia con la que se obtiene la ganancia maxima es $\omega = \frac{\sqrt{3}}{2\sqrt{2}RC}$. (0.5pt)
         > $A_V(\omega) = \frac{16RC\omega}{\sqrt{(3-8R^2C^2\omega^2)^2+8^2R^2C^2\omega^2}}$
         >
         > $A_V(\omega) = \frac{16RC\omega}{\sqrt{9 - 48R^2C^2\omega^2 + 64R^4C^4\omega^4+64R^2C^2\omega^2}}$
         >
         > $A_V(\omega) = \frac{16RC\omega}{\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4}}$
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} = \frac{16RC}{\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4}} -\frac{1}{2} \frac{16RC\omega(32R^2C^2\omega + 256R^4C^4\omega^3)}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3}$
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} =  \frac{32RC(9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4)-16RC\omega(32R^2C^2\omega + 256R^4C^4\omega^3)}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3}$
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} =  16\frac{18RC + 32R^3C^3\omega^2 + 128R^5C^5\omega^4-(32R^3C^3\omega^2 + 256R^5C^5\omega^4)}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3}$
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} =  16\frac{18RC - 128R^5C^5\omega^4}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3}$
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} =  32RC\frac{9 - 64R^4C^4\omega^4}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3}$
         >
         > Para encontrar el valor de $\omega$ que maximiza $A_V(\omega)$, encontraremos en que punto la derivada es cero.
         >
         > $\frac{ \partial A_V(\omega)}{\partial \omega} =  32RC\frac{9 - 64R^4C^4\omega^4}{(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4})^3} = 0$
         >
         > Suponiendo que $(\sqrt{9 + 16R^2C^2\omega^2 + 64R^4C^4\omega^4}) \neq 0$
         >
         > $32RC(9 - 64R^4C^4\omega^4) = 0$
         >
         > $9 - 64R^4C^4\omega^4 = 0$
         >
         > $64R^4C^4\omega^4 = 9$
         >
         > $\omega^4 = \frac{9}{64R^4C^4}$
         >
         > $\omega^2 = \frac{3}{8R^2C^2}$
         >
         > $\omega = \frac{\sqrt{3}}{\sqrt{8}RC} = \frac{\sqrt{3}}{2\sqrt{2}RC} $ (+0.4pt)
         >
         > Podemos confirmar que se trata de un punto maximo calculando el valor de $A_V(\omega)$ en este punto y en los otros candidatos a maximo ($\omega = 0$ y $\omega \to +\infty$). Como visto anteriormente, en los otros puntos $A_V(\omega) = 0$. En el nuevo valor de $\omega$ encontrado, por otro lado: (+0.1pt)
         >
         > $A_V(\omega = \frac{\sqrt{3}}{2\sqrt{2}RC}) = \frac{16\frac{\sqrt{3}}{2\sqrt{2}}}{\sqrt{9 + 16\frac{3}{8} + 64\frac{9}{64}}}$
         >
         > $A_V(\omega = \frac{\sqrt{3}}{2\sqrt{2}RC}) = \frac{8\frac{\sqrt{3}}{\sqrt{2}}}{\sqrt{9 + 6 + 9}} = \frac{8\frac{\sqrt{3}}{\sqrt{2}}}{\sqrt{24}}= 8 \sqrt{\frac{3}{48}} = 8 \sqrt{\frac{1}{16}} = 2$

    1. Determine la(s) frecuencia(s) de corte en Hz, asumiendo que $R=1\ k\Omega$ y $C=0.1\ \mu F$. (1pt)
         > $ A_V(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$
         >
         > Como visto en el ultimo ejercicio, $max(A_V(\omega)) = 2$. Por lo tanto:
         >
         > $\frac{16RC\omega_c}{\sqrt{9 + 16R^2C^2\omega_c^2 + 64R^4C^4\omega_c^4}} = \frac{2}{\sqrt{2}}$
         >
         > $\frac{(16RC\omega_c)^2}{9 + 16R^2C^2\omega_c^2 + 64R^4C^4\omega_c^4} = 2$
         >
         > $(16RC\omega_c)^2 = 2(9 + 16R^2C^2\omega_c^2 + 64R^4C^4\omega_c^4)$
         >
         > $256R^2C^2\omega_c^2 = 18 + 32R^2C^2\omega_c^2 + 128R^4C^4\omega_c^4$
         >
         > $128R^2C^2\omega_c^2 = 9 + 16R^2C^2\omega_c^2 + 64R^4C^4\omega_c^4$
         >
         > $64R^4C^4\omega_c^4 - 112R^2C^2\omega_c^2 + 9 = 0$
         >
         > Si hacemos el cambio de variable $x = R^2C^2\omega_c^2$ :
         >
         > $64x^2 - 112x + 9 = 0$
         >
         > Cuya solución es:
         >
         > $x = \frac{112\pm \sqrt{112^2-4 \times 64 \times 9}}{2 \times 64}$
         >
         > $x = \frac{112\pm \sqrt{10240}}{128}$
         >
         > $x = \frac{112\pm 32\sqrt{10}}{128}$
         >
         > $x = \frac{7\pm 2\sqrt{10}}{8}$
         >
         > Por lo tanto,
         >
         > $R^2C^2\omega_c^2 = \frac{7\pm 2\sqrt{10}}{8}$
         >
         > $\omega_c^2 = \frac{7\pm 2\sqrt{10}}{8 R^2C^2}$
         >
         > $\omega_c = \sqrt{\frac{7\pm 2\sqrt{10}}{8}}\frac{1}{RC}$
         >
         > $\omega_{c_1} = \frac{\sqrt{5}+\sqrt{2}}{\sqrt{8}}\frac{1}{RC} \approx \frac{1.29}{RC}$
         >
         > $\omega_{c_2} = \frac{\sqrt{5}-\sqrt{2}}{\sqrt{8}}\frac{1}{RC} \approx \frac{0.29}{RC}$
         >
         > Como $RC = 0.1\ ms$,
         >
         > $\omega_{c_1} \approx 12900\ rad/s$
         >
         > $\omega_{c_2} \approx 2900\ rad/s$
         >
         > Y, en Hz:
         >
         > $f_{c_1} \approx 2000\ Hz$
         >
         > $f_{c_2} \approx 460\ Hz$
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. Asuma nuevamente que $R=1\ k\Omega$ y $C=0.1\ \mu F$. (0.7pt)

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y $V_D = - V_Z$ si el diodo zener está conduciendo en inversa, resuelva los siguientes circuitos (1.5 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=3.3\ k\Omega$, $R_2=4.7\ k\Omega$, $V_F=0.7\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R.png" width="300">
   
   1. Datos: $V_{CC}=10\ V$, $R_3=1\ k\Omega$, $R_4=10\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.3\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt.png" width="300">

   1. Datos: $V_{CC}=9\ V$, $R_5=R_6=R_7=1\ k\Omega$, $V_F=0.7\ V$, $V_Z = 5.1\ V$

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt2.png" width="300">

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa está entre $V_F = 0.62\ V$ y $V_F = 0.72\ V$ cuando $I_F = 5\ mA$. El rango de temperatura de operación indicado es entre -65 °C y +175 °C. Asumiendo que $I_S=0.05\ pA$ y $n=1$, compruebe: (0.8 pt)
   1. Cuál es el valor de $V_D$ si la temperatura es -65 °C (y $I_F = 5\ mA$).
   1. Cuál es el valor de $V_D$ si la temperatura es +175 °C (y $I_F = 5\ mA$).

# Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
- $T$: Temperatura en Kelvin

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ |V_{o}| = A_v(\omega)|V_i| $$
$$ A_v(\omega) = | H(s=j\omega) |$$
$$ A_V(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$$
$$ A_{v_{dB}}(\omega) = 20 log\left(| H(j\omega) |\right)$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$
$$\omega = 2 \pi f$$
$$ 2\pi [rad/s] = 1 [Hz]$$
$$ 1 [Hz] = 60 [rpm]$$
$$ A \beta = 1$$
