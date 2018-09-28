# Descubriendo Patrones de Comportamiento Temporal

El modelos de `tensores (array 3D)` que usamos surge de la necesidad de representar la marca o huella de comportamiento de transacciones que realiza un cliente en un determinado periodo `Per` (en nuestro caso cada semana), las dimensiones que representamos en nuestro tensor son:

- `d`: los unidades de tiempo que tienen el periodo `Per` (en nuestro caso cada día).
- `t`: representa la ventanas de tiempo en `d` (en nuestro caso son 4 turnos)
- `mccg`:  representa la tipo de consumo que realiza el cliente.


## Details
La representacion del Tensor es la siguiente:
![Match function](https://github.com/johnkevinbarrera/TemporalTXs/issues/3#issue-364707186)

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

## Footprint Descripcion

## Clustering

## Results




## Conclusion  


## keyword
	Tensors

[unregistered]:http://docs.julialang.org/en/release-0.5/manual/packages/#installing-unregistered-packages
[version]:http://julialang.org/downloads/platform.html
[gadfly]:http://gadflyjl.org/stable/
[dropbox]:https://www.dropbox.com/sh/l7pagph43ufs70e/AADkJhyEvLQeVrXCrgs9q9pha?dl=0
