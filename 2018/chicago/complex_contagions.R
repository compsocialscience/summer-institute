library(igraph)

g = graph.lattice(dim=1, nei=2, length=20, circular=T)



### setup fixed layout
layout = layout.auto(g)

### set starting conditions and plot
V(g)$state = 0
V(g)[1:5]$state = 1
plot(g, vertex.color=V(g)$state, layout=layout)

### create holder variable for the new state
V(g)$newstate=V(g)$state

### loop through agents and identify new state
for(i in 1:vcount(g)) {
  neighbor_adoption = mean(V(g)[nei(i)]$state)
  V(g)[i]$newstate = ifelse(neighbor_adoption>=0.5, 1 ,0)
}

### set state equal to new state
V(g)$state = V(g)$newstate

### plot again
plot(g, vertex.color=V(g)$newstate, layout=layout)``