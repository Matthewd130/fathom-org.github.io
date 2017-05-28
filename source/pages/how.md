---
title: How it works
---

Fathom is centered around assessments evaluating a specific quality of an identity and resulting in a credential. It aims to make these arbitrary credentials valuable by focusing on the incentives motivating assessors rather than the assessment process itself. The goal is to create a [schelling point](https://en.wikipedia.org/wiki/Focal_point_(game_theory)) for multiple assessors interacting with an assessee such that it'll be an accurate assessment. That means that in a fathom assessment there isn't a notion of what constitutes a test, rather the process is such that those participating will converge on what makes an _ideal_ test for their collective needs.

## Concepts and Communities
These collectives are communities of individuals who share a specific trait, skill, or quality (generally called concepts). These concepts, refering both to the community and the subject, are organized into a hierchal ontology, which plays a large role in creating meaning within fathom. A concept can have one or more parents, which are other concepts that encompass it. If an individual "passes" an assessment in a concept they are a member of not only it's community, but to a lesser extent, a member of all its parents. 

Anyone can create a new concept just by defining its parents, but the concept will only be valuable if others congregate to it. The ease of creation by stemming off of and r
eferencing existing communities allglobal-linum-modeows for concepts to flourish where they are clearly defined and needed, while the value of consensus will drive individuals to congregate where valuable. The assessment process itself also encourages concepts to only be populated if they _are_ points of consensus. 

### Sampling
This emergent hierarchical ontology is used for, and made meaningful by, sampling asssessors for assessments. We first call from the most relevant concept, the one at hand, before moving on to its parents. While larger concepts (i.e _"Math"_ or _"English"_), may never have individuals directly earn them, they will be composed of individuals who were favorably assessed in their children, the concepts that they're composed of. 

The population we draw for our assessments is important, as the possibilities for a schelling point in the assessment game depend on each assessors assumptions about the others, and hence the composition of the assessor group as a whole.

## The Assessment Process
### Payments, Staking, and Tokens
This sampling occurs when an individual initiates an assessment for a concept. They must pay **X** tokens per **A** assessors, which are used as the reward for the assessing well. The sample is drawn and to accept the assessment, any assessor within it can stake **X** tokens, which they could then lose for assessing poorly.

Because the user is free to pay whatever they want and assessors are free to chose whether they accept or not a market forms around assessments, allowing the system to scale from easy to assess, and hence cheap, concepts, to more involved, complicated, and hence expensive ones. 

The staking also ensures that assessors only accept assessments that they are confident they can assess. This allows us to draw from larger communites and still get qualified individuals. It also acts as a filter for new concepts. If assessors from the parent concept can't understand what it is, or aren't confident in their ability to come to consensus over it, they won't accept assessments from it, and it will never be populated.

### The (actual) assessment process
Once all the assessors needed have accepted the assessment process beings. Each assessor communicates directly with the assessee and has the freedom to apply whatever assessment methods make the most sense for the concept. It's in the assessee's best interest to cooperate with the asseessor.

An assessor can signal that they have gotten an accurate picture of an assesee within the given context by commiting their score by submitting the hash of it + a salt. On a protocol level the score is just a signed 8 bit integer, but that it can mean different things and have different contrainst in the context of different concepts. For example there may be a concept that is boolean, the assessee either is or isn't something, and so the only meaningful scores would be the poles.

Once more than 50% of the assessors have commited their scores the stakes of the other assessors starts being burned at a constant rate in order to encourage them to finish, and to provide a finite end to the assessment process given a majority of rational assessors.

### Clustering, Rewards, and Punishments
After all scores have been submitted (or burned out) assessors reveal their score by submitting it together with its salt. If an assessor's hash is correctly submitted by someone else their stake is burned, meaning that they must keep it secret. Once the reveal period is over scores are then clustered together, based on their proximity to each other in relation to the Mean Average Distance of the set. 

The average of the largest cluster is the final score, and assessors are rewarded or punished based on the distance of their score from it, with assessors closer getting rewarded from the payment the assessee put in and assessors further away getting their stake burned. The exact rate at which tokens are rewarded or burned is yet to be determined. 

It is important also that the payment by the assessee is divided between those who are close to the mean. This means that the assesors want to be the only members near to the mean, with others spread out further, essentially rendering assessors unable to directly trust each other as there would be an incentive to deceive. 

### Final Outcomes
The final score determines the assessee's fate. If it's positive they "passed" and hence get entered into the community for the given concept. Their score and the blocknumber (i.e date) they took the assessment is recorded. Together these form the _weight_ of the assessment, which is how likely the identity is to be called for an assessment in the future, and hence, how valuable it is. The identity also gets a weight in all the parents of the concept, reduced by a fixed rate. This continues until the weight is negligible or the top of the concept tree is reached.
