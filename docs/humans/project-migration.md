# Migrating a project or charter to a new team

Every situation will be somewhat different, but I have found this approach to be an effective general plan. 
Recording these presentations is helpful and recommended. 

Officially updading the on-call rotations can happen at various points during this process, it's useful to discuss and document whether it will happen before or after completion of the process.

## Safely moving a project from one team (the "exporting" team) to a new team (the "receiving" team)
1. Designate an individual from each of the exporting and receiving teams to lead the effort (Designated Responsible Individual)
1. Export DRI presents a document of information about the service, including:
   * Where are all the repos and resources
   * Architecture overview and diagrams
   * Key stakeholders
   * Where to find current open issues
   * Summary of recent activity (new features, bug fixes, etc.)
1. (if applicable) Export DRI presents overview of the charter's health, covering things like: 
   * Dashboards
   * Playbooks / trouble-shooting guides
   * How to find and understand telemetry / logs
   * Deployment process and gotchas 
   * Recent incidents and what was learned from them
   * For incident-heavy or unhealthy services, an emergency escalation path to the exporting team should be documented in the playbooks.
3. Receiving DRI reviews the information and meets with the exporting DRI to go over any outstanding questions.
4. For incident-heavy or unhealthy services, the receiving DRI should "ride-along" with the current live-site response team for a few incidents to better understand the process.
5. Receiving DRI gives a presentation on the new project or charter to the receiving team.
