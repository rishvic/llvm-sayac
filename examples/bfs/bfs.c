//BFS algorithm , adjacency matrix representation of graph 

// This struct represents a directed graph using
// adjacency list representation
struct Graph {
	int V;
	int adj[5][5];
} ;

// function to add an edge to graph
void addEdge(struct Graph* g, int v, int w)
{
	g->adj[v][w] = 1;
}

// Prints BFS traversal from a given source s
void BFS(struct Graph* g, int s, int bfs_order[])
{
	// Mark all the vertices as not visited
	int visited[5];
	for (int i = 0; i < g->V; i++) {
		visited[i] = 0;
	}

	// Create a queue for BFS
	int queue[5];
	int front = 0, rear = 0;

	// Mark the current node as visited and enqueue it
	visited[s] = 1;
	queue[rear++] = s;

	int idx = 0;

	while (front != rear) {
		// Dequeue a vertex from queue and store it in array
		s = queue[front++];
		bfs_order[idx] = s;
		idx++; 

		// Get all adjacent vertices of the dequeued
		// vertex s. If a adjacent has not been visited,
		// then mark it visited and enqueue it
		for (int adjacent = 0; adjacent < g->V;
			adjacent++) {
			if (g->adj[s][adjacent] && !visited[adjacent]) {
				visited[adjacent] = 1;
				queue[rear++] = adjacent;
			}
		}
	}
}

// Driver code
int main()
{
	// Create a graph
	struct Graph g ;
    g.V = 5;
	addEdge(&g, 0, 1);
	addEdge(&g, 0, 2);
	addEdge(&g, 1, 2);
	addEdge(&g, 2, 0);
	addEdge(&g, 2, 4);
	addEdge(&g, 3, 3);

	int bfs_order[5];
	
	BFS(&g, 2, bfs_order);

	return 0;
}
