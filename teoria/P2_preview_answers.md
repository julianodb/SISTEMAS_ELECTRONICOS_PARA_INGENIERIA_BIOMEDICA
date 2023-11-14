# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/02
## Guía de Ejercícios para la Prueba Escrita 2 - Respuestas

1. La Figura 1 muestra dos amplificadores de emisor común conectados en serie, mientras que la Figura 2 muestra su modelo AC. 

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_double.png" width="600">

    Figura 1: Dos amplificadores de emisor común conectados en serie.

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/RC_common_emitter_double.png" width="600">

    Figura 2: Modelo AC de dos amplificadores de emisor común conectados en serie.

    Datos:
    - $I_{C_Q} = 1.5\ mA$
    - $A_{V1} = A_{V2} = - \frac{R_C I_{C_Q}}{V_T} = -294$
    - $Z_{i1} = Z_{i2} = R_1 // R_2 = 4.9\ k\Omega$ 
    - $Z_{o1} = Z_{o2} = R_C = 5.1\ k\Omega$

    Determine: 

    1. La ganancia total del sistema ($A_{V_{TOTAL}} = \frac{v_{o2}}{v_{i1}}$)
        > $A_{V_{TOTAL}} = 42353.6 \approx 42000$
    2. Una forma de disminuir la pérdida de ganancia por la incompatibilidad de impedancias es disminuir el valor de $R_C$. Sin embargo, esto también afecta la ganancia de cada amplificador ($A_{V1}$ y $A_{V2}$). Calcule la nueva ganancia total del sistema si se reduce $R_C$ por la mitad ($R_C = 2.55\ k\Omega$)
        > $A_{V_{TOTAL}} = 14212.6 \approx 14000$
    2. Para compensar la pérdida de ganancia de cada amplificador por la disminución de $R_C$, se puede cambiar $R_1$ y $R_2$ de tal forma a aumentar la corriente quiescente de colector ($I_{C_Q}$). El costo de hacerlo es que el circuito consume más energía. Calcule la nueva ganancia total del sistema si se reduce $R_C$ por la mitad ($R_C = 2.55\ k\Omega$) y al mismo tiempo se duplica $I_{C_Q}$ ($I_{C_Q} = 3\ mA$)
        > $A_{V_{TOTAL}} = 56850.5.2 \approx 57000$

4. Para el circuito de la Figura 3, asumiendo que $R_1=R_2=10\ k\Omega$ y $C_1=C_2=1\ nF$ determine:

    <img src="https://julianodb.github.io/electronic_circuits_diagrams/sallen_key_low_2.png" width="400"> 

    Figura 3: Circuito con topología Sallen-Key.

    1. Qué tipo de filtro está implementado
        > Filtro paso-baja
    1. La(s) frecuencia(s) de corte
        > Hay apenas una frecuencia de corte: $\omega_c = 64359 \approx 64000\ rad/s$. O en Hz: $f_c = \omega_c/2\pi = 10243 \approx 10\ kHz$
    1. La ganancia en dB en corriente contínua
        > $A_{V_{dB}}(\omega=0) = 20\log 1 = 0\ dB$
    1. La ganancia en dB para una entrada con frecuencia 50 Hz
        > $A_{V_{dB}}(\omega=0) = 20\log 0.999990 = -0.000086 \approx 0\ dB$
    1. La ganancia en dB para una entrada con frecuencia 1 MHz
        > $A_{V_{dB}}(\omega=0) = 20\log (2.5330 \times 10^{-14}) = -271.9 \approx -270\ dB$

# Fórmulas

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = || H(s=j\omega) ||$$
$$ A_{v_{dB}}(\omega) = 20 log\left(|| H(j\omega) ||\right)$$
$$ A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$

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
