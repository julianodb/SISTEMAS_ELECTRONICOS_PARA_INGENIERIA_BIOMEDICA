# 02 - Diodos y Aplicaciones

## Símbolo, nomenclatura y convenciones

![diode_conv](https://julianodb.github.io/electronic_circuits_diagrams/diode.png)

## Diodo Ideal

$$ 
\left\{ 
    \begin{array}{ c l }
        \textrm{conduce }(I_D>0) & \quad \textrm{si } V_D > 0 \\
        \textrm{no conduce }(I_D=0)                 & \quad \textrm{si } V_D \leq 0
    \end{array} 
\right.
$$

## Aplicaciones
- Rectificador de media onda
- Rectificador de onda completa
- Batería de respaldo

## Modelo mejorado

$$ 
\left\{ 
    \begin{array}{ c l }
        \textrm{conduce }(I_D>0) & \quad \textrm{si } V_D > V_f \\
        \textrm{no conduce }(I_D=0)                 & \quad \textrm{si } V_D \leq V_f
    \end{array} 
\right.
$$

La tensión de polarización en directa ($V_f$) es una constante para cada diodo. Depende del material y forma de construcción, y es usualmente 0,7V para diodos de silício

## Ejercicio

<img src="https://julianodb.github.io/electronic_circuits_diagrams/battery_2diode_3R.png" width="270">

## LEDs

## [Trabajo 1](../trabajos/T1.md)

## Bibliografia

Boylestad, R. & Nashelsky, L. (2009). Electrónica: Teoría de circuitos y dispositivos electrónicos (10ma.ed.). 

### Capítulos
- Capítulo 1, sesiones 1.7, 1.9, 1.13 y 1.16
- Capítulo 2, sesiones 2.3, 2.4, 2.6, 2.7, 2.12

### Ejercícios Recomendados
- Capítulo 1
  - Sesión 1.7: ej 23
- Capítulo 2
  - Sesíon 2.3: ejs 5, 6, 8
  - Sesión 2.4: ejs 10, 13
  - Sesión 2.6: ejs 22, 23, 24, 25, 26, 27
  - Sesión 2.7: ejs 28, 29, 30, 31
