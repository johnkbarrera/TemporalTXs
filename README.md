# Descubriendo Patrones de Comportamiento Temporal

El modelos de `tensores (array 3D)` que usamos surge de la necesidad de representar la marca o huella de comportamiento de transacciones que realiza un cliente en un determinado periodo `Per` (en nuestro caso cada semana), las dimensiones que representamos en nuestro tensor son:

- `d`: los unidades de tiempo que tienen el periodo `Per` (en nuestro caso cada día).
- `t`: representa la ventanas de tiempo en `d` (en nuestro caso son 4 turnos)
- `mccg`:  representa la tipo de consumo que realiza el cliente.


## Details
La representacion del Tensor es la siguiente:

![Match function](https://user-images.githubusercontent.com/7105645/46182744-421d5600-c293-11e8-8b30-efd93fa1395a.png)

Los datos para el análisis de tensores los puede descargar en [dropbox][dropbox];
los demas archivos y el codigo se encuentran aquí.
```git
git clone https://github.com/johnkevinbarrera/TemporalTXs.git
```

## Value

Una lista de los valores que contienen cada variable

- `d`: {lunes, martes, miércoles, jueves, viernes, sábado, domingo}
- `t`: {madrugada, mañana, tarde, noches}
- `mccg`:  `i`: 1,2,...,n;  donde `n` = número de mccg en los datos de entrada (`SJL:28`).


## References

## Authors
       John Barrera

## Model

Inicia `jupyter notebook` en el path de `CLUSTER OF TENSORS`.


## Exploratory Analysis

![Match function](https://user-images.githubusercontent.com/7105645/46185777-0ab5a600-c2a1-11e8-9fc8-ea4c85b2c23c.png)
![Match function](https://user-images.githubusercontent.com/7105645/46185787-143f0e00-c2a1-11e8-8dc8-9758085baee6.png)


![Match function](https://user-images.githubusercontent.com/7105645/46185869-6bdd7980-c2a1-11e8-97f5-b460377c4aaa.png)
![Match function](https://user-images.githubusercontent.com/7105645/46185882-75ff7800-c2a1-11e8-8e5c-1b369deb0709.png)


## Footprint Descripcion

Los footprint representa una unidad de comportamiento de un cliente y representa 7 días de la semana, también son la unidad de datos que entra a nuestro modelo, son los `tensores`.


Dado:

    Sesion de TX
        s = {cliente, timestamp, Monto}
    
    Cada cliente tiene una secuencia de sesiones de TX (S)
        S = { s1, s2 , s3, ..., sn}          n: # de sesiones de cada cliente

Resume un conjunto de TXs en un perido de "d" dias

Dado:

     t
     d
     mccg
     T cada semana
    
    Para cada cliente:
    	S = {s1, ..., sn}
    
    obtenemos: SS = {U(1), U(2), U(3), ...,U(m)}     obviamente m <=n

Para poder procesarlos los footprints son representados como vectores, de la siguiente manera.

![Match function](https://user-images.githubusercontent.com/7105645/46186391-f1622900-c2a3-11e8-8593-2b364ef49b71.png)


## Clustering

## Results




## Conclusion  


## keyword
	Tensors

[unregistered]:http://docs.julialang.org/en/release-0.5/manual/packages/#installing-unregistered-packages
[version]:http://julialang.org/downloads/platform.html
[gadfly]:http://gadflyjl.org/stable/
[dropbox]:https://www.dropbox.com/sh/l7pagph43ufs70e/AADkJhyEvLQeVrXCrgs9q9pha?dl=0
