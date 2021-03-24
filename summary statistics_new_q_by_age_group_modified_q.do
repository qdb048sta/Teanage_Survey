use "D:\User_Data\Downloads\青少年調查\questions.dta",clear 
qui order q4, after(q3)
qui order q6,after (q5)
qui order q7,after (q6)
preserve 
log using "summary statistics_new_q_by_age_group_combined.log",replace

/*"---------------------FORMAT-------------"
"---------------------N------------------"
"--------------------MEAN----------------"
"--------------------STD-----------------"
"--------------------MIN-----------------"
"------------------- MAX-----------------"

"------------------CELL IS gender_age_group----"*/

/*Formula:

non q4 q6 q7: if scale =1-5 : q/5 
q4 q6 q7 if  scale =1-5 (6-q)/5
non q4 q6 q7 if scale=1-4: q/4
q4 q6 q7: if scale=1-4:(5-q)/4

esteem1=(q4+q5+q6+q7+q8+q9)/6
esteem2=(q4+q6+q7)/3
efficacy1=(q1+q2+q3)/3
efficacy2=(q1+q2)/2
*/





//Code for generating age_group
gen age_group="10-19" if age>=10 & age <=19
replace age_group="20-29" if age>=20 & age<=29
replace age_group="30-39" if age>=30 & age<=39
replace age_group="40-49" if age>=40 & age<=49
replace age_group="50-59" if age>=50 & age<=59
replace age_group="60-69" if age>=60 & age<=69
replace age_group="70-79" if age>=70 & age<=79
replace age_group="80-89" if age>=80 & age<=89
replace age_group="90-99" if age>=90 & age<=99
//qui keep if !missing(age_group)


//Drop anaomoly of sex 
keep if sex=="1"|sex=="2"
qui replace sex="F" if sex=="1"
qui replace sex="M" if sex=="2"
qui gen age_group_sex=sex+"_"+age_group

//Formula provided 
replace q1=q1/4 if target=="s"
replace q2=q2/4 if target=="s"
replace q3=q3/4 if target=="s"
replace q4=(5-q4)/4 if target=="s"
replace q5=q5/4 if target=="s"
replace q6=(5-q6)/4 if target=="s"
replace q7=(5-q7)/4 if target=="s"
replace q8=q8/4 if target=="s"
replace q9=q9/4 if target=="s"

replace q1=q1/5 if target=="p"
replace q2=q2/5 if target=="p"
replace q3=q3/5 if target=="p"
replace q4=(6-q4)/5 if target=="p"
replace q5=q5/5 if target=="p"
replace q6=(6-q6)/5 if target=="p"
replace q7=(6-q7)/5 if target=="p"
replace q8=q8/5 if target=="p"
replace q9=q9/5 if target=="p"


gen esteem1=(q4+q5+q6+q7+q8+q9)/6
gen esteem2=(q4+q6+q7)/3
gen efficacy1=(q1+q2+q3)/3
gen efficacy2=(q1+q2)/2

//Save a tempfile for future using
save "questions_with_added_variables_adault.dta",replace

//Display statistics
keep esteem1 esteem2 efficacy1 efficacy2 age_group_sex
display" Summary Statistics By Age group-Adult"
asdoc sum,stata(mean sd N) by(age_group_sex) 
restore
log close

