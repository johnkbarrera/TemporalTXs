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


![Match function](https://user-images.githubusercontent.com/7105645/46187149-caa5f180-c2a7-11e8-9f0e-bbcef9bedccb.png)

![Match function](https://user-images.githubusercontent.com/7105645/46187153-d09bd280-c2a7-11e8-937f-63450ce94054.png)

Mostramos la evolución de los comportamientos en el tiempo, desde la Fecha Inicial, hasta la fecha Final de nuestra poblacion de datos analisados.
También observamos que la semana 7 del 2017 hay una caida en el numero de casi todos los comportamientos de consumo.

![Match function](https://user-images.githubusercontent.com/7105645/46186760-d7c1e100-c2a5-11e8-8d05-d8783384ae00.png)

Representamos en centroide del cluster 34 porque es el el mas frecuente, (podemos representar los n cluster globales que se muestran), Recuerda que los centroides son tensorres, asi que mostramos en 3 gráficos, uno por cada 2 dimeciones.

![Match function](https://user-images.githubusercontent.com/7105645/46187146-c4177a00-c2a7-11e8-8213-293aa1829fcb.png)

Aquí representamos un conteo por el numero de Semanas acumulado en las que participan los clientes, por ejemplo:

Si el cliente 1 tiene un 3 semana {s1,s10,s32}, se clasificara con actividades en 3 semanas, entonces oincluira la 1,2 y 3.

![Match function](https://user-images.githubusercontent.com/7105645/46187159-d5608680-c2a7-11e8-9777-2d5bdad27b7f.png)

Aquí representamos un conteo por el numero de Semanas en las que participa cada cliente, por ejemplo:

Si el cliente 1 tiene un 3 semana {s1,s10,s32}, se clasificara solo como 3.

![Match function](https://user-images.githubusercontent.com/7105645/46187165-e01b1b80-c2a7-11e8-8377-a9cae3379175.png)




![Match function](https://user-images.githubusercontent.com/7105645/46187087-78fd6700-c2a7-11e8-9a94-7ecf6373e419.png)

![Match function](https://user-images.githubusercontent.com/7105645/46187173-ea3d1a00-c2a7-11e8-9287-80268f61f61a.png)

![Match function](https://user-images.githubusercontent.com/7105645/46187092-80247500-c2a7-11e8-8b42-ac78bba25827.png)




## Conclusion  

## keyword
	Tensors

[unregistered]:http://docs.julialang.org/en/release-0.5/manual/packages/#installing-unregistered-packages
[version]:http://julialang.org/downloads/platform.html
[gadfly]:http://gadflyjl.org/stable/
[dropbox]:https://www.dropbox.com/sh/l7pagph43ufs70e/AADkJhyEvLQeVrXCrgs9q9pha?dl=0
