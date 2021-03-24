clear
log using "D:\User_Data\Downloads\teanage_survey\teanage_survey.log",replace
save "D:\User_Data\Downloads\青少年調查\questions.dta",replace emptyok
save "D:\User_Data\Downloads\青少年調查\questions.dta", replace emptyok
save "questions.dta",replace emptyok
cd "D:\User_Data\Downloads\青少年調查"

use "D:\User_Data\Downloads\青少年調查\C00176_1\中文\j3w1s_Jan2020.dta",clear
display "國三樣本/第一波/青少年問卷"

/*
以下有關你本人的描述，你同不同意？(1)我沒有辦法解決自己的某些問題
以下有關你本人的描述，你同不同意？(2)我沒有辦法控制發生在我身上的事
以下有關你本人的描述，你同不同意？(3)要處理生活上的種種問題，讓我感到很無力
以下有關你本人的描述，你同不同意？(4)我是個有價值(有用)的人
以下有關你本人的描述，你同不同意？(5)我沒有很多值得驕傲的事情	
以下有關你本人的描述，你同不同意？(6)我用積極樂觀的態度看待我自己
以下有關你本人的描述，你同不同意？(7)我很滿意我自己
以下有關你本人的描述，你同不同意？(8)我有時候覺得自己很沒有用
以下有關你本人的描述，你同不同意？(9)有時候我會認為自己一無是處
*/

//reference questions
rename as301001 q1
rename as301002 q2
rename as301003 q3
rename as301004 q4
rename as301005 q5
rename as301006 q6
rename as301007 q7
rename as301008 q8
rename as301009 q9

drop if asbirth==99

gen age=89-asbirth
gen target="s"
gen sample_j=3
gen wave=1
gen num_q=9
tostring(assex),gen(sex)

drop if asbirth==99
keep if assex==1 | assex==2

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace


use "D:\User_Data\Downloads\青少年調查\C00176_2\user20180108\j3w1p_Dec2008.dta",clear
display "國三樣本/第一波/家長問卷"

rename ap205001 q1
rename ap205002 q2
rename ap205003 q3
rename ap205004 q6
rename ap205005 q4
rename ap205006 q5
rename ap205007 q7
rename ap205008 q8
rename ap205009 q9
gen age=89-apbirth
gen target="p"
gen sample_j=3
gen wave=1
gen num_q=9
tostring(apsex),gen(sex)

drop if apbirth==99
keep if apsex==1 | apsex==2

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace




use "D:\User_Data\Downloads\青少年調查\C00176_3\C00176_3\j3w1t_Jan2020.dta",clear
display"國三樣本/第一波/老師問卷"
display "------no self-esteem questions------"


use "D:\User_Data\Downloads\青少年調查\C00176_4\中文\j1w1s_Jan2020.dta",clear
display "國一樣本/第一波/青少年問卷"

rename as301001 q1 
rename as301002 q2
rename as301003 q3
rename as301004 q4
rename as301005 q5
rename as301006 q6
rename as301007 q7
rename as301008 q8
rename as301009 q9
gen age=89-asbirth
gen target="s"
gen sample_j=1
gen wave=1
gen num_q=9
tostring(assex),gen(sex)

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace


use "D:\User_Data\Downloads\青少年調查\C00176_5\user20180108\j1w1p_Jul2008.dta",clear
display "國一樣本/第一波/家長問卷"
rename ap203001 q1
rename ap203002 q2
rename ap203003 q3
rename ap203004 q6
rename ap203005 q4
rename ap203006 q5
rename ap203007 q7
rename ap203008 q8
rename ap203009 q9
 
gen age=89-apbirth
gen target="p"
gen sample_j=1
gen wave=1
gen num_q=9
tostring(apsex),gen(sex)

drop if apbirth==99
keep if apsex==1 | apsex==2

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace

use "D:\User_Data\Downloads\青少年調查\C00176_6\C00176_6\j1w1t_Jan2020.dta",clear
display "國一樣本/第一波/老師問卷"
display "-------no self-esteem question--------" 

use "D:\User_Data\Downloads\青少年調查\C00177_1\j3w2s_Feb2019.dta"
display "國三樣本/第二波/青少年問卷"
display "-----------no self-esteem question-------------"


use "D:\User_Data\Downloads\青少年調查\C00177_2\中文\j1w2s_Jan2020.dta",clear
display "國一樣本/第二波/青少年問卷"

rename bs601001 q1
rename bs601002 q2
rename bs601003 q3
rename bs601004 q4
rename bs601005 q5
rename bs601006 q6
rename bs601007 q7
rename bs601008 q8
rename bs601009 q9

gen age=90-bsbirth
gen target="s"
gen sample_j=1
gen wave=2
gen num_q=9
tostring(bssex),gen(sex)
keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace

use "D:\User_Data\Downloads\青少年調查\C00177_3\C00177_3\j1w2t_Jan2020.dta",clear
display "國一樣本/第二波/導師問卷"

display "----------no self-estemm question----------"



use "D:\User_Data\Downloads\青少年調查\C00178_1\user20180108\j3w3s_Mar2009.dta",clear
display "國三樣本/第三波/青少年問卷"

display "----------no self-esteem questions---------"



use "D:\User_Data\Downloads\青少年調查\C00178_2\中文\j1w3s_Jan2020.dta",clear
display "國一樣本/第三波/青少年問卷"



rename cs914001 q1
rename cs914002 q2
rename cs914003 q6
rename cs914004 q7
rename cs914005 q8
rename cs914006 q9
gen age=91-csbirth
gen target="s"
gen sample_j=1
gen wave=3
gen num_q=6
tostring(cssex),gen(sex)
keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace


use "D:\User_Data\Downloads\青少年調查\C00178_3\user20180108\j1w3p_Aug2008.dta",clear
display "國一樣本/第三波/家長問卷"

display "---------no self-esteem questions--------"


use "D:\User_Data\Downloads\青少年調查\C00178_4\C00178_4\j1w3t_Jan2020.dta",clear
display "國一樣本/第三波/老師問卷"

display "--------no self-esteem questions---------"


use "D:\User_Data\Downloads\青少年調查\C00179_1\j3w4s_Feb2019_with_sex.dta",clear
display "國三樣本/第四波/青少年問卷"


rename ds607001 q1
rename ds607002 q2
rename ds607003 q3
rename ds607004 q4
rename ds607005 q5
rename ds607006 q6
rename ds607007 q7
rename ds607008 q8
rename ds607009 q9


gen age=92-asbirth
gen target="s"
gen sample_j=3
gen wave=4
gen num_q=9
tostring(assex),gen(sex)
keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace




use "D:\User_Data\Downloads\青少年調查\C00179_2\user20180108\j3w4p_Aug2010.dta",clear
display "國三樣本/第四波/家長問卷"
display "--------no self-estemm questions--------"



use "D:\User_Data\Downloads\青少年調查\C00179_3\j1w4s_Jan2019_with_sex.dta",clear
display "國一樣本/第四波/青少年問卷"


rename ds069001 q1
rename ds069002 q2
rename ds069003 q6
rename ds069004 q7
rename ds069005 q8
rename ds069006 q9
rename ds069m79 q4
rename ds069m81 q5
gen age=91-asbirth
gen target="s"
gen sample_j=1
gen wave=4
gen num_q=6
tostring(assex),gen(sex)
keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace



use "D:\User_Data\Downloads\青少年調查\C00214_1\j3w5s_Feb2019.dta",clear
display "國三樣本/第五波/青少年問卷"

display "---------no self-esteem questions-------------"



use "D:\User_Data\Downloads\青少年調查\C00214_3\j1w5s_Jan2019.dta",clear
display "國一樣本/第五波/青少年問卷"

display "-----------no self-esteem questions-----------"



use "D:\User_Data\Downloads\青少年調查\C00238_1\j3w6s_Feb2019.dta",clear
display "國三樣本/第六波/青少年問卷"

display "------------no self-esteem questions------------"



use "D:\User_Data\Downloads\青少年調查\C00238_2\user20180108\j3w6p_Feb2012.dta",clear
display "國三樣本/第六波/家長問卷"


rename fp311001 q1
rename fp311002 q2
rename fp311003 q3
rename fp311004 q6
rename fp311005 q4
rename fp311006 q5
rename fp311007 q7
rename fp311008 q8

gen age=93-fpbirth
gen target="p"
gen sample_j=3
gen wave=6
gen num_q=9
//rename fpsex sex
tostring(fpsex),gen(sex)

drop if fpbirth==98|fpbirth==99

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace

 


use "D:\User_Data\Downloads\青少年調查\C00238_3\j1w6s_Jan2019.dta",clear
display "國一樣本/第六波/青少年問卷"


rename fs608001 q1
rename fs608002 q2
rename fs608003 q6
rename fs608004 q7
rename fs608005 q8
rename fs608006 q9
gen age=94-fsbirth
gen target="s"
gen sample_j=1
gen wave=6
gen num_q=6
//rename fssex sex
tostring(fssex),gen(sex)

drop if fsbirth==99
drop if fssex==9

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace

 



use "D:\User_Data\Downloads\青少年調查\C00238_4\user20180108\j1w6p_Jun2011.dta",clear
display "國一樣本/第六波/家長問卷"

display "------- no self-esteem questions-----"

use "D:\User_Data\Downloads\青少年調查\C00250_1\j1w7s_Jan2019.dta",clear
display "國一樣本/第七波/青少年問卷"

display "-------no self esteem questions------"


use "D:\User_Data\Downloads\青少年調查\C00250_2\j3w7s_Feb2019.dta",clear
display "國三樣本/第七波/青少年問卷"


rename gs340001 q1
rename gs340002 q2
rename gs340003 q3
rename gs340004 q6
rename gs340005 q4
rename gs340006 q5
rename gs340007 q7
rename gs340008 q8
rename gs340009 q9


gen age=95-gsbirth
gen target="s"
gen sample_j=3
gen wave=7
gen num_q=9
//rename gssex sex
tostring(gssex),gen(sex)

drop if gsbirth==98|gsbirth==99

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 



use "D:\User_Data\Downloads\青少年調查\C00250_3\user20180108\j3w7p_Jun2013.dta",clear
display "國三樣本/第七波/家長問卷"


rename gp408001 q1
rename gp408002 q2
rename gp408003 q3
rename gp408004 q6
rename gp408005 q4
rename gp408006 q5
rename gp408007 q7
rename gp408008 q8
rename gp408009 q9
gen age=95-gpbirthy
gen target="p"
gen sample_j=3
gen wave=7
gen num_q=9
//rename gpgender sex
tostring(gpgender),gen(sex)

drop if gpbirth==98

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 


use "D:\User_Data\Downloads\青少年調查\C00272_1\user20180108\j1w8p_June2012.dta",clear
display "國一樣本/第八波/家長問卷"



rename hp356001 q1
rename hp356002 q2
rename hp356003 q3
rename hp356004 q6
rename hp356005 q4
rename hp356006 q5
rename hp356007 q7
rename hp356008 q8
rename hp356009 q9

gen age=96-hpbirthy
gen target="p"
gen sample_j=1
gen wave=8
gen num_q=9
//rename hpsex sex
tostring(hpsex),gen(sex)

drop if hpbirthy==99|hpbirthy==98

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 




use "D:\User_Data\Downloads\青少年調查\C00272_2\j1w8s_Jan2019.dta",clear
display "國一樣本/第八波/青少年問卷"


rename hs081001 q1
rename hs081002 q2
rename hs081003 q6
rename hs081004 q7
rename hs081005 q8
rename hs081006 q9

gen age=96-hsbirth
gen target="s"
gen sample_j=1
gen wave=8
gen num_q=6
//rename hssex sex
tostring(hssex),gen(sex)

drop if hsbirth==98 | hsbirth==99

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 


use "D:\User_Data\Downloads\青少年調查\C00272_3\j3w8s_Feb2019.dta",clear
display "國三樣本/第八波/青少年問卷"

display "---------no self-esteem questions------------"


use "D:\User_Data\Downloads\青少年調查\D00124_1\j1w9s_Jan2019.dta",clear
display "國一樣本/第九波/青少年問卷"


rename is058001 q1
rename is058002 q2
rename is058003 q3
rename is058004 q6
rename is058005 q4
rename is058006 q5
rename is058007 q7
rename is058008 q8
rename is058009 q9

gen age=98-isbirthy
gen target="s"
gen sample_j=1
gen wave=9
gen num_q=9
tostring(isgender),gen(sex)

drop if isbirthy==9

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 



use "D:\User_Data\Downloads\青少年調查\D00124_2\user20180108\j1w9p_Nov2016.dta",clear
display "國一樣本/第九波/家長問卷"

display "------no self-esteem questions--------"

use "D:\User_Data\Downloads\青少年調查\D00163\D00163\TYP2011_Jan2019.dta",clear
display "成人合併樣本第一波"


rename m1s088001 q1
rename m1s088002 q2
rename m1s088003 q3
rename m1s088004 q5
rename m1s088005 q8
rename m1s088006 q9
rename m1s088007 q6
rename m1s088008 q4
rename m1s088009 q7

gen age=100-m1sbirth_year
gen target="s"
gen sample_j=2
gen wave=1
gen num_q=9
tostring(m1ssex),gen(sex)

drop if m1sbirth_year==98|m1sbirth_year==99

keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 



use "D:\User_Data\Downloads\青少年調查\D00171\公共版\TYP2014_Nov2019.dta",clear
display "成人合併樣本第二波"


rename m2s071001 q1
rename m2s071002 q2
rename m2s071003 q3
rename m2s071004 q5
rename m2s071005 q8
rename m2s071006 q9
rename m2s071007 q6
rename m2s071008 q4
rename m2s071009 q7
gen age=103-m2sbirth_year
gen target="s"
gen sample_j=2
gen wave=2
gen num_q=9
tostring(m2ssex),gen(sex)

drop if m2sbirth_year==98 | m2sbirth_year==99


keep q* age sex target sample_j wave num_q
append using "questions.dta",force 
save "questions.dta",replace
 

use "questions.dta",clear
tostring(sample_j),replace
tostring(wave),replace
tostring(num_q),replace
save "questions.dta",replace

use "questions.dta",clear
tostring(sample_j),replace
tostring(wave),replace
tostring(num_q),replace
save "questions.dta",replace

drop if q1>5| q1<0
drop if q2>5| q2<0
drop if q3>5| q3<0
drop if q4>5| q4<0
drop if q5>5| q5<0
drop if q6>5| q6<0
drop if q7>5| q7<0
drop if q8>5| q8<0
drop if q9>5| q9<0


//negative processing for q1 2 3 5 8 9

/*replace q1=-q1
replace q2=-q2
replace q3=-q3
replace q5=-q5
replace q8=-q8
replace q9=-q9 */

save "questions.dta",replace


log close











