select t1.* from [dbo].[Destino de OLE DB]  t1
inner join (select [nombre],max([fecha_ing]) [fecha_ing] from [dbo].[Destino de OLE DB] group by [nombre])t2
on t1.nombre =t2.nombre and t1.fecha_ing =t2.fecha_ing
order by [nombre] 




