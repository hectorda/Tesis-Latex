X = dlmread("Set1.csv",",",13,0);

t = X(:,1); % primera columna del tiempo
x = X(:,2); % segunda columna de los datos de la señal
lt = length(t); % largo del vector tiempo
lx = length(x); % largo del vector de datos

% aqui jugando con los rangos
subplot(3,1,1);
plot(t,x), axis('tight'), grid('on'), title('Completa');

subplot(3,1,2);
plot(t(1:1000),x(1:1000)), axis('tight'), grid('on'), title('1000 puntos al Inicio');

subplot(3,1,3);
plot(t(lt-1000:lt-1),x(lt-1000:lt-1)), axis('tight'), grid('on'), title('1000 puntos al final');