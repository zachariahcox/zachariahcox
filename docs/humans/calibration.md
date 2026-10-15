# Engineering calibration process

The goal of this process is to fairly reward high performers, align performance review feedback with rewards, and help our leaders align on what impact "looks like."

We will reference each role's official career ladder extensively.
It is the agreed-upon set of rubrics for evaluating impact.

Depending on the scope of the calibration, it may not be possible to review each employees contributions in detail.
In this way, the process works like a giant merge sort, where the sub-sorting is delegated.

## Data collection
The exact format may have some specifics change between reorgs to accommodate new constraints, but typically involves filling out a spreadsheet with the following columns per direct report.

| Column | Example| Commentary |
| --- | ---| ---|
| Name | Zac! | |
| Role / Level | Engineering Manager 7 | What career-level expectations should apply here?
| Up for promo? | No (if yes, provide URL) | Calibrations should tell a story -- you cannot be up for promo and have a low rating. Consistently super high ratings may imply we need to push the manager for promo packet.
| Local manager rating | Typically 0% - 200%. | Before department-level calibration, does NOT include budget constraints.
| Director rating | Typically 0% - 200%. | After department-level calibration, DOES include budget constraints.
|Impact overview| * Completed Project Omega, contributing 1B ARR<br/>* Burned down a data center due to Gross Incompetence<br/>* Consulted on Project Alpha| This should be a 3 to 5 bullet point summary of top-line results directly attributable to this engineer.
| Why not higher? ("wnh") | Despite strong performance with project Omega, the data center situation prevents me from recommending anything higher than 100. | Providing explicit insight into the manager's thought process. Write these to allow someone with no knowledge of the person to understand what's going on.
| Why not lower? ("wnl")  | Project Omega is a huge success, we'll see how Alpha turns out. Under normal circumstances the data center problem would have pulled my recommendation down to 60 or 0, but given the big wins, 100 seems right. | In higher-level calibrations, what should your manager keep top-of-mind if considering moving this candidate down a level?
| Top growth opportunity ("top") | Slowing down and being more careful will lead to fewer mistakes. Upcoming collaborations with external team around Project Beta.| These need to be _real_ tasks you actually plan to assign them. Avoid saying "lead a big project" with no plan in mind.


## Calibration meetings

There will be a series of meetings where the team leaders build alignment on ratings.
Depending on the initial skew, this can take a while.

Goals include:
1. What does "target" impact look like for each role this period. Who exemplifies this? (EG: "this period Nick is our example of SWE4 at 100%")
1. Balancing the rewards to meet the given budget.
2. Defining "cohorts" (groups of engineers with similar impact) and "pain points" (employees where the balanced rating is not ideal)
1. Meeting required differentiation goals.
   * EG: X engineers must receive top rewards and Y must receive bottom rewards.
   * EG: No more than Z% of engineers may receive "target" rewards.

### 1. Initial ratings

Each director will produce a spreadsheet for collecting ratings for their department.
Each manager will produce a rating for each member of their team in the spreadsheet.

These initial ratings work best when they are an honest assessment based on a standardized career ladder.
Avoid gamesmanship here. 
IE: do not calibrate someone super high with the goal of negotiating _down_.
Artificially-high ratings do not tend to result in higher rewards for your folks in the long term, and definitely annoy your peers in the short term.
It also slows the process down.

It is much more fun to decide which folks to "pull up" to a higher rating than to spend the whole meeting pulling folks "down" to balance the budget.
If everyone arrives locally balanced then the merge goes quickly, focusing mostly on outliers and constraints.

### 2. Cohort analysis

For each level and job type (EG: Senior Software Engineer), group employees with similar impact for the period together into "cohorts."
It's common for us to see "cohorts" of ICs with similar impact profiles. 
EG: "if Joe is rated 120%, then so is Jane who had similar impact this period."

Notes: 
* It's common for engineers from the same teams to fall into the same initial cohorts.
* You do not need to produce a full stack-rank of the org, but you need to identify the top and bottom performers of each cohort to facilitate future merge sorts.
* These outliers should be well-sorted.
* It really helps if all attendees review the spreadsheet before the meeting -- it's a lot to read.

At higher-level calibrations (Senior-director-level calibration), only the sorted tops-and bottoms of cohorts are compared to produce the larger sorted lists.
In practice, this feels like exploring the "edges" of the cohorts produced by different managers.
EG: how does the top-performing senior engineer (the "top edge") from Mark's team compare to the lowest performing senior engineer (the lowest edge) from Mary's team?
During this phase, we look for patterns like "The top performer in Mark's 80% cohort had higher impact than the lowest in Mary's 100% cohort."
We discuss why this may be, and it typically causes a realignment where either one of Mark's folks moves up or one of Mary's folks move down, and we apply the learnings from the discussion to other similar situations.
This repeats until we have a calibrated impact rating for each engineer.

At the end of this process, the boss will have enough documentation to defend all impact assessments and we will have a budget that is balanced.

### Pain points

At some point in the hierarchy, teams will be required to exactly meet or beat their given budget.
A balanced budget usually comes with some uncomfortable choices or "pain points."
We clearly document these pain points, why we don't like them, and we bring this information next higher-level of calibration.

Hopefully, the balancing process produces some wiggle room to address the noted pain points later on.
You may want to prepare for this by having each team spend only 98% of their allotted budget, saving 2% for pain-point mitigation.

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

### How do you calibrate people with different roles?

I don't know. 
It is very difficult to estimate the relative impact between, say, a database engineer and a frontend component developer.
They have different bug volumes, feature completion rates, relative risk, lines of code, project timelines, etc.

If there are no other constraints to help you, it's important to have a principled approach to how you make your decisions, so they are made fairly.
