#########################
### SET EVERYTHING UP ###
#########################


### load library
library(igraph)

### create network to be used for model
g = graph.lattice(dim=1, nei=2, length=20, circular=T)

### setup fixed layout for consistent visualization
layout = layout.auto(g)

### set starting conditions and plot
V(g)$state = 0        ### all states are zero
V(g)[1:5]$state = 1   ### except node 3 and their neighbors

### plot starting conditions
plot(g, vertex.color=V(g)$state, layout=layout)

### set threshold parameter
threshold = 0.5

######################
#### RUN THE MODEL ###
######################

### create holder variable for the new state
V(g)$newstate=V(g)$state

### loop through agents and identify new state
for(i in 1:vcount(g)) {
  neighbor_adoption = mean(V(g)[nei(i)]$state)
  V(g)[i]$newstate = ifelse(neighbor_adoption>=threshold, 1 ,0)
}

### set state equal to new state
V(g)$state = V(g)$newstate

### plot again
plot(g, vertex.color=V(g)$newstate, layout=layout)