<style>

.reveal section p {
  color: black;
  font-size: .7em;
  font-weight: normal;
  font-family: 'Helvetica'; #this is the font/color of text in slides
}


.section .reveal .state-background {
    background: white;}
.section .reveal h1,
.section .reveal p {
    color: black;
    position: relative;
    font-family: 'Helvetica';
    font-weight: normal;
    top: 4%;}
   
 
 /* section titles */
.reveal h1 { 
  color: black;
  position: relative;
  font-weight: normal;
  font-family: 'Helvetica'; 
  top: 4%
}    

 
/* slide titles */
.reveal h3 { 
  color: black;
  font-weight: normal;
  font-family: 'Helvetica'; 
}    

.small-code pre code {
  font-size: 1.2em;
}

</style>



Research Speed Dating
========================================================
author: Chris Bail, 
date: SICSS
autosize: true
transition: none

========================================================

# **STRENGTHS OF GROUP PROJECTS**


1. Better Science
========================================================

1. Better Science
========================================================

<img src="Uzzi et al.png" height="400" />

1. Better Science
========================================================

<img src="impact.png" height="400" />


2. This may be especially true for CSS
========================================================


2. This may be especially true for CSS
========================================================

<img src="colore_by_nodes_arial.png"/>

3. Group Projects may be the Most Efficient Way for us to Learn from Each Other
========================================================




========================================================

# **CHALLENGES OF GROUP PROJECTS**


Challenges
========================================================
&nbsp; 

1. Tremendous diversity of skills  
2. Ensuring good group chemistry 
3. Limited time 
4. Different goals?
5. Free-riding


SICSS Group Projects
========================================================
&nbsp; 

1. Can take on many forms (from original empirical reseaarch to creation of open-source tools)
2. In one week, many groups will only find enough time to create a proposal, though some may have pilot results by the end of the week.
3. Limited seed funding may be available at your site for pilot research and/or data purchasing, cloud computing costs.
4. Additional funding may be available at your site after the end of the week.

========================================================

# **RESEARCH SPEED DATING**


Research Speed-dating
========================================================
&nbsp;  

1. We crowdsource a list of research interests in a google doc (5 min)
2. Each person writes a "1" next to their research interests (5 min)
3. We identify maximally similar clusters of participants
4. We identify maximally different clusters of participants

Research Speed-dating
========================================================
&nbsp;  

1. Maximally similar clusters come up with a group project (30 min)  
2. Maximally different clusters come up with a group project (30 min)  
3. We start a new google doc. Each person takes 5 minutes to write down their favorite group project idea  
4. Everyone puts their name next to the group project they want to join  


Research Speed-dating
========================================================
&nbsp;  

1. Have lunch today with your group in order to begin discussing your project.  
2. It is ok to change groups until the end of today.



Timeline for this week
========================================================
&nbsp;

Monday: develop group project ideas and make research teams

Tuesday morning: write brief (<1 page) proposal 

Tuesday afternoon: the organizer of your site will begin responding to seed funding requests on a rolling basis (if funds are available)

Tuesday afternoon-Thursday night: work on group projects  

Friday (all day): group presentations (with feedback)


Deliverable
========================================================
&nbsp;

A document that contains a presentation of your group project that is between 10-20 minutes that explains:  

1) Why your group project is important 

2) What are your hypotheses?  

3) What will you collect? 

4) What are the next steps? 

Note: not all projects will work; if yours fails, please write a post-mortem that explains why.


========================================================

# **LET'S BEGIN**



Let's crowdsource a list of our research interests
========================================================
&nbsp;

Place the name of a research interest in the first column of this
document, and write a "1" across all research interests you have:

https://tinyurl.com/SICSSSpeedDating2021



Read the Googlesheet
========================================================
class: small-code 
&nbsp;


```
Rows: 21
Columns: 47
$ name                                                                      <chr> …
$ covid_19                                                                  <dbl> …
$ mass_collaboration                                                        <dbl> …
$ topic_modeling                                                            <dbl> …
$ political_polarization                                                    <dbl> …
$ mental_health                                                             <dbl> …
$ discrimination                                                            <dbl> …
$ number_blm                                                                <dbl> …
$ semantic_concept_text_networks                                            <dbl> …
$ health_outcomes                                                           <dbl> …
$ mixed_methods                                                             <dbl> …
$ social_support                                                            <dbl> …
$ gamified_surveys                                                          <dbl> …
$ political_campaigns                                                       <dbl> …
$ political_extremism                                                       <dbl> …
$ wiki_surveys                                                              <dbl> …
$ social_contagion                                                          <dbl> …
$ team_learning                                                             <dbl> …
$ homophily                                                                 <dbl> …
$ wisdom_of_crowds                                                          <dbl> …
$ election_integrity_election_manipulation                                  <dbl> …
$ experiments                                                               <dbl> …
$ social_networks                                                           <dbl> …
$ images_as_data                                                            <dbl> …
$ links_between_social_media_and_protest_collective_action                  <dbl> …
$ measuring_culture_with_quan_text_analysis                                 <dbl> …
$ connecting_surveys_with_big_data                                          <dbl> …
$ combining_observational_and_experimental_data                             <dbl> …
$ social_media_cross_plateform_similarities_and_differences                 <dbl> …
$ mis_dis_information                                                       <dbl> …
$ assessing_reading_gender_and_race_etc_from_social_media_data_for_analysis <dbl> …
$ tik_tok_videos_meme_evolution                                             <dbl> …
$ simulation_models_abm_sd_etc                                              <dbl> …
$ digital_surveillance_either_commercial_or_govt                            <dbl> …
$ ecological_momentary_assesment_of_health_outcomes                         <dbl> …
$ legislators_and_political_parties                                         <dbl> …
$ information_extraction_from_text                                          <dbl> …
$ data_visualization_effectiveness                                          <dbl> …
$ reddit_data                                                               <dbl> …
$ instagram_data                                                            <dbl> …
$ twitter_data                                                              <dbl> …
$ facebook_data                                                             <dbl> …
$ tiktok_data                                                               <dbl> …
$ causal_inference                                                          <dbl> …
$ ethnic_and_racial_boundaries_on_twitter                                   <dbl> …
$ metascience                                                               <dbl> …
$ stop_nihilist_group                                                       <dbl> …
```

Identify Maximally similar
========================================================
class: small-code 
&nbsp;

![plot of chunk unnamed-chunk-2](Speed_Dating_2021-figure/unnamed-chunk-2-1.png)


Simulate Random Groups
========================================================
class: small-code 
&nbsp;


```
[1] 1
[1] 2
[1] 4
[1] 5
[1] 8
[1] 10
[1] 20
[1] 25
[1] 40
[1] 50
[1] 100
[1] 125
[1] 200
[1] 250
[1] 500
[1] 1000
```

Identify maximally diverse groups
========================================================
&nbsp;


```
              names diversity_score
204 R L,D F,M W,N L        4.812184
594 R L,N L,M W,D F        4.812184
762 N L,K G,M W,A B        4.770685
896 D M,N L,R L,M W        4.762174
435 M W,R L,C H,A B        4.744932
497 A A,R L,M W,N L        4.744932
944 M W,R L,A A,N L        4.744932
292 M I,R L,J K,M W        4.727388
90  D F,N L,A B,D M        4.718499
122 M W,D F,N B,R L        4.718499
```


Go!
========================================================
&nbsp;

Meet in maximally similar and dissimilar groups for 30 minutes. Site organizer will create googlesheet where project ideas will be listed. At the end of each 30 minutes period, one group representative should write the name of the project and a brief (less than three sentence description). After the end of the exercise, put your name next to the research project that you are most excited about joining. Click on the link to the google doc for your site here: https://tinyurl.com/SICSSSpeedDating2021 
