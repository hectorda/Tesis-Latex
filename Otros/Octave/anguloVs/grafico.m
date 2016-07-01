[tiempo,AcX,AcY] = textread ('FiltroCom.txt', "%f %f %f ");
[tiempo,AX,AY] = textread ('SinFiltro.txt', "%f %f %f ");
figure(1)
plot(tiempo,AcX,'r',tiempo,AX,'g')
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Filtro Completementario','Angulo Acelerometro')
figure(2)

plot(tiempo,AcY,'r',tiempo,AY,'g')
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Filtro Completementario','Angulo Acelerometro')