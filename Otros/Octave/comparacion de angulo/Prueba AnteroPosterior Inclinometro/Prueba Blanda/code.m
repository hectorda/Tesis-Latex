clear all;
[tiempo,AkX,AkY] = textread ('angulos.txt', "%f %f %f");
fs=200;
figure(1)
t1=1.005:1/fs:4;
x1(1:(4-1)*fs) = 1;
t2=5.005:1/fs:9;
x2(1:(9-5)*fs) = 3;
t3=11.005:1/fs:13;
x3(1:(13-11)*fs) = 5;
t4=15.005:1/fs:18;
x4(1:(18-15)*fs) = 7;
t5=19.005:1/fs:22;
x5(1:(22-19)*fs) = 5;
t6=23.005:1/fs:26;
x6(1:(26-23)*fs) = 3;
t7=28.005:1/fs:31;
x7(1:(31-28)*fs) = 1;

plot(tiempo,AkY, t1,x1,'r',t2,x2,'r',t3,x3,'r',t4,x4,'r',t5,x5,'r',t6,x6,'r',t7,x7,'r')
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Dispositivo','Angulo Inclinometro Analogico')
media1=mean(AkY(1*fs:4*fs))
media2=mean(AkY(5*fs:9*fs))
media3=mean(AkY(11*fs:13*fs))
media4=mean(AkY(15*fs:18*fs))
media4=mean(AkY(19*fs:22*fs))
media5=mean(AkY(23*fs:26*fs))
media6=mean(AkY(28*fs:31*fs))