use HIS
update [dbo].[his_atenciones]
set [renaes] = REPLICATE('0',(8-LEN([renaes])))+[renaes]
from [dbo].[his_atenciones]
