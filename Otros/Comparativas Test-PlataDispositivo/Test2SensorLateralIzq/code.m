Plataforma=dlmread('Antero_PosteriorPlataforma.txt');
DispositivoProyeccion=dlmread('DesProy.txt');
DispositivoRecorridoCurvo=dlmread('DesReCu.txt');

frecuenciaPlataforma=100;
frecuenciaDispositivo=200;

muestrasPlataforma=length(Plataforma(:,1));
muestrasDispositivo=length(DispositivoRecorridoCurvo(:,2));

tiempoInicioPlat=5.2;
tiempoInicioDisp=26.9;

tiempoMedicion=40-tiempoInicioPlat;

inicioTDis=tiempoInicioDisp*frecuenciaDispositivo+1;
finTDis=tiempoInicioDisp*frecuenciaDispositivo+tiempoMedicion*frecuenciaDispositivo;

tiempoPlat=Plataforma(1:muestrasPlataforma-(tiempoInicioPlat*frecuenciaPlataforma),1); %TIEMPO DE LA PLATAFORMA
AP_Plat=Plataforma(tiempoInicioPlat*frecuenciaPlataforma+1:end,2);
ML_Plat=Plataforma(tiempoInicioPlat*frecuenciaPlataforma+1:end,3);

tiempoDispositivo=DispositivoProyeccion(1:frecuenciaDispositivo*tiempoMedicion,2);
AP_Proy=DispositivoProyeccion(inicioTDis : finTDis,6);
ML_Proy=DispositivoProyeccion(inicioTDis : finTDis,4);
AP_ReCur=DispositivoRecorridoCurvo(inicioTDis:finTDis,6);
ML_ReCur=DispositivoRecorridoCurvo(inicioTDis:finTDis,4);

%Translaciones AP y ML 
traAP=-27;
traML=+4.9;

figure(1)
plot(tiempoPlat,AP_Plat,'r',tiempoDispositivo,AP_Proy+traAP,'g')
ylabel("Desplazamiento COP(centimetros)")
xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(2)
plot(tiempoPlat,ML_Plat,'r',tiempoDispositivo,ML_Proy+traML,'g');
ylabel("Desplazamiento COP(centimetros)")
xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo Proyeccion')

figure(3);
plot(tiempoPlat,AP_Plat,'r',tiempoDispositivo,AP_ReCur+traAP,'g');
ylabel("Desplazamiento COP(centimetros)")
xlabel("Tiempo (seg)")
title('Antero-Posterior')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')

figure(4);
plot(tiempoPlat,ML_Plat,'r',tiempoDispositivo,ML_ReCur+traML,'g')
ylabel("Desplazamiento COP(centimetros)")
xlabel("Tiempo (seg)")
title('Medio-Lateral')
legend('Plataforma Kirstler','Dispositivo RecorridoCurvo')