# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 3+4 de Sistemas Electrónicos
#### Segundo semestre de 2026

## Materiales e instrumentos

- Fuente CC, multímetro, protoboard y cables.
- Diodo 1N4148 o equivalente, LED y BS170.
- Resistencias de 1 kΩ y 100 kΩ, de ¼ W o mayor.
- Potenciómetro de 10 kΩ.

Midan la resistencia de 1 kΩ y utilicen su valor real en los cálculos: $R = __________\ \Omega$.

Configuren el límite de corriente de la fuente a **20 mA**. Apaguen la fuente antes de modificar conexiones. Consulten al docente ante dudas.

## Parte A. Diodo en directa e inversa

**Puntaje: 6 puntos. Corresponde a la nota del Laboratorio 3.**

Armen el circuito de la figura 1 con $R = 1\ k\Omega$. Inviertan solo el diodo para la última medición.

![Diodo y resistencia en serie](../img/L3_L4_diode.svg)

Figura 1: Conexión en directa.

### Mediciones — 3 puntos

Completen la tabla. Utilicen $V_D = V_A-V_K$ e $I_D$ positiva de ánodo a cátodo.

| Polarización | Fuente objetivo (V) | Fuente medida (V) | $V_D$ (V) | $V_R$ (V) | $I_D$ (mA) |
| --- | ---: | --- | --- | --- | --- |
| Directa | 0,5 | | | | |
| Directa | 1 | | | | |
| Directa | 3 | | | | |
| Inversa | 3 | | | | |

Resolución del rango utilizado para medir $V_R$ en inversa: __________.

### Preguntas — 1 punto cada una

1. ¿Qué corriente predice el modelo de caída constante de **0,7 V** para el punto en directa cercano a 3 V?

2. ¿Cuál de los modelos —ideal o caída constante de 0,7 V— aproxima mejor la corriente medida a 3 V?

3. ¿Por qué una lectura de cero en inversa no demuestra que la corriente sea exactamente cero?

## Parte B. LED y regiones de operación del MOSFET

**Puntaje: 6 puntos. Corresponde a la nota del Laboratorio 4.**

Armen el circuito de la figura 2 con $V_{CC} = 5\ V$, $R = 1\ k\Omega$, $R_G = 100\ k\Omega$ y un potenciómetro de **10 kΩ**. Mantengan este circuito durante toda la parte B.

![LED con BS170 y control de compuerta por potenciómetro](../img/L3_L4_led_mosfet.svg)

Figura 2: El potenciómetro permite variar $V_{GS}$ sin cambiar conexiones.

### Mediciones — 3 puntos

Comiencen con $V_{GS}$ cercano a cero. Como referencia aproximada de inicio de conducción, anoten el valor de $V_{GS}$ cuando $V_R \approx 0,1\ V$:

$V_{T,ref} = __________\ V$.

Completen la tabla ajustando el potenciómetro. Los objetivos de $V_R$ admiten una tolerancia de ±0,1 V. Obtengan $I_D$ a partir de $V_R$ y R.

| Punto | Ajuste objetivo | $V_{GS}$ (V) | $V_{DS}$ (V) | $V_R$ (V) | $I_D$ (mA) | Estado del LED |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | $V_{GS} \approx 0\ V$ | | | | | |
| 2 | $V_R \approx 0,5\ V$ | | | | | |
| 3 | $V_R \approx 1\ V$ | | | | | |
| 4 | $V_{GS} \approx 5\ V$ | | | | | |

Para la clasificación, utilicen $V_{T,ref}$ como aproximación del umbral. Consulten al docente si un punto queda cerca de una frontera entre regiones.

### Preguntas — 3 puntos

1. ¿A qué región de operación corresponde cada punto de la tabla? **(1 punto)**

2. Calculen $R_{DS} = V_{DS}/I_D$ utilizando una medición en triodo. **(0,5 puntos)**

3. Comparen la resistencia calculada con el valor de $R_{DS(on)}$ de la hoja de datos del BS170. **(0,5 puntos)**

4. Calculen $\Delta I_D/\Delta V_{GS}$ entre dos mediciones que estén en saturación. **(0,5 puntos)**

5. Comparen el valor obtenido con la transconductancia de la hoja de datos del BS170. **(0,5 puntos)**

