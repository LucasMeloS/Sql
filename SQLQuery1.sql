
 -----------------------------------------------------------------------------------------------

select * from (
				select sub.Idf_Empregado, count(*) as rep 
				from (
						select Idf_Empregado from TAB_Empregado
						union all
						select Idf_Empregado from TAB_Salario
						) as sub
				where Idf_Empregado between 3900 and 3910
				group by Idf_Empregado
				) as t
where t.rep between 30 and 40 
 
 -----------------------------------------------------------------------------------------------

select sub.Idf_Empregado, count(*) as rep 
from (
		select Idf_Empregado from TAB_Empregado
		union all
		select Idf_Empregado from TAB_Salario
		) as sub
where Idf_Empregado between 3900 and 3910
group by Idf_Empregado
having count(*) between 30 and 40

 -----------------------------------------------------------------------------------------------

SELECT Idf_Salario as ID, Sig_Moeda as Moeda, Num_Matricula as NumeroMatricula, 
Dta_Fim_Vigencia as DataFimVigencia, Vlr_Salario as ValorSalario
FROM TAB_SALARIO s
JOIN TAB_Empregado e ON s.Idf_Empregado = e.Idf_Empregado
where Num_Matricula between 50 and 53
and Num_Matricula not between 51 and 52
and Dta_Fim_Vigencia is null 
and Idf_Salario between 20000 and 24000
--group by Idf_Salario
ORDER BY ID

 -----------------------------------------------------------------------------------------------

-- descobrir todos os contratos da matricula 86
select * --TAB_Empregado.Idf_Empregado, TAB_Empregado.Num_Matricula, TAB_Empregado_Contrato.Idf_Contrato, TAB_Empregado_Contrato.Dta_Cadastro, TAB_Salario.Vlr_Salario
from TAB_Empregado
join tab_Empregado_Contrato on TAB_Empregado.Idf_Empregado = tab_empregado_Contrato.Idf_Empregado
join TAB_Salario on TAB_Empregado.Idf_Empregado = TAB_Salario.Idf_Empregado
where Num_Matricula = 86;

 -----------------------------------------------------------------------------------------------

select *--TAB_Empregado.Idf_Empregado, TAB_Empregado.Num_Matricula, TAB_Empregado_Contrato.Idf_Contrato, TAB_Empregado_Contrato.Dta_Cadastro, TAB_Salario.Vlr_Salario
from TAB_Empregado
left join tab_Empregado_Contrato on tab_empregado_Contrato.Idf_Empregado = TAB_Empregado.Idf_Empregado 
left join TAB_Salario on TAB_Salario.Idf_Empregado = TAB_Empregado.Idf_Empregado
where Num_Matricula = 86; 

 -----------------------------------------------------------------------------------------------

select * from TAB_Salario
where Idf_Empregado = 3833

select * from tab_Empregado_Contrato where Idf_Empregado = 3833

select * from TAB_Empregado where Num_Matricula = 86;

 -----------------------------------------------------------------------------------------------

select MAX(Idf_salario) as MaiorId 
from TAB_Salario

 -----------------------------------------------------------------------------------------------

select * from TAB_Salario
WHERE Idf_Salario = 12796;

--begin tran 
UPDATE TAB_Salario
SET Vlr_Salario = 0.15
WHERE Idf_Salario = 12796;
--commit
--rollback

delete from TAB_Salario
WHERE Idf_Salario = 12796;

 -----------------------------------------------------------------------------------------------

-- DESCOBRIR O RELACIONAMENTO DAS TABELAS 
Sp_HELP 'TAB_Empregado'






