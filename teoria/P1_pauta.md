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

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_resistor_diode.png" width="150">

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_resistor_diode_with_currents.png" width="150">
      >
      > $D$ está polarizado en directa => conduce y $V_{D} = 0.7\ V$ (+0.25pt)
      >
      > Si se asume que $D$ no conduce, se llega a que $V_{D} = 5\ V$. Pero si $V_{D} > 0.7$ significa que conduce => contradicción. Por lo tanto  $D$ está polarizado en directa => conduce y $V_{D} = 0.7\ V$
      >
      > LKV en la malla:
      >
      > $ V_{CC} - R I - V_D = 0$ (+0.25pt)
      >
      > $ I = \frac{V_{CC}-V_D}{R} = \frac{5-0.7}{1000} $
      >
      > $ I = 4.3\ mA$ (+0.25pt)
   
   1. Datos: $V_{CC}=5\ V$, $R_1=1\ k\Omega$, $R_2=1\ k\Omega$ *(0.75pt)*

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R.png" width="220"> 

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R_with_currents.png" width="220">
      >
      > $D_1$ está polarizado en directa => conduce. Si se asume lo contrario se llegaría a que $V_{D_1} = 5\ V$. Pero si $V_{D_1} > 0.7$ significa que conduce => contradicción. Por lo tanto $D_1$ está polarizado en directa => conduce y $V_{D_1} = 0.7\ V$ (+0.075pt)
      >
      > $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$. Si se asume que $D_2$ no conduce, se llega a que $V_2 = 4.3\ V$ y $V_1 = 2.15\ V$ $\implies V_{D_2} = 2.15\ V$. Pero si $V_{D_2} > 0.7$ significa que conduce => contradicción. Por lo tanto $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$ (+0.075pt)
      >
      > $V_2 = V_{CC} - V_{D_1} = 5 - 0.7 = 4.3\ V$
      >
      > $V_1 = V_2 - V_{D_2} = 4.3 - 0.7 = 3.6\ V$
      >
      > $I_{R_1} = \frac{V_1 - 0}{R_1} = 3.6/1000 = 3.6\ mA$
      >
      > $I_{R_2} = \frac{V_2 - V_1}{R_2} = 0.7/1000 = 0.7\ mA$
      >
      > LKC en $V_1$:
      >
      > $I_{D_2} + I_{R_2} - I_{R_1} = 0 $
      >
      > $I_{D_2} + 0.0007 - 0.0036 = 0 $
      >
      > $I_{D_2} = 0.0029 = 2.9\ mA $
      >
      > LKC en $V_2$:
      >
      > $I_{D_1} - I_{R_2} - I_{D_2} = 0 $
      >
      > $I_{D_1} - 0.0007 - 0.0029 = 0 $
      >
      > $I_{D_1} = 0.0036 = 3.6\ mA $
      >
      > Resultados
      >
      > $V_1 = 3.6\ V$ (+0.1pt)
      >
      > $V_2 = 4.3\ V$ (+0.1pt)
      >
      > $I_{R_1} = 3.6\ mA$ (+0.1pt)
      >
      > $I_{R_2} =  0.7\ mA$ (+0.1pt)
      >
      > $I_{D_1} = 3.6\ mA $ (+0.1pt)
      >
      > $I_{D_2} = 2.9\ mA $ (+0.1pt)
      >

1. Calcule $I_C$ en el siguiente circuito, cuando el valor de $V_i$ es el señalado en cada ítem. Para cada ítem, calcule también $\beta_{forzado}$ si el transistor está operando en modo saturado, o $V_{CE}$ si está operando en modo activo. Asuma $V_{CC}=12\ V$, $R_E= 5.6\ k\Omega$, $R_C= 1.2\ k\Omega$, $\beta = 50$, $V_{CE_{SAT}} = 0.2\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)
   
      <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_re_rc.png" width="200">
      
      > Considerando $I_B$ e $I_C$ con sus sentidos convencionales.

   1. $V_i = 0.3\ V$ *(0.5pt)*

      > $V_i = 0.3 \implies V_B = 0.3 \implies V_{BE} < 0.7 \implies I_B = 0$ (+0.2pt)
      >
      > $I_B = 0 \implies I_C = 0$ (+0.2pt)
      >
      > $V_{CE} = V_{CC} - R_C I_C - R_E I_E = 12 - 0 - 0 = 12\ V > V_{CE_{SAT}}$ (+0.1pt)
   1. $V_i = 6\ V$ *(0.5pt)*
      
      > base-emisor polarizado en directa $\implies V_{BE} = 0.7\ V$
      >
      > $V_E = V_i - V_{BE} = 6 - 0.7 = 5.3\ V$ (+0.1pt)
      >
      > Resistencia $R_E$
      >
      > $R_E I_E  = V_E$
      >
      > $ I_E  = V_E / R_E = 5.3 / 5600 \approx 0.95\ mA$ (+0.1pt)
      >
      > Si se asume que el transistor está saturado se llega a $I_C \approx 5.4\ mA$. Pero, en dicho caso $I_B = I_E - I_C = -4.45\ mA$, y por lo tanto $\beta_{forzado} = I_C / I_B \approx -4.7$ es menor que cero. Por lo tanto, no está saturado.
      >
      > Assumiendo que el transistor está en modo *activo*: (+0.1pt)
      >
      > $I_C = \beta I_B $
      >
      > Como $I_E = I_C + I_B$,
      >
      > $I_E = \beta I_B + I_B = (1+\beta) I_B$
      >
      > $I_B = I_E / (1 + \beta) = 0.00095 / 51 \approx 0.019\ mA$
      >
      > $I_C = I_E - I_B = 0.95 - 0.019 \approx 0.93\ mA$ (+0.1pt)
      >
      > Comprobación del modo activo: Resistor $R_C$: (+0.1pt)
      >
      > $R_C I_C  = V_{CC} - V_C$
      >
      > $V_C = V_{CC} - R_C I_C = 12 - 1200 * 0.00093 \apprpx 10.9\ V$
      >
      > $V_{CE} = V_C - V_E = 10.9 - 5.3 = 5.6\ V$. Como $V_{CE} > V_{CE_{SAT}}$, se confirma que el transistor está en el modo activo.

   1. $V_i = 11\ V$ *(0.5pt)*
   
      > base-emisor polarizado en directa $\implies V_{BE} = 0.7\ V$
      >
      > $V_E = V_i - V_{BE} = 11 - 0.7 = 10.3\ V$ (+0.1pt)
      >
      > Resistencia $R_E$
      >
      > $R_E I_E  = V_E$
      >
      > $ I_E  = V_E / R_E = 10.3 / 5600 \approx 1.8\ mA$ (+0.1pt)
      >
      > Si se asume que el transistor está activo, se llega a $I_C \approx 1.76\ mA$. Pero, en dicho caso $V_{CE} = V_{CC} - R_C I_C - V_E= 12 - 1200 * 0.00176 - 10.3  \approx -0.4\ V$, que es menor que $V_{CE_{SAT}}$. Por lo tanto, no está activo.
      >
      > Assumiendo que el transistor está en modo *saturado*: (+0.1pt)
      >
      > $V_C = V_E + V_{CE_{SAT}} = 10.3 + 0.2 = 10.5\ V$
      >
      > $I_C = \frac{V_{CC}-V_C}{R_C} = \frac{12-10.5}{1200} = 1.25\ mA $ (+0.1pt)
      >
      > Comprobación de $\beta_{forzado}$: (+0.1pt)
      >
      > $I_B = I_E - I_C = 1.8 - 1-25 = 0.55\ mA$
      >
      > $\beta_{forzado} = I_C / I_B = 1.25\ mA / 0.55\ mA \approx 2.3$. Como $0 <\beta_{forzado} < \beta$, se confirma que el transistor está operando en el modo saturado.

2. Para el siguiente circuito de amplificador en emisor común, calcule lo que se pide. Asuma $V_{CC} = 20\ V$, $R_1= 10\ k\Omega$, $R_2= 3.3\ k\Omega$, $R_C= 3.9\ k\Omega$, $R_E= 2\ k\Omega$, $\beta = 100$, la temperatura $T=300\ K$, $V_{CE_{SAT}} = 0.3\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter.png" width="300"> 

   1. La corriente de colector de polarización $I_{C_Q}$ *(0.75pt)*

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/common_emitter_thevenin.png" width="300"> 
      >
      > Cálculo del circuito equivalente de Thevenin
      >
      > $V_{th} = \frac{R_2}{R_1 + R_2} V_{CC}$ (+0.2pt)
      >
      > $V_{th} = \frac{3300}{10000 + 3300} 20$
      >
      > $V_{th} \approx 4.96\ V$
      >
      > $R_{th} = R_1 // R_2$ (+0.2pt)
      >
      > $R_{th} = \frac{R_1 R_2}{R_1 + R_2}$
      >
      > $R_{th} = \frac{10000*3300}{10000 + 3300}$
      >
      > $R_{th} \approx 2.5\ k\Omega$
      >
      > Malla Base-Emissor (+0.25pt)
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
      > $I_B = \frac{4.96  - 0.7}{2500 + 101 * 2000}$
      >
      > $I_B \approx 21\ \mu A$
      >
      > Asumiendo modo activo
      >
      > $I_{C_Q} = \beta I_B$
      >
      > $I_{C_Q} = 100 * 21\ \mu A$
      >
      > $I_{C_Q} \approx 2.1\ mA$
      >
      > Comprobación de modo activo (+0.1pt)
      >
      > $V_{C_Q} = V_{CC} - R_C I_{C_Q} $
      >
      > $V_{C_Q} = 20 - 3900 * 0.0021 $
      >
      > $V_{C_Q} \approx 11.8\ V$.
      >
      > $V_{E} = R_E I_{E} = R_E (\beta + 1) I_B$
      >
      > $V_{E} = 2000 * 101 * 0.000021$
      >
      > $V_{E} \approx 4.2\ V$
      >
      > $V_{CE} = V_{C_Q} - V_E$
      >
      > $V_{CE} = 11.8 - 4.2 = 7.6\ V$. Como $V_{CE} > V_{CE_{SAT}}$, se confirma que el transistor está en el modo activo. 
   2. La ganancia de voltaje $A_V$ *(0.75pt)*

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
      > $A_V = \frac{- 3900 * 0.0021 }{0.026}$
      >
      > $A_V \approx -315$
      

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
