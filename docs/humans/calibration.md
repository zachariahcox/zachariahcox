# Engineering calibration process

The goal of this process is to fairly reward high performers, perform a department audit, and help our leaders align on what impact "looks like."

We will reference the discipline's official career ladder regularly.

Depending on the scope of the calibration, it may not be possible to review each employees contributions in detail.
In this way, the process works like a giant merge sort, where the sub-sorting is delegated.

## Data collection
The exact format may have some specifics change between reorgs to accommodate new constraints, but typically involves filling out a spreadsheet with the following columns per direct report.

| Column | Example| Commentary |
| --- | ---| ---|
| Name / username | zacox | Basic classifications
| Role | manager |
| Level | 10 |
| Up for promo? (if yes, provide url) | No | This is regularly useful for determining if maybe a promo is better than a super high performance rating.|
| m1 rating | 100 | This is the manager's "approximately balanced for their own team" rating. Typically 0% - 200%. |
| m2 rating | - | This is the result of a department-level calibration and represents the budget balanced rating when compared to all peers within the local org. |
|Impact overview| * Completed Project Omega, contributing 1B ARR<br/>* Burned down the data center due to Gross Incompetence<br/>* Consulted on Project Alpha| This should be a 3 to 5 bullet point summary of top-line projects directly attributable to this engineer |
| Why not higher? ("wnh") | Despite strong performance with project Omega, the data center situation prevents me from recommending anything higher than 100. | These three questions help calibrate the rating by providing explicit insight into the manager's thought process. They should be written to allow someone with no knowledge of the referenced people to understand what's going on.
| Why not lower? ("wnl")  | Project Omega is a huge success, we'll see how Alpha turns out. Under normal circumstances the data center problem would have pulled my recommendation down to 60 or 0, but given the big wins, 100 seems right.
| Top growth opportunity ("top") | Slowing down and being more careful will lead to fewer mistakes. Upcoming collaborations with external team around Project Beta.| |


## Calibration meetings

There will be a series of meetings where the team leaders will align on:

1. What does "target" impact look like for each role (EG: "Senior Software Eng")
1. Balancing the rewards to meet the given budget.
1. Configuring the rewards to meet any required "differentiation" goals.
   * EG: X engineers must receive top rewards and Y must receive low rewards.
   * EG: X% of engineers may receive "target" rewards.
1. Definition of "cohorts" and "pain points" (see below)

Depending on the initial skew this can take a while.

### 1. M1 Calibration: initial ratings
Each manager will produce a rating for each member of their team.

These ratings work best when they are an honest assessment.
Promoting the impact of your team members is an important aspect of a manager's job, but it should stop short of gamesmanship here.
Aspirational ratings do not tend to result in higher rewards for your folks in the long term, and definitely annoys your peers.
It also slows the process down.

It is much more fun to decide which folks to "pull up" to a higher rating than to spend the whole meeting pulling folks "down" into a balanced budget.

If everyone arrives "mostly balanced" then balancing goes quickly, focusing mostly on outliers and constraints.

### 2.  M2 Calibration: Cohort analysis

With their ratings in hand, each M1 will update a joint spreadsheet (the "calibration document") with the relevant information.
All attendees should review the contents beforehand.

The goal of this meeting is to understand the "edges" of the range of ratings given by different managers.
It is very difficult to estimate the relative impact between, say, a database engineer and a frontend component developer.
They have different bug volumes, feature completion rates, relative risk, lines of code, project timelines, etc.

However, it's common for us to see "cohorts" of ICs with similar impact profiles. For these folks, it's easy to say "if Joe has 120 impact, then so does Jane who had a similar portfolio this period."
It's common for engineers from the same teams to fall into the same initial cohorts.

We will spend the bulk of the time in this M2 meeting discussing which impact cohorts each person fell into this period.

Once we have these cohorts loosely formed, for each we will compare the "highest performer from Manager 1 vs lowest performer from Manager 2."
During this phase, we look for patterns like "The top performer in Jason's 80 cohort seems to have had higher impact than the lowest in Zac's 100 cohort."

We discuss why this may be, and it typically causes a realignment where either one of Jason's folks moves up or one of Zac's folks move down, and we apply the learnings from the discussion to other similar situations.

This repeats until we have an M2 calibrated impact rating for each engineer.
At the end of this process, the M2 will have enough documentation to defend all impact assessments, we will have a budget that is balanced, however it usually comes with some uncomfortable choices or "pain points."

We clearly document these pain points and why we don't like them and we bring this information next higher level of calibration.

### 3. M3+ Calibration: Pain points, Budgets and Themes

At some point in the hierarchy, teams will be required to exactly meet or beat their given budget.
Hopefully, balancing at higher and higher levels produces some wiggle room to address the noted pain points elsewhere.

## Other topics

### Do we balance the budget at each role or level ?

No, engineering rewards budgets are dominated by our choices on senior+ folks.
For the same budget allotment, we can bump 1 senior or 2 junior ICs up to the next rewards level.

### Should there be the same number of above-target performers at each level?

No. They are not correlated. However, senior+ have large impact on the overall budget spend.
If you have a period where higher-ranking engineers have lower impact than expected, there may be additional budget available to allocate elsewhere.

### Level checks

It's normal (and encouraged!) to mark a few folks on your team for a level check.
At the end of our calibration process, we will compare their impact against the "target" cohort at the next level.
IE: comparing your Junior IC to a few members of the Senior "target" cohort.
If their impact is getting comparable, that's a good sign that they may be ready for a promotion to the next level.
