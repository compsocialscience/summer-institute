import networkx as nx
import numpy as np
import scipy.sparse
import scipy.sparse.linalg

def SpringRank(A,alpha=0.,l0=1.0,l1=1.0):
    """
    Main routine to calculate SpringRank by solving linear system
    Default parameters are initialized as in the standard SpringRank model
    
    INPUT:

        A=network adjacency matrix (can be weighted)
        alpha: controls the impact of the regularization term
        l0: regularization spring's rest length
        l1: interaction springs' rest length

    OUTPUT:
        
        rank: N-dim array, indeces represent the nodes' indices used in ordering the matrix A

    """
    N=A.shape[0]
    k_in=np.sum(A,0)
    k_out=np.sum(A,1)
    One=np.ones(N)

    C= A+A.T
    D1 = np.zeros(A.shape)
    D2 = np.zeros(A.shape)

    for i in range(A.shape[0]):
        D1[i,i]=k_out[i,0]+k_in[0,i]
        D2[i,i]=l1*(k_out[i,0]-k_in[0,i])

    if alpha!=0.: 
        print('Using alpha!=0: matrix is invertible')

        B=One*alpha*l0+np.dot(D2,One)
        A=alpha*np.eye(N)+D1-C
        A=scipy.sparse.csr_matrix(np.matrix(A))

        try:
            print('Trying scipy.sparse.linalg.spsolve(A,B)')
            rank = scipy.sparse.linalg.spsolve(A,B)
            # rank=np.linalg.solve(A,B)
            return np.transpose(rank)
        except: 
            print('Switched to scipy.sparse.linalg.bicgstab(A,B)[0]')
            rank=scipy.sparse.linalg.bicgstab(A,B)[0]
            return np.transpose(rank)

    else:    
        print('Using faster computation: fixing a rank degree of freedom')
        
        C= C+np.repeat(A[N-1,:][None],N,axis=0)+np.repeat(A[:,N-1].T[None],N,axis=0)
        D3 = np.zeros(A.shape)
        for i in range(A.shape[0]):D3[i,i]=l1*(k_out[N-1,0]-k_in[0,N-1])

        B=np.dot(D2,One)+np.dot(D3,One)
        # A=D1-C
        A=scipy.sparse.csr_matrix(np.matrix(D1-C))
        try:
            linalg.cond(x) < 1/sys.float_info.epsilon
            print('Trying scipy.sparse.linalg.spsolve')
            rank = scipy.sparse.linalg.spsolve(A,B)
            # rank=np.linalg.solve(A,B)   # cannot use it with sparse matrices
            print(rank)
            return np.transpose(rank)
        except: 
            print('Switched to scipy.sparse.linalg.bicgstab(A,B)[0]')
            rank=scipy.sparse.linalg.bicgstab(A,B)[0]
            # rank=np.linalg.lstsq(A,B)[0]
            return np.transpose(rank)


       
def SpringRank_planted_network(N,beta,alpha,K,prng,l0=0.5,l1=1.):
    '''

    Uses the SpringRank generative model to build a directed, possibly weigthed and having self-loops, network.
    Can be used to generate benchmarks for hierarchical networks

    Steps:
        1. Generates the scores (default is factorized Gaussian)
        2. Extracts A_ij entries (network edges) from Poisson distribution with average related to SpringRank energy

    INPUT:

        N=# of nodes
        beta= inverse temperature, controls noise
        alpha=controls prior's variance
        K=E/N  --> average degree, controls sparsity
        l0=prior spring's rest length 
        l1=interaction spring's rest lenght

    OUTPUT:
        G: nx.DiGraph()         Directed (possibly weighted graph, there can be self-loops)
        
    '''
    G=nx.DiGraph()

    scores=prng.normal(l0,1./np.sqrt(alpha*beta),N)  # planted scores ---> uses factorized Gaussian
    for i in range(N):G.add_node(i,score=scores[i])

    #  ---- Fixing sparsity i.e. the average degree  ---- 
    Z=0.
    for i in range(N):
        for j in range(N):  
            Z+=np.exp(-0.5*beta*np.power(scores[i]-scores[j]-l1,2))
    c=float(K*N)/Z        
    #  --------------------------------------------------

    # ----  Building the graph   ------------------------ 
    for i in range(N):
        for j in range(N):

            H_ij=0.5*np.power((scores[i]-scores[j]-l1),2)
            lambda_ij=c*np.exp(-beta*H_ij)

            A_ij=prng.poisson(lambda_ij,1)[0]

            if A_ij>0:G.add_edge(i,j,weight=A_ij)

    return G        