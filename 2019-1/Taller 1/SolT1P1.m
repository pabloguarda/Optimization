
clear % eliminamos todas las variables creadas previamente en Octave/Matlab

function x2 = floresA(x1)

    x2 = 90-2*x1;
    
end

function x2 = floresB(x1)

    x2 = 50-x1;
    
end

function x2 = floresC(x1)

    x2 = 40-(1/3)*x1;
    
end

x1 = linspace(1,150); %Rango de valores de input de las funciones

plot(x1,floresA(x1),'b') %color azul para disponibilidad de flores A
hold on
plot(x1,floresB(x1),'k') %color negro para disponibilidad de flores B
hold on
plot(x1,floresC(x1),'g') %color verde para disponibilidad de flores C
title ('Restricciones asociadas a la disponibilidad de flores')
xlabel ('Numero de arreglos florales F1 (x1)')
ylabel ('Numero de arreglos florales F2 (x2)')
ylim([0 100])
xlim([0 150])
legend('Flores A','Flores B', 'Flores C')
hold off

v1 =  [0,0]

v2 = (inv([1 3;1 0])*[120;0])' % O simplemente: v2 = [0,floresC(x1 = 0)]

v3 = (inv([1 1;1 3])*[50;120])' % Interseccion restricciones flores B y C

v4 = (inv([2 1;1 1])*[90;50])' % Interseccion restricciones flores A y B

v5 = (inv([2 1;0 1])*[90;0])'

v = [v1;v2;v3;v4;v5]

v(:,1)

v(:,2)

x1 = linspace(1,150); %Rango de valores de input para las funciones

plot(x1,floresA(x1),'b') %color azul para disponibilidad de flores A
hold on
plot(x1,floresB(x1),'k') %color negro para disponibilidad de flores B
hold on
plot(x1,floresC(x1),'g') %color verde para disponibilidad de flores C
fill(v(:,1),v(:,2),'r')
title ('Region factible definida por la disponibilidad de flores y no negatividad de variables de decision')
xlabel ('Numero de arreglos florales F1 (x1)')
ylabel ('Numero de arreglos florales F2 (x2)')
ylim([0 100])
xlim([0 150])
legend('Flores A','Flores B', 'Flores C','Region Factible')
hold off

function x2 = curvadenivel(z,x1)

    x2 = z/6000-2/3*x1;
    
end

x1 = linspace(1,150); %Rango de valores de input para las funciones

fill(v(:,1),v(:,2),'r')
hold on
plot(x1,curvadenivel(100000,x1),'-.k')
hold on
plot(x1,curvadenivel(200000,x1),'--k')
hold on
plot(x1,curvadenivel(270000,x1),'-k')
hold on
title ('Curvas de nivel de la funcion objetivo')
xlabel ('Numero de arreglos florales F1 (x1)')
ylabel ('Numero de arreglos florales F2 (x2)')
ylim([0 100]);
xlim([0 150]);
legend('Region Factible','z = 100M$','z = 200M$', 'z = 270M$')
hold off
