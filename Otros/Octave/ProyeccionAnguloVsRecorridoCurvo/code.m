close all
clear all
angulo=0:10:90; % en grados
radio=100; % en cm y representa la altura del centro de masa
displaz=radio*sin(angulo*pi/180); % desplazamiento en el plano , proyeccion
displazR=2*pi*radio*angulo/360; % desplazamiento sobre la curva 
dif=displazR-displaz; % diferencia, que aumenta a medida que aumenta el angulo
plot(angulo,displaz),hold on,plot(angulo,displazR)
xlabel('angulo'), ylabel('distancia')
legend('Plano', 'Curva')
figure, plot(angulo,dif)
title('Diferencia distancia recorrido curvo-distancia proyeccion'), xlabel('Angulo (grados)'), ylabel('Distancia (metros)')
