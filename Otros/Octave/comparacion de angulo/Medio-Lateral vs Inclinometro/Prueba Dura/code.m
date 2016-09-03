[tiempo,AX,AY,AkX,AkY,AcX,AcY] = textread ('3Algoritmos.txt', "%f %f %f %f %f %f %f");
fs=200;
figure(1)
plot(tiempo,AkX)

media1=mean(AkX(1*fs:8*fs))
media2=mean(AkX(14*fs:20*fs))
media3=mean(AkX(24*fs:28*fs))
media4=mean(AkX(31*fs:34*fs))
media5=mean(AkX(36*fs:41*fs))
media6=mean(AkX(45*fs:49*fs))
media7=mean(AkX(52*fs:56*fs))