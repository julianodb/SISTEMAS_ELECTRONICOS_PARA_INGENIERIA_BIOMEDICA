# Reguladores de Voltaje II

## Reguladores Conmutados

En general, utilizan una señal de control que es una onda rectangular con duty cycle D (en español, ciclo de trabajo). D es un número entre 0 y 1, que representa el porcentaje del tiempo que la señal está encendido, como muestra la fugura a continuación:

![duty](../img/duty_cycle.webp)

Figura 1: Ejemplos de duty cycles.

## Convertidor Elevador (Boost)

<img src="https://julianodb.github.io/electronic_circuits_diagrams/boost_converter.png" width="400"> 

$$V_o = \frac{1}{1-D} V_i $$

## Convertidor Reductor (Buck)

<img src="https://julianodb.github.io/electronic_circuits_diagrams/buck_converter.png" width="400"> 

$$V_o = D V_i $$

## Convertidor Reductor-Elevador (Buck-Boost)

<img src="https://julianodb.github.io/electronic_circuits_diagrams/buck_boost_converter.png" width="400"> 

$$V_o = -\frac{D}{1-D} V_i $$