---
layout: post
title: R Programming
tags: statistics
categories: r
eye_catch: "/Introduction-to-statistics-and-probability/assets/img/dataanalysis.jpg"
---

<!--more-->

## Conceptos estadísticos básicos

El paquete de software R

### ¿**Por qué** usar R?
* R es gratuito.
* R es popular y actualmente es el "estándar".
* R es poderoso y flexible.
* La comunidad de R es **muy** fuerte, en todos los niveles: si crees que tu pregunta puede ser tonta, es casi seguro que alguien ha sido tonto antes que tú.

### ¿**Qué** podemos hacer con R?
* Tratamiento de conjuntos de datos (mucho que mejor que con Excel).
* Estadística (oh, sí, pero no necesariamente hoy en día).
* Gráficos.

### ¿**Cómo** podemos usar R?
* Instalar R [https://cran.r-project.org](https://cran.r-project.org).
* Instalar RStudio.
* Instalar paquetes.
* Corra actualizaciones para R, RStudio y los paquetes.
* R es poderoso y flexible, pero necesitarás saber qué escribir.
* Tendrás un Directorio de Trabajo y un espacio de trabajo. (`.Rdata`).
* Usarás **funciones**, y las funciones tienen **argumentos**, los cuales podríán ser opciones u obligatorios.
* Puedes buscar ayuda de la función haciendo

```r
?myfunction
help(myfunction)
??myfunction
help("myfunction")
```
* Los paquetes son grupos de funciones dedicados para algo en particular, grande o pequeño.
* Usarás funciones para crear, tratar con o modificar un objeto. (es decir, un **conjunto de datos**).


## Estructura de datos principales

* Vectores: Puedes ser **lógicos**(`TRUE` o `FALSE`), **numéricos** (`integer`, `double`), carácteres (incluyendo **factores**).
* Matrices y marco de datos: Una **lista** es una cualquier combinación de estas estructuras, incluyendo así mismo listas, cada uno de ellos dispuesto en un cajón de una lista.
* Arreglos
* Un marco de datos un caso particular de una lista, en el que en cada cajón es un vector del mismo tamaño así con todos los demás vectores de la lista.

{% highlight r %}
x <- faithful$eruptions
hist(x)
hist(x, freq = FALSE)			# histogram area = 1
plot(density(x))			# basic smooth histogram
hist(x, freq = F); lines(density(x))	# superimposes the two
stem(x)					# basic stem and leaf plot
stem(x, scale = 1)
{% endhighlight %}

![A]({{site.url}}{{site.baseurl}}/assets/img/example1_5_1.png)

# Referencias

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