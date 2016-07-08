%Plataforma=dlmread('Antero-Posterior-Izq.txt');
[tiempo,PAP,PML] = textread ('Antero-Posterior-Izq.txt', "%f %f %f ");
[a,tiempo2,a,AYp,a,AXp] = textread ('Proyeccion.txt', "%s %f %s %f %s %f ");
[a,t3,a,AYr,a,AXr] = textread ('RecorridoCurvo.txt', "%s %f %s %f %s %f ");

figure(1)
tiempoRP=5;
tiempoRD=26.5;

tiempo-=tiempoRP;
tiempo2-=tiempoRD;
t3-=tiempoRD;

%tiempoP=Plataforma(:,1); %TIEMPO DE LA PLATAFORMA
%AnteroPostP=Plataforma(:,2);
%tiempo-=10;
plot(tiempo,PAP,'r',tiempo2,AXp-28,'g');
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(2)
plot(tiempo,PML,'r',tiempo2,AYp,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(3)
plot(tiempo,PAP,'r',t3,AXr,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')

figure(4)
plot(tiempo,PML,'r',t3,AYr,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')