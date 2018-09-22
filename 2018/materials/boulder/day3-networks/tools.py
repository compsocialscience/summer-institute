import networkx as nx

def build_graph_from_adjacency(inadjacency):
    """
    Takes an adjacency_list like: "23 41 18" or 18 times  "23 41 1"   (edge from 23 --> 41)
    possibly having multiple edges and build a graph with no multiple edges but weigths representing how many of them there are
    Necessary in case of using algorithms that do not accept MultiGraphs. E.g. eigenvector centrality.    
    """
    
    adjacency_list=open(inadjacency,'r')
    edges={}
    for row in adjacency_list:
        a=row.split()
        e=(a[0],a[1])
        w=int(a[2])
        if(e not in edges):edges[e]=w
        else:edges[e]+=w
    G=nx.DiGraph()
    for e in edges: G.add_edge(e[0],e[1],weight=edges[e])
    adjacency_list.close()

    return G


def shift_rank(ranks):
    '''
    Shifts all scores so that the minimum is in zero and the others are all positive
    '''
    min_r=min(ranks)
    N=len(ranks)
    for i in range(N): ranks[i]=ranks[i]-min_r
    return ranks    