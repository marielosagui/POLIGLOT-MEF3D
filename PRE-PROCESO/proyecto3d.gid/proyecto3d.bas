*GenData(1) *GenData(2) *GenData(3) *GenData(4)
*Set Cond Dirichlet_x *nodes
*set var NDX=CondNumEntities(int)
*Set Cond Dirichlet_y *nodes
*set var NDY=CondNumEntities(int)
*Set Cond Dirichlet_z *nodes
*set var NDZ=CondNumEntities(int)
*Set Cond Neumann *nodes
*set var NN=CondNumEntities(int)
*npoin *nelem *NDX *NDY *NDZ *NN

Coordinates
*set elems(all)
*loop nodes
*NodesNum *NodesCoord(1,real) *NodesCoord(2,real) *NodesCoord(3,real)
*end nodes
EndCoordinates

Elements
*loop elems
*ElemsNum *ElemsConec
*end elems
EndElements

Dirichlet_x
*Set Cond Dirichlet_x *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(T,real)
*end nodes
EndDirichlet_x

Dirichlet_y
*Set Cond Dirichlet_y *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(T,real)
*end nodes
EndDirichlet_y

Dirichlet_z
*Set Cond Dirichlet_z *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(T,real)
*end nodes
EndDirichlet_z

Neumann
*Set Cond Neumann *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(dTdn,real)
*end nodes
EndNeuman