[tiempo,AX,AY,AkX,AkY,AcX,AcY] = textread ('3Algoritmos.txt', "%f %f %f %f %f %f %f");
figure(1)
plot(tiempo,AX,'r',tiempo,AcX,'g',tiempo,AkX,'k')
title("Angulo X Acelerometro vs Angulo F. Completementario vs Angulo F. Kalman")
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Acelerometro','Angulo Filtro Completementario','Angulo Filtro Kalman')

figure(2)
plot(tiempo,AY,'r',tiempo,AcY,'g',tiempo,AkY,'k')
title("Angulo Y Acelerometro vs Angulo F. Completementario vs Angulo F. Kalman")
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Acelerometro','Angulo Filtro Completementario','Angulo Filtro Kalman')