clear all;
[tiempo,AX,AY,AkX,AkY,AcX,AcY] = textread ('3Algoritmos.txt', "%f %f %f %f %f %f %f");
fs=200;
figure(1)
t1=1.005:1/fs:6.7;
x1(1:(5.7*fs)) = 1;
t2=8.005:1/fs:14;
x2(1:((14-8)*fs))=3;
t3=15.005:1/fs:19;
x3(1:((19-15)*fs))=5;
t4=20.005:1/fs:24;
x4(1:((24-20)*fs))=7;
t5=25.005:1/fs:29;
x5(1:((29-25)*fs))=5;

t6=30.005:1/fs:33;
x6(1:((33-30)*fs))=3;
t7=34.505:1/fs:36.5;
x7(1:((36.5-34.5)*fs))=1;
plot(tiempo,AkX, t1,x1,'r' ,t2,x2,'r',t3,x3,'r',t4,x4,'r',t5,x5,'r',t6,x6,'r',t7,x7,'r')
ylabel("Angulos (grados)")
xlabel("Tiempo (seg)")
legend('Angulo Dispositivo','Angulo Inclinometro Analogico')

media1=mean(AkX(1*fs:6.7*fs))
media2=mean(AkX(8*fs:14*fs))
media3=mean(AkX(15*fs:19*fs))
media4=mean(AkX(20*fs:24*fs))
media5=mean(AkX(25*fs:29*fs))
media6=mean(AkX(30*fs:33*fs))
media7=mean(AkX(34.5*fs:36.5*fs))