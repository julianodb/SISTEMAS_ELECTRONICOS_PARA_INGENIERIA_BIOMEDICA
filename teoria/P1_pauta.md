# Sistemas Electrónicos 2023/01
## Prueba Escrita 1 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa típico es $V_F = 0.7\ V$. Calcule el valor de $V_D$ utilizando la ecuación de Shockley para los siguientes valores de $I_D$ para comprobar qué tan "buena" es dicha aproximación. Para cada item, calcule también el porcentaje de error con respecto al $V_F$ dado por el fabricante. Suponga que $I_S=1\ pA$ y $n=1$. Suponga también que la temperatura es $T=300\ K$. (1.5 pt)
   > $ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $
   >
   > $ \frac{I_D}{I_S} + 1 = e^{\frac{V_D}{n V_T}} $
   >
   > $ \frac{V_D}{n V_T} =\ln (\frac{I_D}{I_S} + 1)  $
   >
   > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
   >
   > Además,
   >
   > $ V_T = \frac{kT}{q} $
   >
   > $ V_T = \frac{1.38\ 10^{-23}\ 300}{1.6\ 10^{-19}} \approx 0.026\ V$ 

   1. $I_D = 15\ mA$ *(0.5 pt)*

      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.026 \ln (\frac{0.015}{10^{-12}} + 1)  \approx 0.606\ V $ (+0.3pt)
      >
      > $Porcentaje\ de\ error\ con\ respecto\ a\ V_F = 100 \frac{0.606 - 0.7}{0.7} \approx -13$ % (+0.2pt)
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos
   1. $I_D = 150\ mA$

      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.026 \ln (\frac{0.15}{10^{-12}} + 1)  \approx 0.666 V $ (+0.3pt)
      >
      > $Porcentaje\ de\ error\ con\ respecto\ a\ V_F = 100 \frac{0.666 - 0.7}{0.7} \approx -4.9$ % (+0.2pt)
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos

   1. $I_D = 1.5\ A$

      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.026 \ln (\frac{1.5}{10^{-12}} + 1)  \approx 0.725\ V $ (+0.3pt)
      >
      > $Porcentaje\ de\ error\ con\ respecto\ a\ V_F = 100 \frac{0.725 - 0.7}{0.7} \approx 3.6$ % (+0.2pt)
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = 0.7\ V$ cuando los diodos están polarizados en directa y $I_D=0$ cuando están polarizados en inversa, resuelva los siguientes circuitos (1.5 pt):
   
   1. Datos: $V_{CC}=5\ V$, $R=1\ k\Omega$ *(0.75pt)*

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_resistor_diode.png" width="130">

      > $D$ está polarizado en directa => conduce y $V_{D} = 0.7\ V$ (+0.1pt)
      >
      > Si se asume que $D$ no conduce, se llega a que $V_{D} = 5\ V$. Pero si $V_{D} > 0$ significa que conduce => contradicción. Por lo tanto  $D$ está polarizado en directa => conduce y $V_{D} = 0.7\ V$
      >
      > 
   
   1. Datos: $V_{CC}=5\ V$, $R_1=1\ k\Omega$, $R_2=1\ k\Omega$ *(0.75pt)*

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R.png" width="200"> 

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/two_diode_3R_with_currents.png" width="200">
      >
      > $D_3$ está polarizado en inversa => no conduce. Si se asume lo contrario se llegaría a que $V_4 = 5.7\ V > V_{CC}$. Pero $V_{CC}$ tiene que ser el mayor voltaje en el circuito, entonces $D_3$ está polarizado en inversa => no conduce.
      >
      > $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$. Si se asume que $D_2$ no conduce, se llega a que $V_{D_2} = 5\ V$. Pero si $V_{D_2} > 0$ significa que conduce => contradicción. Por lo tanto $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$
      >
      > LKC (+0.1pt)
      >
      > $I_4 = 0$
      >
      > $I_3 = I_5 = I$
      >
      > Malla 1 (VCC, D2, R3 y R5) (+0.4pt)
      >
      > $V_{CC} - V_{D_2} - R_3 I - R_5 I = 0$
      >
      > $ 5 - 0.7 - 1000 I - 1000 I = 0 $
      >
      > $ I = 2.15\ mA $
      >
      > Resultados (+0.25pt)
      >
      > $I_{V_{CC}} = I_{D_2} = I_{R_3} = I_{R_5} = I = 2.15\ mA$
      >
      > $I_{D_3} = I_{R_4} = I_4 = 0$
      >
      > $V_5 = R_5 I = 1000*0.00215 = 2.15\ V$
      >
      > $V_4 = V_5 + R_4 I_4 = 2.15 + 0 = 2.15\ V$
      >
      > $V_3 = V_5 + R_3 I = 2.15 + 1000*0.00215 = 4.3\ V$

1. Calcule $V_o$ en el siguiente circuito, cuando el valor de $V_i$ es el señalado en cada ítem. Para cada ítem, calcule también $\beta_{forzado}$ si el transistor está operando en modo saturado, o $V_{CE}$ si está operando en modo activo. Asuma $V_{CC}=5\enspace V$, $R_B= 45\enspace k\Omega$, $R_C= 625\enspace \Omega$, $\beta = 100$, $V_{CE_{SAT}} = 0.3\enspace V$ y $V_{BE} =0.7\enspace V$ cuando la unión base-emisor está polarizada en directa. *(1.5pt)*

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_inverter.png" width="200">
      
      > Considerando $I_B$ e $I_C$ con sus sentidos convencionales.

   1. $V_i = 0\enspace V$ *(0.5pt)*

      > $V_i = 0 \implies V_B = 0 \implies V_{BE} = 0 \implies I_B = 0$ (+0.2pt)
      >
      > $I_B = 0 \implies I_C = 0$ (+0.2pt)
      >
      > $\therefore V_o = V_{CC} - R_C I_C = 5 - 0 = 5\ V$ (+0.1pt)
   1. $V_i = 2\enspace V$ *(0.5pt)*
      
      > base-emisor polarizado en directa $\implies V_{BE} = 0.7\ V$
      >
      > Malla 1 ($V_i$, $R_B$, $V_{BE}) (+0.2pt)
      >
      > $V_i - R_B I_B - V_{BE} = 0$
      >
      > $2 - 45000 I_B - 0.7 = 0$
      >
      > $I_B \approx 29\ \mu A $
      >
      > Si se asume que el transistor está saturado se llega a $I_C \approx 6.9\ mA$. Pero, en dicho caso $\beta_{forzado} = I_C / I_B \approx 238$ es mayor que $\beta$. Por lo tanto, no está saturado.
      >
      > Assumiendo que el transistor está en modo *activo*: (+0.2pt)
      >
      > $I_C = \beta I_B = 100 * 29\ \mu A = 2.9\ mA $
      >
      > Malla 2 (colector y emisor) (+0.1pt):
      >
      > $V_{CC} - R_C I_C - V_{CE} = 0$
      >
      > $5 - 625 * 0.0029 - V_{CE} = 0$
      >
      > $V_{CE} \approx 3.2\ V$. Como $V_{CE} > V_{CE_{SAT}}$, se confirma que el transistor está en el modo activo.
      >
      > $\therefore V_o = 3.2\ V$
   1. $V_i = 5\enspace V$ *(0.5pt)*
   
      > base-emisor polarizado en directa $\implies V_{BE} = 0.7\ V$
      >
      > Malla 1 ($V_i$, $R_B$, $V_{BE}) (+0.2pt)
      >
      > $V_i - R_B I_B - V_{BE} = 0$
      >
      > $5 - 45000 I_B - 0.7 = 0$
      >
      > $I_B \approx 95\ \mu A $
      >
      > Si se asume que el transistor está activo, se llega a $I_C \approx 9.5\ mA$. Pero, en dicho caso $V_{CE} = V_{CC} - R_C I_C = 5 - 625 * 0.095 \approx -0.9\ V$, que es menor que $V_{CE_{SAT}}$. Por lo tanto, no está activo.
      >
      > Assumiendo que el transistor está en modo *saturado*:
      >
      > Malla 2 (colector y emisor) (+0.2pt):
      >
      > $V_{CC} - R_C I_C - V_{CE_{SAT}} = 0$
      >
      > $5 - 625 I_C - 0.3 = 0$
      >
      > $ I_C \approx 6.9\ mA$
      >
      > $ V_o = V_{CE} = V_{CE_{SAT}} = 0.3\ V$
      >
      > Comprobación de $\beta_{forzado}$: (+0.1pt)
      >
      > $\beta_{forzado} = I_C / I_B = 6.9\ mA / 95\ \mu A \approx 73$. Como $0 <\beta_{forzado} < \beta$, se confirma que el transistor está operando en el modo saturado.

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 15\enspace V$, $R_1= 24\enspace k\Omega$, $R_2= 6.2\enspace k\Omega$, $R_C= 5.1\enspace k\Omega$, $R_E= 1.5\enspace k\Omega$, $\beta = 100$ y la temperatura $T=300\enspace K$.

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter.png" width="300"> 

   1. La corriente de colector de polarización $I_{C_Q}$

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_thevenin.png" width="300"> 
      >
      > Cálculo del circuito equivalente de Thevenin
      >
      > $V_{th} = \frac{R_2}{R_1 + R_2} V_{CC}$ (+0.2pt)
      >
      > $V_{th} = \frac{6200}{24000 + 6200} 15$
      >
      > $V_{th} \approx 3.08\ V$
      >
      > $R_{th} = R_1 // R_2$ (+0.2pt)
      >
      > $R_{th} = \frac{R_1 R_2}{R_1 + R_2}$
      >
      > $R_{th} = \frac{24000*6200}{24000 + 6200}$
      >
      > $R_{th} \approx 4.9\ k\Omega$
      >
      > Malla Base-Emissor (+0.35pt)
      >
      > $V_{th} - R_{th} I_B - V_{BE} - R_E I_E = 0$
      >
      > Usando $I_E = (\beta + 1) I_B$:
      >
      > $V_{th} - R_{th} I_B - V_{BE} - R_E (\beta + 1) I_B = 0$
      >
      > $I_B = \frac{V_{th}  - V_{BE}}{R_{th} + (\beta + 1) R_E}$
      >
      > Usando $V_{BE} = 0.7\ V$ y los valores de $V_{th}$ y $R_{th}$
      >
      > $I_B = \frac{3.08  - 0.7}{4900 + 101 * 1500}$
      >
      > $I_B \approx 15\ \mu A$
      >
      > Asumiendo modo activo
      >
      > $I_{C_Q} = \beta I_B$
      >
      > $I_{C_Q} = 100 * 15\ \mu A$
      >
      > $I_{C_Q} \approx 1.5\ mA$
      >
      > Comprobación de modo activo
      >
      > $V_{C_Q} = V_{CC} - R_C I_{C_Q} $
      >
      > $V_{C_Q} = 15 - 5100 * 0.0015 $
      >
      > $V_{C_Q} \approx 7.35\ V$.
      >
      > $V_{E} = R_E I_{E} = R_E (\beta + 1) I_B$
      >
      > $V_{E} = 1500 * 101 * 0.0000015$
      >
      > $V_{E} \approx 0.23\ V$
      >
      > $V_{CE} = V_{C_Q} - V_E$
      >
      > $V_{CE} = 7.35 - 0.23 = 7.12\ V$. Como $V_{CE} > V_{CE_{SAT}}$, se confirma que el transistor está en el modo activo. 
   2. La ganancia de voltaje $A_V$

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_small_signal.png" width="300"> 
      >
      > Dibujo del circuito equivalente en AC (+0.25pt)
      >
      > Malla de la base (+0.15pt)
      >
      > $v_{i_{AC}} - r_\pi i_{B_{AC}} = 0$
      >
      > $ v_{i_{AC}} = r_\pi i_{B_{AC}}$ (1)
      >
      > Malla del colector (+0.1pt)
      >
      > $v_{o_{AC}} + R_C i_{C_{AC}} = 0$
      >
      > $v_{o_{AC}} = - R_C i_{C_{AC}}$
      >
      > Asumiendo modo activo (comprobado en analisis DC)
      >
      > $v_{o_{AC}} = - R_C \beta i_{B_{AC}}$ (2)
      >
      > Definición de la ganancia de voltaje (+0.25pt)
      >
      > $A_V = \frac{v_{o_{AC}}}{v_{i_{AC}}}$
      >
      > Usando (1) y (2)
      >
      > $A_V = \frac{- R_C \beta i_{B_{AC}}}{r_\pi i_{B_{AC}}}$
      >
      > $\implies A_V = \frac{- R_C \beta }{r_\pi}$
      >
      > Utilizando la fórumla de $r_\pi$
      >
      > $A_V = \frac{- R_C \beta I_{C_Q} }{\beta V_T}$
      >
      > $A_V = \frac{- R_C I_{C_Q} }{V_T}$
      >
      > $A_V = \frac{- 5100 * 0.0015 }{0.026}$
      >
      > $A_V \approx -294$
      

# Fórmulas

$$ Porcentaje\ de\ error\ con\ respecto\ a\ X = 100 \frac{Valor\ Real - X}{X} $$
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
