"
Ejercicio 3: Topografía

Un objeto Topografía representa la distribución de agua y tierra de una región cuadrada del
planeta, la cual está formada por porciones de “agua” y de “tierra”. La siguiente figura
muestra:
	(a) el aspecto de una topografía formada únicamente por agua.
	(b) otra formada sólamente por tierra.
	(c) una topografía mixta.

Una topografía mixta está formada por partes de agua y partes de tierra (4 partes en total).
Éstas a su vez podrían descomponerse en 4 más y así consecutivamente.
Como puede verse en los ejemplos, hay una relación muy estrecha entre la proporción de
agua o tierra de una topografía mixta y la proporción de agua o tierra de sus componentes
(compuestas o no). Por ejemplo:
La proporción de agua de una topografía sólo agua es 1. La proporción de agua de una
topografía sólo tierra es 0. La proporción de agua de una topografía compuesta está dada
por la suma de la proporción de agua de sus componentes dividida por 4. En el ejemplo, la
proporción de agua es: (1 + 0 + 0 + 1) / 4 = 1/2. La proporción siempre es un valor entre 0 y 1.

1. Diseñe e implemente las clases necesarias para que sea posible:
	a. crear Topografías,
	b. calcular su proporción de agua y tierra,
	c. comparar igualdad entre topografías (dada por igual proporción de agua y
tierra e igual distribución).

2. Instancie la topografía compuesta del ejemplo, y diseñe e implemente test cases
para probar la funcionalidad implementada.

Tenga presente que sólo se descomponen topografías para conseguir combinaciones. No
es correcto construir una topografía compuesta por cuatro topografías del mismo tipo. No
debe implementar funcionalidad para hacer tal verificación.
"
Class {
	#name : #ManifestOOTPTopografia,
	#superclass : #PackageManifest,
	#category : #'OO2-TP4-3-Topografia-Manifest'
}
