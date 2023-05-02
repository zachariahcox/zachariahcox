# Migrating a project to a new team

Every situation will be somewhat different, but I have found this approach to be an effective general plan. 
Recording these presentations is helpful and recommended. 


## Safely moving a project from one team (the "exporting" team) to a new team (the "receiving" team)
1. Designate an individual from each of the exporting and receiving teams to lead the effort (Designated Responsible Individual)
2. Define goal dates for the following on-call transfer plan: 
   * Phase 1: Receiving team begins "secondary" on-call rotation. Exporting team is still primary.
   * Phase 2: Receiving team takes over primary on-call, Exporting team becomes secondary.
   * Phase 3: Exporting team drops secondary rotation. 
3. Exporting DRI presents a document detailing the charter's structure, covering things like:
   * Where are all the repos and resources
   * Architecture overview and diagrams
   * Key stakeholders
   * Where to find current open issues
   * Summary of recent activity (new features, bug fixes, etc.)
4. Exporting DRI presents a document of the charter's health, covering things like: 
   * Dashboards
   * Playbooks / trouble-shooting guides
   * How to find and understand telemetry / logs
   * Deployment process and gotchas 
   * Recent incidents and what was learned from them
5. Receiving DRI reviews the information and meets with the Exporting DRI to go over any outstanding questions.
6. Receiving DRI gives a presentation on the new project or charter to the receiving team.
7. Transfer phases begin

