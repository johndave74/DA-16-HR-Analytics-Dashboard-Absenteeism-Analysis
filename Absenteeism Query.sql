-- fetching all records from the database
select * from Absenteeism_at_work;
select * from compensation;
select * from Reasons;


-- create a join table
select * from Absenteeism_at_work as atw
left join compensation as c
on atw.ID = c.ID
left join Reasons as r
on atw.Reason_for_absence = r.Number;


-- find the healthiest employee for bonus
select * from Absenteeism_at_work
	where Social_smoker = 0 and Social_drinker = 0
	and Body_mass_index < 25
	and Absenteeism_time_in_hours < (select AVG(Absenteeism_time_in_hours) from Absenteeism_at_work);


-- compensation rate increase for non-smokers / budget $983,221 so 0.68 increase per hour/ $1,414
select count(*) as total_non_smokers from Absenteeism_at_work
where Social_smoker = 0;


-- optimize this query
select 
	atw.ID,
	r.Reason,
	atw.Month_of_absence,
	atw.Body_mass_index,
case when Body_mass_index < 18.5 then 'Underweight'
	 when Body_mass_index between 18.5 and 25 then 'Healthy weight'
	 when Body_mass_index between 25 and 30 then 'Overweight'
	 when Body_mass_index > 30 then 'Obese'
	 else 'Unknown'
end as bmi_category,
case when Month_of_absence in (12,1,2) then 'Winter'
	 when Month_of_absence in (3,4,5) then 'Spring'
	 when Month_of_absence in (6,7,8) then 'Summer'
	 when Month_of_absence in (9,10,11) then 'Fall'
	 Else 'Unknown'
End as 'Season Break',
	Month_of_absence,
	Day_of_the_week,
	Transportation_expense,
	Education,
	Son,
	Social_drinker,
	Social_smoker,
	Pet,
	Disciplinary_failure,
	Age,
	Work_load_Average_day,
	Absenteeism_time_in_hours
from Absenteeism_at_work as atw
left join compensation as c
on atw.ID = c.ID
left join Reasons as r
on atw.Reason_for_absence = r.Number;