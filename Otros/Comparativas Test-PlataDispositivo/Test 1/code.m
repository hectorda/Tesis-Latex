Plataforma=dlmread('Antero_post.txt');
[tiempo,PAP,PML] = textread ('Antero_post.txt', "%f %f %f ");
[a,tiempo2,a,AYp,a,AXp] = textread ('DesProy.txt', "%s %f %s %f %s %f ");
[a,t3,a,AYr,a,AXr] = textread ('desReCu.txt', "%s %f %s %f %s %f ");

figure(1)

%tiempoP=Plataforma(:,1); %TIEMPO DE LA PLATAFORMA
%AnteroPostP=Plataforma(:,2);
%tiempo-=10;
plot(tiempo-10,PAP,'r',tiempo2-13.2,AXp,'g');
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(2)
plot(tiempo,PML,'r',tiempo2-13.2,AYp,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(3)
plot(tiempo,PAP,'r',t3-13.2,AXr,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')

figure(4)
plot(tiempo,PML,'r',t3-13.2,AYr,'g')
%ylabel("Angulos (grados)")
%xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')