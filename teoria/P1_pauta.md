# Sistemas Electrónicos 2024/01
## Prueba Escrita 1 - Pauta

> En general, por errores de cálculo se descuenta 0.05pt, y por errores conceptuales o en la aplicación de fórmulas 0.1pt.

1. El fabricante de cierto diodo asegura que el voltaje de polarización en directa está entre $V_F = 0.62\ V$ y $V_F = 0.72\ V$ cuando $I_F = 5\ mA$ y $T=25°C$. El rango de temperatura de operación indicado es entre -65 °C y +175 °C. Asumiendo que $I_S=0.05\ pA$ y $n=1$ y utlizando la ecuación de Shockley, compruebe: (1.5 pt)
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
   1. Si el valor de $V_D$ a 25 °C con $I_F = 5\ mA$ realmente está dentro del rango indicado por el fabricante
      > $T = 273 + 25 = 298\ K$
      >
      > $ V_T = \frac{1.38\ 10^{-23}\ 298}{1.6\ 10^{-19}} $
      >
      > $ V_T \approx 0.0257\ V $ (+0.2pt)
      >
      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.0257 \ln (\frac{0.005}{0.05*10^{-12}} + 1)  \approx 0.650\ V $ (+0.3pt)
      >
      > El valor de $V_D$ está dentro del rango indicado por el fabricante
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos
   1. En cuanto cambia $V_D$ si la temperatura baja a -65 °C ($I_F$ sigue siendo $5\ mA$).
      > $T = 273 -65 = 208\ K$
      >
      > $ V_T = \frac{1.38\ 10^{-23}\ 208}{1.6\ 10^{-19}} $
      >
      > $ V_T \approx 0.0179\ V $ (+0.2pt)
      >
      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.0179 \ln (\frac{0.005}{0.05*10^{-12}} + 1)  \approx 0.450\ V $ (+0.3pt)
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos
   1. En cuanto cambia $V_D$ si la temperatura sube a +175 °C ($I_F$ sigue siendo $5\ mA$).
      > $T = 273 +175 = 448\ K$
      >
      > $ V_T = \frac{1.38\ 10^{-23}\ 448}{1.6\ 10^{-19}} $
      >
      > $ V_T \approx 0.0386\ V $ (+0.2pt)
      >
      > $ V_D = n V_T\ln (\frac{I_D}{I_S} + 1)  $ 
      >
      > $ V_D = 0.0386 \ln (\frac{0.005}{0.05*10^{-12}} + 1)  \approx 0.980\ V $ (+0.3pt)
      >
      > Se aceptan otras respuestas dependiendo del número de casas decimales utilizado en los cálculos

1. "Resolver un circuito" significa calcular los voltajes en todos los nodos del circuito y las corrientes en cada uno de sus componentes. Asumiendo que $V_D = 0.7\ V$ cuando los diodos están polarizados en directa y $I_D=0$ cuando están polarizados en inversa, resuelva los siguientes circuitos (1.5 pt):
   
   1. Datos: $V_{CC}=10\ V$, $R_1=5.1\ k\Omega$, $R_2=10\ k\Omega$ (0.75pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R_alt.png" width="350">

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_2R_alt_with_currents.png" width="350">
      >
      > Si se remueve $D_1$ del circuito, se llega a que $V_{D_1} = V_{CC} = 10\ V$. Pero si $V_{D_1} > 0.7$ significa que conduce. Por lo tanto  $D_1$ está polarizado en directa => conduce y $V_{D} = 0.7\ V$ (+0.1pt)
      >
      > De manera similar, si se remueve $D_2$ del circuito, se llega a que $V_{D_2} \approx 6.4\ V$. Pero si $V_{D_2} > 0.7$ significa que conduce. Por lo tanto  $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$ (+0.15pt)
      >
      > Como $V_{D_1}$ conduce, $V_1 = 0.7\ V$ (+0.1pt)
      >
      > Como $V_{D_2}$ conduce, $V_2 = V_1+ 0.7 = 1.4 \ V$ (+0.1pt)
      >
      > Ley de Ohm en $R_2$:
      >
      > $V_2 - V_1 = R_2 I_{R_2}$ (+0.1pt)
      >
      > $1.4 - 0.7 = 10000 I_{R_2} $
      >
      > $\therefore I_{R_2} = 0.7 / 10000 = 70\ \mu A$ 
      >
      > Ley de Ohm en $R_1$:
      >
      > $V_{CC} - V_2 = R_1 I_{R_1}$ (+0.1pt)
      >
      > $10 - 1.4 = 5100 I_{R_1} $
      >
      > $\therefore I_{R_1} = 8.6 / 5100 \approx 1.7\ m A$
      >
      > Además, $I_{D_1} = I_{D_2} + I_{R_2} = I_{R_1} \approx 1.7\ m A$ (+0.1pt)
      >
      > Finalmente, $I_{D_2} = I_{R_1} - I_{R_2} \approx 1.6\ m A$ (+0.1pt)
      >
      > En resúmen:
      > - $V_1 = 0.7\ V$
      > - $V_2 = 1.4\ V$
      > - $I_{R_1} = I_{D_1} \approx 1.7\ m A$
      > - $I_{R_2} \approx 1.6\ m A$
      > - $I_{D_2} \approx 70\ \mu A$
   
   1. Datos: $V_{CC}=5\ V$, $R_3=6.8\ k\Omega$, $R_4=4.7\ k\Omega$, $R_5=3.3\ k\Omega$ (0.75pt)

      <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_3R.png" width="300">

      > <img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_3R_with_currents.png" width="300">
      >
      > Si se remueven $D_2$ y $D_3$ del circuito, se puede mostrar que $V_{D_2} = V_{CC} = 5\ V$ y $V_{D_3} = - V_{CC} = - 5\ V$. Por lo tanto, $D_2$ está polarizado en directa => conduce y $V_{D_2} = 0.7\ V$ (+0.1pt), y $D_3$ está polarizado en inversa => no conduce y $I_4 = 0$. (+0.1pt)
      >
      > Como $D_2$ está polarizado en directa, $V_3 = V_{CC} - V_{D_2} = 5 - 0.7 = 4.3\ V$ (+0.1pt)
      >
      > Como $I_4 = 0$, $R_3$ y $R_5$ forman un divisor de voltaje. Por lo tanto:
      >
      > $V_5 = \frac{R_5}{R_3+R_5} V_3 = \frac{3.3}{6.8+3.3} 4.3 \approx 1.4\ V $ (+0.15pt)
      >
      > Además, como $I_4 = 0$, $V_{R_4} = 0 \implies V_4 = V_5 \approx 1.4\ V$ (+0.1pt)
      >
      > Con respecto a la corriente:
      >
      > $I_3 = I_5 = \frac{V_3}{R_3+R_5} = \frac{4.3}{10100} \approx 430\ \mu A$ (+0.2pt)
      >
      > En resúmen:
      > - $V_3 = 4.3\ V$
      > - $V_4 = V_5 \approx 1.4\ V$
      > - $I_4 = 0$
      > - $I_3 = I_5 \approx 430\ \mu A$

1. Calcule $I_C$ en el siguiente circuito, cuando el valor de $V_i$ es el señalado en cada ítem. Para cada ítem, calcule también $\beta_{forzado}$ si el transistor está operando en modo saturado, o $V_{CE}$ si está operando en modo activo. Asuma $V_{CC}=10\ V$, $R_B= 1.2\ k\Omega$, $R_E= 4.7\ k\Omega$, $R_C= 3.3\ k\Omega$, $\beta = 50$, $V_{CE_{SAT}} = 0.2\ V$ y $V_{BE} =0.7\ V$ cuando la unión base-emisor está polarizada en directa. (1.5 pt)
   
      <img src="https://julianodb.github.io/electronic_circuits_diagrams/npn_re_rc_rb.png" width="200">
      
      > Considerando $I_B$, $I_C$ e $I_E$ con sus sentidos convencionales.

   1. $V_i = 0.2\ V$ *(0.5pt)*

      > Si se remueve el diodo $V_{BE}$ del circuito se llega a que $V_{BE} = 0.2 < 0.7$, lo que implica que la unión base-emisor está polarizada en inversa y, por lo tanto,$ I_B = 0$ (+0.2pt)
      >
      > $I_B = 0 \implies I_C = 0$ (+0.2pt)
      >
      > $V_{CE} = V_{CC} - R_C I_C - R_E I_E = 10 - 0 - 0 = 10\ V > V_{CE_{SAT}}$ (+0.1pt)
   1. $V_i = 4\ V$ *(0.5pt)*
      
      > Si se remueve el diodo $V_{BE}$ del circuito se llega a que $V_{BE} = 4 > 0.7$, lo que implica que la unión base-emisor está polarizada en directa $\implies V_{BE} = 0.7\ V$
      >
      > Si se asume que el transistor está saturado, podemos escribir todos los voltajes con respecto a $V_E$:
      >
      > $V_B = V_E + V_{BE}$
      >
      > $V_C = V_E +  V_{CE_{SAT}}$
      >
      > Luego, aplicando LKC en el transistor:
      >
      > $I_C + I_B = I_E$
      >
      > $\frac{V_{CC} - V_C}{R_C} + \frac{V_i-V_B}{R_B} = \frac{V_E}{R_E}$
      >
      > $\frac{V_{CC} - (V_E + V_{CE_{SAT}})}{R_C} + \frac{V_i-(V_E+V_{BE})}{R_B} = \frac{V_E}{R_E}$
      >
      > $R_E R_B V_{CC} - R_E R_B V_E - R_E R_B V_{CE_{SAT}} + R_E R_C V_i - R_E R_C V_E - R_E R_C V_{BE} = R_B R_C V_E$
      > 
      > $R_E R_B V_{CC} - R_E R_B V_{CE_{SAT}} + R_E R_C V_i  - R_E R_C V_{BE} = R_B R_C V_E + R_E R_B V_E + R_E R_C V_E$
      >
      > $V_E = \frac{R_E R_B (V_{CC} - V_{CE_{SAT}}) + R_E R_C (V_i  -V_{BE})}{R_B R_C  + R_E R_B  + R_E R_C }$
      >
      > $V_E = \frac{4700\ 1200 (10 - 0.2) + 4700\ 3300 (4  -0.7)}{1200\ 3300  + 4700\ 1200  + 4700\ 3300 } = \frac{47\ 12 \ 8.8 + 47\ 33\ 3.3}{12\ 33  + 47\ 12  + 47\ 33 } \approx 4\ V $
      >
      > Pero si $V_E = 4\ V$, $V_B = 4.7\ V$ y la corriente $I_B$ es negativa ! Contradicción => no está saturado
      >
      > Assumiendo que el transistor está en modo *activo*: (+0.1pt)
      >
      > $I_C = \beta I_B $
      >
      > Como $I_E = I_C + I_B$,
      >
      > $I_E = \beta I_B + I_B = (1+\beta) I_B$
      >
      > LKV en la malla base-emisor (+0.1pt):
      >
      > $V_i - R_B I_B - V_{BE} - R_E I_E = 0$
      >
      > $V_i - R_B I_B - V_{BE} - R_E (1+\beta) I_B = 0$
      >
      > $I_B = \frac{V_i - V_{BE}}{R_B + R_E (1+\beta)}= \frac{4 - 0.7}{1200 + 4700 (1+50)} = \frac{3.3}{240900}$
      >
      > $I_B \approx 13.7\ \mu A$ 
      >
      > $I_C = \beta I_B \approx 685\ \mu A$ (+0.1pt)
      >
      > Comprobación del modo activo (+0.2pt):
      >
      > $V_E = R_E I_E = R_E (I_C + I_B) \approx 3.3\ V$ 
      >
      > $V_{CC} - V_C = R_C I_C$
      >
      > $V_C = V_{CC} - R_C I_C \approx 7.7\ V$
      >
      > $V_{CE} = V_C - V_E = 7.7 - 3.3 = 4.4\ V$. Como $V_{CE} > V_{CE_{SAT}}$, se confirma que el transistor está en el modo activo.

   1. $V_i = 8\ V$ *(0.5pt)*
   
      > Si se remueve el diodo $V_{BE}$ del circuito se llega a que $V_{BE} = 8 > 0.7$, lo que implica que la unión base-emisor está polarizada en directa $\implies V_{BE} = 0.7\ V$
      >
      > Si se asume que el transistor está activo:
      >
      > $I_B = \frac{V_i - V_{BE}}{R_B + R_E (1+\beta)}= \frac{8 - 0.7}{1200 + 4700 (1+50)} = \frac{7.3}{240900} \approx 30\ \mu A$
      >
      > $V_E = R_E I_E = R_E (\beta +1) I_B \approx 7.3\ V$
      >
      > $V_C = V_{CC} - R_C I_C = V_{CC} - R_C \beta I_B = 5 \ V$
      >
      > $V_{CE} = 5 - 7.3 = -2.3\ V < V_{CE_{SAT}}$. Por lo tanto, no está activo.
      >
      > Assumiendo que el transistor está en modo *saturado* (+0.1pt), podemos escribir todos los voltajes con respecto a $V_E$ (+0.1pt):
      >
      > $V_B = V_E + V_{BE}$
      >
      > $V_C = V_E +  V_{CE_{SAT}}$
      >
      > Luego, aplicando LKC en el transistor (+0.1pt):
      >
      > $I_C + I_B = I_E$
      >
      > $\frac{V_{CC} - V_C}{R_C} + \frac{V_i-V_B}{R_B} = \frac{V_E}{R_E}$ 
      >
      > $\frac{V_{CC} - (V_E + V_{CE_{SAT}})}{R_C} + \frac{V_i-(V_E+V_{BE})}{R_B} = \frac{V_E}{R_E}$
      >
      > $V_E = \frac{R_E R_B (V_{CC} - V_{CE_{SAT}}) + R_E R_C (V_i  -V_{BE})}{R_B R_C  + R_E R_B  + R_E R_C }$ 
      > 
      > $V_E = \frac{4700\ 1200 (10 - 0.2) + 4700\ 3300 (8  -0.7)}{1200\ 3300  + 4700\ 1200  + 4700\ 3300 } = \frac{47\ 12 \ 8.8 + 47\ 33\ 7.3}{12\ 33  + 47\ 12  + 47\ 33 } \approx 6.5\ V $
      >
      > $V_C = V_E +  V_{CE_{SAT}} = 6.7\ V$
      >
      > $V_{CC} - V_C = R_C I_C \implies I_C = \frac{V_{CC}-V_C}{R_C}$ (+0.1pt)
      >
      > $I_C = \frac{10-6.7}{3300} = 1\ m A$ 
      >
      > Comprobación de $\beta_{forzado}$: (+0.1pt)
      >
      > $V_B = V_E + V_{BE} = 7.2\ V$
      >
      > $I_B = \frac{V_i-V_B}{R_B} = \frac{0.8}{1200} \approx 670\ \mu A$
      >
      > $\beta_{forzado} = I_C / I_B = 1\ mA / 0.67\ mA \approx 1.5$. Como $0 <\beta_{forzado} < \beta$, se confirma que el transistor está operando en el modo saturado.

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

$$ I_D = I_S \left( e^{\frac{V_D}{n V_T}} - 1 \right) $$
$$ V_T = \frac{kT}{q}$$

- $k$: Constante de Boltzmann. $k=1.38 * 10^{-23}\ J/K$
- $q$: Carga del electrón. $q=1.6*10^{-19}\ C$
- $T$: Temperatura en Kelvin
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
