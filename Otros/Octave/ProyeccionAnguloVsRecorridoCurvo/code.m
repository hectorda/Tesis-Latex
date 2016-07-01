close all
clear all
angulo=0:1.1:25; % en grados
radio=100; % en cm y representa la altura del centro de masa
displaz=radio*sin(angulo*pi/180); % desplazamiento en el plano , proyeccion
displazR=2*pi*radio*angulo/360; % desplazamiento sobre la curva 
dif=displazR-displaz; % diferencia, que aumenta a medida que aumenta el angulo
plot(angulo,displaz),hold on,plot(angulo,displazR)
xlabel('angulo'), ylabel('distancia')
legend('Plano', 'Curva')
figure, plot(angulo,dif)
title('diferencia distancia recorrido curvo-distancia proyeccion'), xlabel('angulo'), ylabel('distancia (dr-dp)')