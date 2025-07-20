-- 26. Encuentra el promedio, la desviación estándar y varianza del total pagado.

SELECT 

  ROUND(AVG(amount), 2) AS media,
  ROUND(VAR_SAMP(amount), 2) AS varianza,
  ROUND(STDDEV_SAMP(amount), 2) AS desviacion_estandar,
  ROUND(MAX(amount), 2) AS "max",
  ROUND(MIN(amount), 2) AS "min",
  ROUND(MAX(amount) - MIN(amount), 2) AS rango,
  ROUND(STDDEV_SAMP(amount) / AVG(amount), 2)*100 AS coef_variacion,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY amount) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY amount) AS q2_mediana,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY amount) AS q3
  
FROM payment

WHERE amount <> 0;

/** Se han realizado los calculos para todos los registros con el campo amount diferente de 0,
Ya que no tiene mucho sentido contabilizar los 24 registros con coste 0, 
Aun asi, el resultado es practicamente el mismo:
	                        media	varianza	desviacion_estandar
con los 24 registros 0 --	4.20	5.58	    2.36
sin los 24 registros 0 --	4.21	5.57	    2.36

**/
