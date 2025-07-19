-- 9. Encuentra la variabilidad de lo que costaría reemplazar las películas.

SELECT 

  ROUND(AVG(replacement_cost), 2) AS media,
  ROUND(VAR_SAMP(replacement_cost), 2) AS varianza,
  ROUND(STDDEV_SAMP(replacement_cost), 2) AS desviacion_estandar,
  ROUND(MAX(replacement_cost), 2) AS "max",
  ROUND(MIN(replacement_cost), 2) AS "min",
  ROUND(MAX(replacement_cost) - MIN(replacement_cost), 2) AS rango,
  ROUND(STDDEV_SAMP(replacement_cost) / AVG(replacement_cost), 2)*100 AS coef_variacion,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY replacement_cost) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY replacement_cost) AS q2_mediana,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY replacement_cost) AS q3
  
FROM film;

/**
Conclusión:

El coste medio de reemplazo seria de 19.98, 
valor similar a la mediana (19.99) por lo que la distribucion parece simetrica.
Tambien podemos verlo asi:
q1 y q3 equidistantes: (q2 − q1 ≈ q3 − q2) → 19.99−14.99 ≈ 24.99−19.99 → ambos = 5 → simetría clara.

El 25% de los productos cuestan 14.99 o menos,
El 50% cuestan entre 14.99 y 24.99 (rango intercuartilico),
Y el 25% más caros superan los 24.99.

Un 30% de coef de variación nos dice que es una variabilidad moderada (15-35%),
por lo que hay cierta dispersión en el coste.

Se alejan 6.05 (desviación estandar) de la media y la mayoria de los valores estan entre:

Media - SD = 19.98 - 6.05 = 13.93

Media + SD = 19.98 + 6.05 = 26.03
**/


