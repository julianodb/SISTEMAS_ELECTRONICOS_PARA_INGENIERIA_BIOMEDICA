# 01 - Introducción

## Detalles Administrativos

Página: [uvirtual](https://uvirtual.usach.cl/moodle/course/view.php?id=49661)

Correo: juliano.dawid @usach.cl

[Syllabus](../README.md)

## Motivación

Electrónica Analógica

[Texas Instruments Medical Applications](https://www.ti.com/applications/industrial/medical/overview.html)

![01_app](../img/01_aplicaciones7.png)

## Trabajos

Los sensores capacitivos de toque y proximidad son dispositivos que detectan la presencia o cercanía de un objeto —generalmente el cuerpo humano— a través de variaciones en la capacitancia eléctrica. Funcionan aprovechando que el cuerpo actúa como un conductor que altera el campo eléctrico generado por el sensor; cuando un dedo se acerca o toca la superficie, se produce un cambio medible en la capacitancia, el cual es interpretado por el sistema electrónico. A diferencia de los sensores mecánicos, no requieren contacto físico directo ni partes móviles, lo que los hace más duraderos, higiénicos y precisos. En el ámbito biomédico, su relevancia es alta, ya que permiten desarrollar interfaces limpias y seguras en equipos clínicos (como monitores o bombas de infusión), reducir el riesgo de contaminación cruzada, y habilitar tecnologías de interacción sin contacto, especialmente útiles en entornos hospitalarios donde la asepsia y la facilidad de desinfección son críticas

[video de ejemplo 1](https://www.youtube.com/watch?v=m0z9WJECjkU)

[video de ejemplo 2](https://www.youtube.com/watch?v=1N_EP0QmFpQ)

Los sistemas electrónicos de los sensores capacitivos utilizan los componentes y circuitos estudiados en esta asignatura. Por lo tanto, este semestre su grupo desarrollará un sensor capacitivo para reforzar y ejemplificar la aplicación de los conocimientos obtenidos. El dispositivo propuesto será capaz de producir un voltaje proporcional a la distancia entre el dedo del usuario y el sensor, y visualizar el voltaje a través de 5 luces. También podrá funcionar en modo diferencial, en el cual se conectan dos sensores y el voltaje resultante es la diferencia entre la señal de los dos sensores. Este tipo de configuración se puede utilizar para implementar un botón deslizante.

El proyecto será implementado por 4 grupos distintos, cada uno con 3 estudiantes. Cada grupo implementará un prototipo ligeramente distinto, de acuerdo al color del LED que se utilizará: Rojo, Amarillo, Azul y Verde. El diseño del prototipo se dividirá en 9 trabajos, conforme la imagen a continuación.

![TX](../img/TX.png)

## Notación

- Voltajes, corrientes, conexiones externas, entradas, salidas, fuentes
- $\lceil x \rceil$
- $\therefore$
- $ \implies $
- $\iff$
- $ \forall $
- $ | $
- $>>$

## Revisión/Resúmen de Conceptos

- Impedancia
- Potenciometro
- Transformador
- BODE
- Circuito Equivalente de Thevenin / Norton
- Fracciones Parciales
- Transformada de Laplace
- Transformada de Fourier
- Función de Transferencia
- Polos y Ceros
- Teorema de la Superposición
- Leyes de Kirchhoff
- Serie de Taylor / Maclaurin
- Nyquist
- Ley de Ohm

## Teoría de Circuitos

$$\sum{corrientes} = 0$$

$$\sum{voltajes} = 0$$

$$R_{series} = R_1 + R_2$$

$$R_{paralelo} = \frac{1}{\frac{1}{R_1} + \frac{1}{R_2}}$$

Divisor de voltaje

Potenciometro

![pot](../img/potentiometer.jpg)

Thevenin

## Introducción al Laboratorio

[Reglamento interno para el uso seguro de los laboratorios de docencia de Ingeniería Civil Biomédica](https://www.ingenieriabiomedica.usach.cl/sites/ing-civil-biomedica/files/laboratorio_cero_usach_biomedica.pdf)

Multímetro y mediciones de baterias, resistencias fijas y resistencias variables.

Protoboard y buenas practicas para conexión de circuitos electrónicos

![21_1](../img/23_breadboard.png)

Osciloscopio y medición de voltajes cambiantes en el tiempo.

## Tareas

1. Inscribir Duplas de laboratorio
2. Inscribir Grupos para los Trabajos
3. Avisar si hay topes de PEPs con anticipación
4. Practicar Laboratorio Online 0