Libname Reach "P:\Study Folders\REACH\~Key Variables";
libname PHSfmt "P:\Study Folders\Edmondson_PHS_2015\Data Management\Key Vars Prep\Formats";
libname p "P:\Study Folders\Edmondson_PHS_2015\Data Management\Key Vars Prep\IDs";
libname FM "P:\Study Folders\REACH\Sean\SAS\Production";
libname fmtlib "P:\Study Folders\Edmondson_PHS_2015\~Key Variables\Formats";
/*libname myfmtlib "P:\Study Folders\REACH\~Key Variables\Formats";*/
libname survey "P:\Study Folders\Edmondson_PHS_2015\~Key Variables\phs\questionaires data";
libname imputed "P:\Study Folders\Edmondson_PHS_2015\~Key Variables\phs\questionaires data\Imputed Data";

libname PHS "P:\Study Folders\Edmondson_PHS_2015\~Key Variables\PHS";
options fmtsearch=(fmtlib);

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



