# <img src="https://julianodb.github.io/SISTEMAS_ELECTRONICOS_PARA_INGENIERIA_BIOMEDICA/img/logo_fing.png?raw=true" align="right" height="45"> Laboratorio 3+4 de Sistemas Electrónicos
#### Segundo semestre de 2026 — Borrador para revisión

## Diodos y MOSFET: modelos y aplicaciones

**Duración:** 80 minutos, sin interrupción. **Entrega:** informe breve al finalizar la sesión, con las tablas y respuestas de las partes A, B y C. No se requiere trabajo previo. La amplificación con MOSFET se trabajará en los laboratorios online.

En esta experiencia compararemos modelos del diodo con mediciones, utilizaremos un BS170 para controlar un LED y distinguiremos las regiones de operación del MOSFET.

## Recursos del pañol

| Recurso | Cantidad / valor |
| --- | --- |
| Fuente de CC y cables banana-caimán | 1 fuente y 2 cables |
| Multímetro | 1 |
| Protoboard y cables de conexión | 1 protoboard |
| Diodo de silicio | 1N4148 o equivalente, 1 |
| LED | 1, de un color a elección |
| MOSFET de canal N | BS170, 1 |
| Resistencias | 1 kΩ, 1; 100 kΩ, 1; potencia de ¼ W o mayor |
| Potenciómetro | 10 kΩ, 1 |

La resistencia de 1 kΩ se reutiliza en las tres partes. No se necesitan osciloscopio ni generador de funciones.

## Inicio y uso de los instrumentos — 10 minutos

- Consulten al profesor o ayudante ante dudas de conexión o uso de los instrumentos. Identifiquen el cátodo del diodo y del LED, y los terminales **G** (compuerta), **D** (drenador) y **S** (fuente) del BS170. Verifiquen el pinout del componente disponible con la hoja de datos facilitada por el docente.
- Midan la resistencia de 1 kΩ **fuera del circuito y con la fuente apagada**. Anoten su valor: $R = \underline{\hspace{2cm}}\ \Omega$. Utilicen ese valor en los cálculos.
- Configuren un límite de corriente inicial de **20 mA**. Si la fuente no permite ese ajuste, consulten al docente. Comprueben que opere en regulación de tensión al realizar las mediciones.
- Apaguen la salida de la fuente antes de cambiar conexiones. Obtengan las corrientes a partir de las tensiones medidas y del valor de R.

## Parte A. Diodo en directa e inversa — 15 minutos

Armen el circuito de la figura 1 con $R = 1\ k\Omega$. Para la medición en inversa, apaguen la fuente e inviertan **solo el diodo**.

![Circuito para medir el diodo en directa y en inversa](../img/L3_L4_diode.svg)

Figura 1: Diodo y resistencia en serie. La figura muestra la conexión en directa.

Utilicen las siguientes convenciones:

- $V_D = V_A - V_K$, tanto en directa como en inversa.
- $V_R$: tensión del extremo superior de la resistencia respecto de tierra.
- $I_D$ positiva de ánodo a cátodo: en directa $I_D = V_R/R$; en inversa $I_D = -V_R/R$.

### Mediciones — 1 punto

Completen la tabla para los ajustes indicados. Registren los valores reales de la fuente. La columna $I_D$ corresponde a la corriente calculada mediante R.

| Polarización | Fuente objetivo (V) | Fuente medida (V) | $V_D$ (V) | $V_R$ (V) | $I_D$ (mA) |
| --- | ---: | --- | --- | --- | --- |
| Directa | 0,5 | | | | |
| Directa | 1 | | | | |
| Directa | 3 | | | | |
| Inversa | 3 | | | | |

Resolución del rango utilizado para medir $V_R$ en inversa: __________.

### Preguntas — 1 punto

1. Para el punto en directa cercano a 3 V, ¿qué corriente predice el **modelo ideal** del diodo? **(0,2 puntos)**

2. Para el mismo punto, ¿qué corriente predice el **modelo de caída constante de 0,7 V**? **(0,2 puntos)**

3. ¿Cuál de los dos modelos aproxima mejor la corriente medida a 3 V? **(0,3 puntos)**

4. ¿Por qué una lectura de cero en la medición inversa no demuestra que la corriente sea exactamente cero? **(0,3 puntos)**

## Parte B. LED controlado por un MOSFET — 15 minutos

Apaguen la fuente y armen el circuito de la figura 2. Utilicen $V_{CC} = 5\ V$, $R = 1\ k\Omega$ y $R_G = 100\ k\Omega$.

![Circuito LED controlado por un BS170](../img/L3_L4_led_mosfet.svg)

Figura 2: MOSFET como interruptor. Apaguen la fuente antes de cambiar la conexión de $v_i$.

Convenciones: $V_{GS} = V_G-V_S$, $V_{DS} = V_D-V_S$ y $V_{LED} = V_A-V_K$. $V_R$ es la caída de tensión en R en el sentido de la corriente del LED.

### Mediciones — 1 punto

Completen la tabla. La columna $I_{LED}$ se calcula como $V_R/R$.

| Conexión de $v_i$ | $V_{GS}$ (V) | $V_{DS}$ (V) | $V_R$ (V) | $V_{LED}$ (V) | $I_{LED}$ (mA) | LED encendido/apagado |
| --- | --- | --- | --- | --- | --- | --- |
| Tierra | | | | | | |
| +5 V | | | | | | |

### Preguntas — 1 punto

1. ¿Cómo explica el valor de $V_{GS}$ el estado del LED en cada caso? **(0,3 puntos)**

2. ¿Qué resistencia serie permitiría obtener aproximadamente **3 mA** en el LED, según las tensiones medidas en el estado encendido? No es necesario modificar el montaje. **(0,3 puntos)**

3. ¿Cuánta potencia disipa el MOSFET en el estado encendido? Utilicen $P_Q = V_{DS}I_{LED}$. **(0,4 puntos)**

Si una tensión es demasiado pequeña para medirla con precisión, pueden informar el resultado calculado como una estimación limitada por la resolución del instrumento.

## Parte C. Regiones de operación del MOSFET — 20 minutos

Apaguen la fuente y adapten el montaje de B al circuito de la figura 3. Reemplacen el LED por un cable e incorporen el potenciómetro de 10 kΩ para controlar $V_{GS}$. Mantengan la resistencia de 1 kΩ, el BS170 y $R_G = 100\ k\Omega$. Comiencen con $V_{GS}$ cercano a cero.

![Circuito para estudiar las regiones del BS170](../img/L3_L4_mosfet_regions.svg)

Figura 3: Control continuo de $V_{GS}$ con una única fuente de 5 V. La resistencia de 100 kΩ permanece entre compuerta y tierra.

Midan la alimentación real $V_{CC} = \underline{\hspace{2cm}}\ V$. Calculen:

$$ I_D = \frac{V_{CC}-V_{DS}}{R}. $$

Antes de completar la tabla, aumenten lentamente la tensión de compuerta hasta que la caída en R sea aproximadamente **0,1 V** ($I_D \approx 0,1\ mA$). Anoten $V_{GS}$ como una **referencia experimental de inicio de conducción**:

$$ V_{T,ref} = \underline{\hspace{2cm}}\ V. $$

Esta referencia depende del criterio de corriente elegido y **no es una medición exacta del umbral del modelo**. Úsenla para una clasificación aproximada, evitando sacar conclusiones firmes de puntos muy próximos a una frontera. El umbral y la conducción pueden variar entre ejemplares de BS170.

Para relacionar las observaciones con el modelo de las clases 09 y 10:

- **Corte:** corriente no apreciable, con $V_{GS}$ por debajo del inicio de conducción.
- **Triodo:** $V_{GS}>V_T$ y $V_{DS}<V_{GS}-V_T$.
- **Saturación:** $V_{GS}>V_T$ y $V_{DS}>V_{GS}-V_T$.

En las dos últimas condiciones, usen $V_{T,ref}$ como aproximación de $V_T$. Si las mediciones y el modelo no concuerdan, registren la discrepancia y consulten al docente.

### Mediciones — 1 punto

Completen la tabla con las tensiones medidas y la corriente calculada. Los objetivos de $V_{DS}$ admiten una tolerancia de aproximadamente ±0,1 V.

| Punto | Ajuste con el potenciómetro | $V_{GS}$ (V) | $V_{DS}$ (V) | $I_D$ (mA) |
| --- | --- | --- | --- | --- |
| 1 | $V_{GS} \approx 0\ V$ | | | |
| 2 | $V_{DS} \approx 4\ V$ | | | |
| 3 | $V_{DS} \approx 3,5\ V$ | | | |
| 4 | $V_{GS} \approx 5\ V$ | | | |

### Preguntas — 1 punto

1. ¿A qué región de operación corresponde cada punto según las condiciones del modelo? **(0,3 puntos)**

2. ¿Por qué un $V_{GS}$ apenas por encima del inicio de conducción no garantiza un buen interruptor encendido? **(0,3 puntos)**

3. ¿Cuál es la resistencia efectiva $V_{DS}/I_D$ del punto 4? Este cálculo corresponde si el punto está en triodo. **(0,2 puntos)**

4. ¿Cuál es la transconductancia aproximada $\Delta I_D/\Delta V_{GS}$ entre los puntos 2 y 3, expresada en **mA/V o mS**? Este cálculo corresponde si ambos puntos están en saturación. **(0,2 puntos)**

Si no se cumple la condición de aplicación de un cálculo, basta indicar «no corresponde» junto con la región observada. La pendiente entre los puntos 2 y 3 aproxima la transconductancia en ese intervalo. Como también cambia $V_{DS}$, no es una medición estricta de $g_m$ a $V_{DS}$ constante.

## Entrega y cierre — 20 minutos

Destinen aproximadamente 10 minutos a completar el informe y los otros 10 al diagnóstico pendiente y desmontaje. Entreguen las tres tablas, el valor medido de R, la referencia de inicio de conducción y las respuestas breves. No se requieren gráficas ni simulaciones para esta entrega.

Apaguen la fuente y devuelvan los materiales. Las tres partes suman **6 puntos**; la nota se obtiene según la escala del curso.
