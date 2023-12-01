from collections import defaultdict,deque
class graph:
    def __init__(self):
        self.graph=defaultdict(list)
    def add(self,u,v):
        self.graph[u].append(v)
        self.graph[v].append(u)
    def bfs(self,start):
        visited=set()
        queue=deque([start])
        result=[]
        while queue:
            cur=queue.popleft()
            if cur not in visited:
                result.append(cur)
                visited.add(cur)
                queue.extend(self.graph[cur])
        return result
if __name__=="__main__":
    g=graph()
    g.add(0,1)
    g.add(0,2)
    g.add(1,3)
    g.add(1,5)
    start_node=0
    print(f"bfs{start_node}:{g.bfs(start_node)}")
        
