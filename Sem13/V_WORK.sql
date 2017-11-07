
with v_previa as (
	select ciclo, MAX(MATRICULADOS) matriculados
	from V_RESUMEN_CURSO
	group by Ciclo)
select r.*
from v_previa p
join V_RESUMEN_CURSO r 
on p.CICLO = r.CICLO and p.matriculados = r.MATRICULADOS
where r.PERIODO = '2017' 
order by Ciclo;








