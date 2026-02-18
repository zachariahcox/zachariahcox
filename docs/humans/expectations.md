# My expectations

This is a quick written summary of the trends and themes I like to see on my teams. 

### Honesty / information stability 

I try to be as transparent as possible, and I expect the same from you.

I encourage you to reach out to my manager if you're curious about something and do not feel comfortable asking me for some reason. 

I think you'll need a effective relationship with both of us to be maximally successful anyway.

We should socialize the best information we have -- while targeting to an audience is important, we should strive to deliver the same news, good or bad, to all levels of the org chart.

### Results focus

I care about the results of work more than the activitives required to acheive them. 

The work that we do each day should easily align with one of our Objectives and Key Results (OKRs) and we should be making steady, iterative progress. 
If you feel like your current work does not align with those goals, oh no! We should discus it.

It is not great for anyone to spend "too much" time stuck on a problem. 
The exact amount of time will vary, some problems are harder than others, but this doesn't mean that progress stops.
If your project involves solving a novel or difficult problem where progress will not be easily mapped to the number of PRs merged, I recommend making regular progress reports to keep the org updated on the challenges and approaches you have found, attempted or ruled-out.
If you feel stuck, or stop making progress, please raise the issue with me. 

### Engineering / observability focus

Under normal circumstances, we should not be adding to our technical debt. 
Code is meant to be read by humans. 
It will be read more times than it was written, so optimize for the future reader (especially if that's you!).
When you open a pull-request, mentally switch roles and review the content from the reviewer's standpoint. 

All new code contributions should be accompanied by high-quality unit testing and built behind feature flags. 
The deployment strategy should include enough telemetry to diagnose problems in production. 
And hopefully charts and graphs. 
I really really love dashboards!

We should always absorb the majority of the risk in a feature rollout. 
This means "staff-shipping," "dog-fooding" or otherwise generally ensuring our company is fully exposed to the feature before any customer.

### Iterative focus

In general, projects that can be delivered iteratively are going to be: 
1. Easier to build
1. Easier to deploy (and roll back)
1. Easier to parallelize amongst your team.

### Kindness

I expect you to help your fellow team members when they need it! 
Everyone needs help sometimes, and we should take the opportunity to practice our technical communication skills whenever the need arises.
Keeping the team unblocked and deliberately creating a culture where asking questions is encourage are our goals. 

### Diversity and inclusion

Diversity and commitment to inclusion are important to building good teams. 
Our goal is to create an environment where everyone can do their best work. 

Sometimes misunderstandings will happen!

I expect you to be respectful of someone's lived experiences and to pay attention to the power dynamics present in our interactions. 
This includes topics related, but not limited to, race, gender and gender expression, sexual identity or expression, class, disability, religion, age, body size, etc. 

### High-quality internet

When working remotely, I expect you to have a reliable, fast internet connection under **all normal circumstances**. 
This is extra important when presenting or screen sharing. 
If your wifi can be flakey, roll out a long ethernet cable.

If you need a better router or ethernet cable it is your responsibility (and important for your career) to get one!

### Clear out of office communications

Working remotely is about trust. 
It's important to let the team and your boss know when you'll be out of office. 
You should aim to let all interested parties know ahead of time by at least twice the number of days you'll be out.
EG: if you'll be out for _two_ days, let folks know at least **four** days ahead of time.

I strongly recomend:
* write an out of office notice on slack. 
* forward that message to your boss (or mention them directly)
* update your slack status / github status to indicate you're out. EG `:vacation: Returning Mar12`
* (optional) for managers / staff+ engineers, consider changing your slack status to indicate that you'll be out soon. EG: `:soon: vacation starting Mar10`

### Cameras should be on during meetings

Working remotely is about trust and it's harder to build relationships virtually than in-person.
By default, I expect everyone to have cameras on during meetings.

It is fine to leave them off sometimes (EG: eating lunch, distractions in the background), but it should not be the norm.

### Supporting the live product / data science is fun

I personally place a lot of value on live site support -- being on-call for a global service makes people better engineers. 
I expect all engineers to be on at least (and almost always _most_) 1 (one) on-call rotation. 

As a corollary to this, avoid writing code that is "thrown over the wall" or otherwise contributing to the support burden of other teams. 
We should support the code we produce. 
