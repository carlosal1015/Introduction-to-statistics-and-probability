---
layout: post
title: Exploring Data with Graphs and Numerical Summaries
tags: statistics
categories: math
eye_catch: "/Introduction-to-statistics-and-probability/assets/img/desktop.jpeg"
---

# Explorando datos con gráficos y resúmenes numéricos

La vida no sería interesante si todos se vieran iguales, comieran la misma comida y tuvieran los mismos pensamientos. afortunadamente, la **variabilidad** está en todas partes, y los métodos estadísticos proporcionan formas de medirla y entenderla. Para algunas características de un estudio, a menudo vemos variaciones entre los sujetos. por ejemplo, hay variabilidad entre tus compañeros de clase en peso, mayor, promedio de calificaciones, deporte favorito y afiliación religiosa. Otras características pueden variar tanto por sujeto como a través del tiempo. por ejemplo, la cantidad de tiempo dedicado a estudiar en un día puede variar tanto por estudiante como por día.

<!--more-->

### Variables

Las variables son las características observadas en un estudio. En el párrafo anterior, el peso y el mayor son dos variables que deberíamos estudiar.
> Una **variable** es cualquier característica observada en un estudio.

El térmmino *variable* destaca que los valores de los datos varían. Por ejemplo, para investigar si el calentamiento global ha ocurrido en el lugar donde vive, puede recopilar datos sobre la temperatura alta cada día durante el último siglo en la estación meteorológica más cercana. La variable es la alta temperatura. Ejemplos de otras variables para cada día son la temperatura baja, la cubierta de nubes, si llovió ese día y el número de centímetros de precipitación

### Las variables pueden ser cuantitativas (numéricas) o categóricas (en categorías)

Los valores de los datos que observamos para una variables son llamadas **observaciones**. Cada observación puede ser un **número** tales como el número de centímetros de precipitación en un día. O cada observación pertenece a una **categoría**, tales como "sí" o "no" por si llovió.

> Variables categóricas y cuantitativas
> Una variables es llamada **categórica** si cada observación pertenece a uno de un conjunto de distintas categorías.
> Una variable es llamada **cuantitativa** si las observaciones toman valores numéricos que representan diferentes magnitudes de la variable.

La alta temperatura diaria y la cantidad de precipitación son variables cuantitativas. Otros ejemplos de variables cuantitativas son la edad, el número de hermanos, el ingreso anual y el número de años de educación completa. El cubierto de las nubes (con categorías nublado, parcialmente nublado, soleado) o si llovió en un día determinado (con categorías sí o no) son variables categórica. Para sujetos humanos, los ejemplos de variables categóricas incluyendo el sexo (con categorías masculino y femenino), afiliación religiosa (con categorías como católica, judía, musulmán, protestante, otros, ninguno), tipo de residencia (casa, condominio, apartamento, dormitorio, otro), y creencia en vida después de la muerte (sí, no).
En la definición de variable cuantitativa, ¿por qué decimos que valores numéricos deben representar diferentes magnitudes? Las variables cuantitativas "cuánto cuesta" algo (esto es, cantidad o magnitud)
$$
\bar{x}=\frac{\sum x}{n}
$$


La **desviación estándar** $$s$$ de $$n$$ observaciones

$$
s=\sqrt{\frac{\sum{\left(x-\bar{x}\right)}^2}{n-1}}=\sqrt{\frac{\text{sum of squared deviations}}{\text{sample size}-1}}
$$

Esto es la raíz cuadrada de la **varianza** $$s^2$$, que es un promedio de los cuadrados de las desviaciones de su media,

$$
s^2=\frac{\sum{\left(x-\bar{x}\right)}^2}{n-1}
$$

El **p-ésimo percentil** es un valor tal que el $p$ porcentaje de las observaciones caer por debajo o en ese valor.


El **rango intercuantil** es la distancia entre el tercer y primer cuartil.


## Diagrama de caja: Graficando los cinco números que resumen la posiciones.

Los cuartiles y el máximo y mínimo valores de cinco números frecuentemente usados como un conjunto para resumir las posiciones que ayudan a describir el centro y la variabilidad de una distribución.


## Resumen: Contruyendo un digrama de caja

* Un caja va desde el cuartil inferior $$Q1$$ al cuartil superior $$Q3$$.
* Se dibuja una línea dentro de la caja en la mediana.
* Una línea va desde el extremo inferior de la caja hasta la observación más pequeña que no es un posible valor atípico. una línea separada va desde el extremo superior de la caja hasta la observación más grande que no es un posible valor atípico. estas líneas se llaman bigotes. los valores atípicos potenciales (más de 1.5 IQR por debajo del primer cuartil o por encima del tercer cuartil se muestran por separado con símbolos especiales) (como un punto o una estrella)

## References

{% highlight r %}
lv <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/MarketShareLightVeh.txt", header = T)
attach(lv)
pie(Percent, labels = Company, col=rainbow(length(Percent)))
barplot(Percent, names.arg = Company, col = rainbow(length(Percent)), las=2) # fro Figure 1-11
{% endhighlight %}

<div id="refs" class="references">
<div id="ref-agresti2017">
<p>[1] Agresti, Alan, Christine A Franklin, and Bernhard Klingenberg. 2017. <em>Statistics: The Art and Science of Learning from Data</em>. 4th ed. Pearson Education.</p>
</div>
<div id="ref-akritas2016">
<p>[2] Akritas, Michael G. 2016. <em>Probability &amp; Statistics with R for Engineers and Scientists</em>. 1st ed. Pearson Boston, MA.</p>
</div>
<div id="ref-degroot2012">
<p>[3] DeGroot, Morris H, and Mark J Schervish. 2012. <em>Probability and Statistics</em>. 4th ed. Pearson Education.</p>
</div>
<div id="ref-gould2017">
<p>[4] Gould, Robert N, Colleen N Ryan, and Rebecca Wong. 2017. <em>Essential Statistics</em>. 2nd ed. Pearson Education.</p>
</div>
<div id="ref-walpole2016">
<p>[5] Walpole, Ronald E, Raymond H Myers, Sharon L Myers, and Keying Ye. 2016. <em>Probability and Statistics for Engineers and Scientists</em>. 9th ed. Pearson Education.</p>
</div>
</div>