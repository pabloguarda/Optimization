
clear

%Vector de costos de función objetivo
c=[0 0 0 0 0 0 0 0 0 0 1 1]
%Matriz de restricciones
A=[1/3000 1/600 1/1000 1 0 0 0 0 0 0 0 0; 40 210 45 0 1 0 0 0 0 0 0 0; 1 0 0 0 0 -1 0 0 0 0 1 0
; 0 1 0 0 0 0 -1 0 0 0 0 1;1 0 0 0 0 0 0 1 0 0 0 0; 0 1 0 0 0 0 0 0 1 0 0 0;0 0 1 0 0 0 0 0 0 1 0 0]
%Vector con lado derecho de restricciones
b=[5;400000;5000;400;10000;1000;2000]
%Límite inferior variables
lb=[0 0 0 0 0 0 0 0 0 0 0 0]
%Límite superior variables
ub=[]
%Tipo de restricciones
ctype='SSSSSSS'
%Tipo de variables
vtype='CCCCCCCCCCCC'
%Opción para el tipo de output del optimizador
param.msglev=2;

#Ejecución del optimizador
glpk(c, A, b, lb, ub,ctype,vtype,s=1,param)

clear

%Vector de costos de función objetivo
c=[4000 6000 10000]  
%Matriz de restricciones
A=[1/3000 1/600 1/1000; 40 210 45;1 0 0;0 1 0;1 0 0;0 1 0;0 0 1] 
%Vector con lado derecho de restricciones
B=[5;400000;5000; 400; 10000;1000;2000]
%Límite inferior variables
lb=[0,0,0]  
%Límite superior variables
ub=[]
%Tipo de restricciones
ctype='UULLUUU'
%Tipo de variables
vartype='CCC'
%Opción para el tipo de output del optimizador
param.msglev=2;

#Ejecución del optimizador
glpk(c=c,A=A,B=B,lb=lb,ub=ub,ctype=ctype,vartype=vartype,s=-1,param=param)
