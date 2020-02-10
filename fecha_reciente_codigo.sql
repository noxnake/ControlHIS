---consulta  para fecha mas recientes
use DNI

select t1.* from [dbo].[Destino de OLE DB]  t1
inner join (select [nombre],max([fecha_ing]) [fecha_ing] from [dbo].[Destino de OLE DB] group by [nombre])t2
on t1.nombre =t2.nombre and t1.fecha_ing =t2.fecha_ing
order by [nombre]
------------------------------------------------------------------------
use HIS
---consulta para datos repetidos de DNI
SELECT * FROM [dbo].[fecha]
WHERE [dni] IN (
	SELECT [dni]
	FROM [dbo].[fecha]
	GROUP BY [dni]
	HAVING COUNT(*) > 1
)
ORDER BY [dni]
----------------------------------------------------------------------codigo repetido
select t1.* from [dbo].[fecha]  t1
inner join (select [nombre],min([cod_cond])[cod_cond]  from [dbo].[fecha] group by [nombre])t2
on t1.nombre =t2.nombre and t1.cod_cond =t2.cod_cond
order by [nombre]

---------------------------------------------UPS--------------------------------------------------------------------------
----------------------------servicios que no tiene ups -----------------------------------------------
select * from [dbo].[his_atenciones]
WHERE [servicio] NOT IN
(SELECT [cod_ups] from [dbo].[m_ups])



