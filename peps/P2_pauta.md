# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2025/02
## Prueba Escrita 2 - Pauta

1. Para el siguiente circuito, determine la amplitud de $V_{out}$ en estado estacionario si $V_{in} = 10 cos(\omega t)$. Considere que $R= 100\ k\Omega$, $C= 0.68\ \mu F$ y $\omega$ tiene los siguientes valores ($\cancel{1.2}\ 1.35pt$):

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_highpass.png" width="200">

    Figura 1: Filtro pasivo
    
    > por divisor de voltaje,
    >
    > $H(s) = \frac{RCs}{1+RCs}$ (+0.3pt)
    >
    > por lo tanto,
    >
    > $A_v(\omega) = | H(s=j\omega) | = | \frac{RCj\omega}{1+RCj\omega}|$
    >
    > $A_v(\omega) = \frac{RC\omega}{\sqrt{1+(RC\omega)^2}}$
    >
    > $A_v(\omega) = \frac{0.068\omega}{\sqrt{1+(0.068\omega)^2}}$

    1. $\omega = 1\ rad/s$
       > $A_v(\omega = 1) = \frac{0.068}{\sqrt{1+(0.068)^2}}$ (+0.2pt)
       >
       > $A_v(\omega = 1) \approx 0.068$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.15pt)
       >
       > $|V_{o}| = A_v(\omega)|V_i|$
       >
       > $|V_{o}| \approx 0.068 \times 10 = 0.68\ V$
    1. $\omega = 10\ rad/s$
       > $A_v(\omega = 10) = \frac{0.068 \times 10}{\sqrt{1+(0.068\times 10)^2}}$ (+0.2pt)
       >
       > $A_v(\omega = 10) \approx 0.56$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.15pt)
       >
       > $|V_{o}| = A_v(\omega)|V_i|$
       >
       > $|V_{o}| \approx 0.56 \times 10 = 5.6\ V$
    1. $\omega = 100\ rad/s$
       > $A_v(\omega = 100) = \frac{0.068 \times 100}{\sqrt{1+(0.068\times 100)^2}}$ (+0.2pt)
       >
       > $A_v(\omega = 100) \approx 0.99$ 
       >
       > La amplitud de $V_{out}$ es, por lo tanto: (+0.15pt)
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
    1. Muestre que la frecuencia con la que se obtiene la ganancia maxima es $\omega = \frac{\sqrt{3}}{2\sqrt{2}RC}$. ($\cancel{0.5pt}$)
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
         > El ultimo ejercicio declara que la frecuencia con la que se obtiene la ganancia maxima es $\omega = \frac{\sqrt{3}}{2\sqrt{2}RC}$, por lo tanto:
         >
         > $max(A_V(\omega)) =  A_V(\omega= \frac{\sqrt{3}}{2\sqrt{2}RC}) = \frac{8\frac{\sqrt{3}}{\sqrt{2}}}{\sqrt{9 + 6 + 9}} = \frac{8\frac{\sqrt{3}}{\sqrt{2}}}{\sqrt{24}}= 8 \sqrt{\frac{3}{48}} = 8 \sqrt{\frac{1}{16}} = 2$ (+0.3pt)
         >
         > Así, podemos reemplazar $max(A_V(\omega))$ y $A_V(\omega_c)$ en la siguiente expresión: (+0.5pt)
         >
         > $ A_V(\omega_c) = \frac{max(A_V(\omega))}{\sqrt{2}}$
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
         > $f_{c_1} \approx 2000\ Hz$ (+0.1pt)
         >
         > $f_{c_2} \approx 460\ Hz$ (+0.1pt)
    1. Considere que $A = (1+\frac{R_a}{R_b})$. Al aumentar el valor de A, eventualmente el filtro se vuelve inestable. Determine el valor de A en que esto ocurre y con qué frecuencia oscila $v_o$, en Hz. Asuma nuevamente que $R=1\ k\Omega$ y $C=0.1\ \mu F$. ($\cancel{0.7}\ 0.8pt$)
         > Considerando la división del circuito conforme la siguiente imagen, donde la entrada de $A$ es $V_+$, su salida es $v_o$, la entrada de $\beta$ es $v_o$ y su salida es $V_+$ (+0.2pt):
         >
         > ![ABeta](/img/sallen_key_band_pass_2_A_beta.png)
         >
         > La función de transferencia del bloque A es simplemente $1+\frac{R_a}{R_b} = A$. (+0.1pt)
         >
         > Luego, para el bloque $\beta$:
         >
         > $V_+ = \frac{4R}{4R+\frac{1}{Cs}} V_x$
         >
         > $V_x = \frac{1+4RCs}{4RCs}V_+$ (ecuación 1)
         >
         > Definimos $R_{eq}$ como la resistencia entre $V_x$ y tierra:
         >
         > $R_{eq} = R//\frac{1}{Cs}//(\frac{1}{Cs}+4R)$
         >
         > $R_{eq} = \frac{1}{\frac{1}{R}+Cs+\frac{Cs}{1+4RCs}}$
         >
         > $R_{eq} = \frac{R(1+4RCs)}{1+4RCs+Cs(R)(1+4RCs)+RCs}$
         >
         > $R_{eq} = \frac{R(1+4RCs)}{1+6RCs+4R^2C^2s^2}$
         >
         > Luego, la relación entre $V_x$ y $v_o$ se encuentra aplicando divisor de voltaje y recordando que $v_i = 0$ para calcular la función de transferencia de $\beta$:
         >
         > $V_x = \frac{R_{eq}}{R_{eq}+2R}v_o$
         >
         > $V_x = \frac{\frac{R(1+4RCs)}{1+6RCs+4R^2C^2s^2}}{\frac{R(1+4RCs)}{1+6RCs+4R^2C^2s^2}+2R}v_o$
         >
         > $V_x = \frac{R(1+4RCs)}{R(1+4RCs)+2R(1+6RCs+4R^2C^2s^2)}v_o$
         >
         > $V_x = \frac{1+4RCs}{1+4RCs+2(1+6RCs+4R^2C^2s^2)}v_o$
         >
         > $V_x = \frac{1+4RCs}{3+16RCs+8R^2C^2s^2}v_o$ (ecuación 2)
         >
         > Igualando la ecuación 1 y la ecuación 2:
         >
         > $\frac{1+4RCs}{4RCs}V_+ = \frac{1+4RCs}{3+16RCs+8R^2C^2s^2}v_o$
         >
         > $\beta(s) = \frac{V_+}{v_o} = \frac{4RCs}{3+16RCs+8R^2C^2s^2}$ (+0.2pt)
         >
         > Aplicando el criterio de Barkhausen:(+0.2pt)
         >
         > $ A(j\omega_{osc}) \beta (j\omega_{osc}) = 1$
         >
         > $ A\frac{4RCj\omega_{osc}}{3+16RCj\omega_{osc}+8R^2C^2(j\omega_{osc})^2} = 1$
         >
         > $ 4ARCj\omega_{osc} = 3+16RCj\omega_{osc}-8R^2C^2\omega_{osc}^2 $
         >
         > Igualando la parte imaginaria:
         >
         > $4ARC\omega_{osc} = 16RC\omega_{osc}$
         >
         > $A = 4$
         >
         > Por lo tanto, el valor de A en que el filtro se vuelve inestable es 4.
         >
         > Igualando la parte real:
         >
         > $0 = 3-8R^2C^2\omega_{osc}^2$
         >
         > $8R^2C^2\omega_{osc}^2 = 3$
         >
         > $\omega_{osc}^2 = \frac{3}{8R^2C^2}$
         >
         > $\omega_{osc} = \frac{\sqrt{3}}{2\sqrt{2}RC}$
         >
         > En Hz: (+0.1pt)
         >
         > $f_{osc} = \frac{\sqrt{3}}{4\pi\sqrt{2}RC} \approx 975\ Hz$

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = V_F$ cuando los diodos están polarizados en directa, $I_D=0$ cuando están polarizados en inversa, y $V_D = - V_Z$ si el diodo zener está conduciendo en inversa, resuelva los siguientes circuitos ($\cancel{1.5}\ 1.65 pt$):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=3.3\ k\Omega$, $R_2=4.7\ k\Omega$, $V_F=0.7\ V$ (0.55pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R.png" width="300">

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R_with_currents.png" width="300">
      >
      > Identificación de todos los voltajes y corrientes: 0.05pt
      >
      > Al remover los diodos se observa que $V_{D_1} = 10\ V$ y $V_{D_2} = 0 V$. Por lo tanto $D_1$ conduce y $D_2$ no. (+0.1pt) 
      >
      > Al reemplazar $D_1$ por una fuente de voltaje de $0.7\ V$, se observa que $V_2 = 9.3\ V$ (+0.05pt) y $V_1 \approx 3.8\ V $. Por lo tanto, el nuevo $V_{D_2} = 9.3 - 3.8 = 5.5\ V > V_F$, lo que implica que $D_2$ también conduce. (+0.1pt)
      >
      > Al reemplazar $D_2$ por una fuente de voltaje de $0.7\ V$, se observa que $V_1 = 8.6\ V$ (+0.05pt)
      >
      > $I_{R_2} =  \frac{V_2-V_1}{R_2} = \frac{0.7}{4.7\ k} \approx 150\ \mu A$ (+0.05pt)
      >
      > $I_{R_1} = I_{D_1} = \frac{V_1}{R_1} = \frac{8.6}{3.3\ k} \approx 2.6\ m A$ (+0.1pt)
      >
      > $I_{D_2} = I_{D_1} - I_{R_2} = 2.6\ mA - 150\ \mu A = 2.45\ mA$ (+0.05pt)
   
   1. Datos: $V_{CC}=10\ V$, $R_3=1\ k\Omega$, $R_4=10\ k\Omega$, $V_F=0.7\ V$, $V_Z = 3.3\ V$ (0.55pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt.png" width="300">

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_2R_alt_with_currents.png" width="300">
      >
      > Identificación de todos los voltajes y corrientes: 0.05pt
      >
      > Al remover ambos diodos se observa que $V_{D_Z} = - 10\ V$ y $V_{D_3} = 0\ V$, por lo tanto $D_Z$ conduce en inversa y $D_3$ no conduce. (+0.1pt)
      >
      > Al reemplazar $D_Z$ por una fuente de $-3.3\ V$, se obtiene que $V_2 = 10-3.3 = 6.7\ V$ (+0.05pt). Además, por divisor de voltaje:
      >
      > $V_1 = V_2\frac{R_3}{R_3+R_4} = 6.7\frac{1}{11} \approx 0.6\ V$ 
      >
      > Por lo tanto, el nuevo $V_{D_3} = V_2 - V_1  = 6.1\ V > V_F$, lo que significa que $D_3$ conduce (+0.1pt)
      >
      > Como $D_3$ conduce, $V_1 = V_2 - V_F = 6\ V$ (+0.05pt)
      >
      > $I_{R_3} = \frac{V_{R_3}}{R_3} = \frac{6-0}{1\ k} = 6\ mA$ (0.05pt)
      >
      > $I_{D_Z} = I_{R_3} = 6\ mA$ (0.05pt)
      >
      > $I_{R_4} = \frac{V_{R_4}}{R_4} = \frac{6.7-6}{10\ k} = 70\ \mu A$ (0.05pt)
      >
      > $I_{D_3} = I_{D_Z} - I_{R_4} = 6\ m A - 0.07\ m A = 5.93\ m A$ (0.05pt)

   1. Datos: $V_{CC}=9\ V$, $R_5=R_6=R_7=1\ k\Omega$, $V_F=0.7\ V$, $V_Z = 5.1\ V$ (0.55pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt2.png" width="300">

      >
      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_diode_zener_3R_alt2_with_currents.png" width="300">
      >
      > Identificación de todos los voltajes y corrientes: 0.05pt
      >
      > Al remover ambos diodos se observa que $V_{D_Z} = -V_2 = -9\ V$. Por lo tanto $D_Z$ conduce en inversa. (+0.05pt)
      >
      > Por otro lado, $V_1 = V_{CC}\frac{R_5}{R_5+R_6} = 4.5\ V$ (+0.05pt)
      >
      > Así, $V_{D_4} = V_1-V_2= -4.5\ V$  y $D_4$ no conduce (+0.05pt)
      >
      > Como $D_Z$ conduce en inversa, $V_2 = 5.1\ V$ (+0.05pt)
      >
      > Con el nuevo valor de $V_2$, se calcula $V_{D_4}$ nuevamente:
      >
      > $V_{D_4} = V_1-V_2= 4.5 - 5.1 = -0.6\ V$ y se confirma que $D_4$ no conduce. (+0.05pt).
      >
      > Se calculan las corrientes:
      >
      > Como $D_4$ no conduce, $I_3=0$ (+0.05pt)
      >
      > $I_1 = I_5 = \frac{V_{CC}-V_1}{R_6} = \frac{9-4.5}{1\ k} = 4.5\ mA$ (+0.1pt)
      >
      > $I_2 = I_4 = \frac{V_{CC}-V_2}{R_7} = \frac{9-5.1}{1\ k} = 3.9\ mA$ (+0.1pt)

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa está entre $V_F = 0.62\ V$ y $V_F = 0.72\ V$ cuando $I_F = 5\ mA$. El rango de temperatura de operación indicado es entre -65 °C y +175 °C. Asumiendo que $I_S=0.05\ pA$ y $n=1$, compruebe: ($\cancel{0.8}\ 0.9 pt$)
   > $I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $
   >
   > $\implies V_D = nV_T\ln{(\frac{I_D+I_S}{I_S})}$

   1. Cuál es el valor de $V_D$ si la temperatura es -65 °C (y $I_F = 5\ mA$).

      > $V_T = \frac{kT}{q} = \frac{1.38 * 10^{-23} * (-65+273)}{1.6*10^{-19}} \approx 17.94\ mA$ (+0.2pt)
      >
      > $V_D = nV_T\ln{(\frac{I_D+I_S}{I_S})} = 17.94*10^{-3} \ln{(\frac{5*10^{-3}+0.05*10^{-12}}{0.05*10^{-12}})} \approx 0.45\ V$ (+0.25pt)
   1. Cuál es el valor de $V_D$ si la temperatura es +175 °C (y $I_F = 5\ mA$).

      > $V_T = \frac{kT}{q} = \frac{1.38 * 10^{-23} * (175+273)}{1.6*10^{-19}} \approx 38.64\ mA$ (+0.2pt)
      >
      > $V_D = nV_T\ln{(\frac{I_D+I_S}{I_S})} = 38.64*10^{-3} \ln{(\frac{5*10^{-3}+0.05*10^{-12}}{0.05*10^{-12}})} \approx 0.98\ V$ (+0.25pt)

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
Criterio de Barkhausen, con $A$ y $\beta$ calculados en $s=j\omega$:
$$ A \beta = 1$$
