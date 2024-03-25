/*Create cardiac dataset*/

Proc sql;
create table cardiac as
select distinct A.ID, b.id, /*b.visit_type,*/ b.Cardiac1_refer, b.Cardiac2_weeks , b.Cardiac3_attend,
b.Cardiac3a_n_oth, b.Cardiac3a_n_text, b.Cardiac3a_n_un, b.Cardiac3a_y_date, b.Cardiac3b_n_oth,
b.Cardiac3b_n_rehos, b.Cardiac3b_y_session, b.Cardiac3c_y_spec, b.Cardiac3c_y_where
from p.phs_ids as a left join FM.other_surveys  as b
on a.id=b.id
where b.cardiac1_refer ne .
;
quit;/*N=76*/



