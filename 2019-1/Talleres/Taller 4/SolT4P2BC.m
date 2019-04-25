
clear

A=[2 0 1 0 1;1/2 0 0 1 3/2;1/2 1 0 0 -1/2];
b=[18;17;1]';
c=[1/2 0 0 0 1/2];
lb=[0 0 0 0 0];
ub=[];
ctype='SSS';
vtype='CCCCC';
param.msglev=2;
glpk(c, A, b, lb, ub,ctype,vtype,s=-1,param)

clear

A=[3 2;2 3;1 2];
b=[20;20;2];
c=[1 1];
lb=[0 0];
ub=[];
ctype='UUL';
vtype='CC';
param.msglev=2;
glpk(c, A, b, lb, ub,ctype,vtype,s=-1,param)
