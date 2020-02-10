--------------------------------------FK-----------------------------------------------------------
use his
alter table his_atenciones
add constraint FK_atencion_iprres
foreign key ([renaes]) references [dbo].[m_ipress]([codigo_unico])

alter table [dbo].[his_atenciones_detalles]
add constraint FK_detalles_atencion
foreign key ([id_cita]) references [dbo].[his_atenciones]([id_cita])


alter table his_atenciones with nocheck
add constraint FK_atencion_ubigeo
foreign key ([ubigeo]) references [dbo].[m_ubigeo]([id_ubigeo])

alter table his_atenciones with nocheck
add constraint FK_atencion_turno
foreign key ([turno_atencion]) references [dbo].[m_turno_atencion]([cod_atencion])

alter table his_atenciones with nocheck
add constraint FK_atencion_sexo
foreign key ([genero]) references [dbo].[m_sexo]([cod_sexo])

alter table his_atenciones with nocheck
add constraint FK_atencion_financiador
foreign key ([financiador]) references [dbo].[m_financiador]([tipo_financiador])

alter table his_atenciones with nocheck
add constraint FK_atenciones_personal
foreign key ([num_doc_atiende]) references [dbo].[his_maestro_personal]([dni])