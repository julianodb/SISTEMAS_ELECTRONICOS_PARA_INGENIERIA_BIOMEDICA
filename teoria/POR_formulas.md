# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Sistemas Electrónicos 2023/01
# Prueba Optativa Recuperativa

## Fórmulas

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$
- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\enspace J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\enspace C$

$$ H(s) = \frac{v_o(s)}{v_i(s)} $$
$$ A_v(\omega) = || H(s=j\omega) ||$$
$$ A_{v_{dB}}(\omega) = 20 log\left(|| H(j\omega) ||\right)$$
$$ A_v(\omega_c) = A_v(2\pi f_c) = \frac{A_{v_{max}}}{\sqrt{2}}$$
$$ \phi(\omega) = arg\left( H(j\omega) \right) = tan^{-1} \left( \frac{Im\{H(j\omega)\}}{Re\{H(j\omega)\}} \right)$$
$$Calor_{Resistencia} = IV = RI^2 = V^2 / R$$
$$ V_o = V_{final} - (V_{final}-V_{inicial})e^{\frac{-t}{RC}} $$
$$ T_t = R C \ln{\frac{1}{1-\beta}} $$
$$ T = \frac{1}{f} = 2 R C \ln{\frac{1+\beta}{1-\beta}} $$
$$ \beta A = Ganancia\ de\ Malla $$
$$ \eta = \frac{V_o}{V_i} \frac{I_o}{I_o + I_Q} $$
$$ V_{DO} = V_i - V_o$$
$$ V_o = D V_i$$
$$ V_o = \frac{1}{1-D} V_i$$
$$ V_o = \frac{D}{D-1} V_i$$

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
