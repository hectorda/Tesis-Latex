[tiempo,AkX,AkY] = textread ('angulos.txt', "%f %f %f");
fs=200;
figure(1)

plot(tiempo,AkY)

media1=mean(AkY(1*fs:4*fs))
media2=mean(AkY(7*fs:11*fs))
media3=mean(AkY(13*fs:16*fs))
media4=mean(AkY(18*fs:22*fs))
media5=mean(AkY(24*fs:29*fs))
media6=mean(AkY(31*fs:35*fs))
media7=mean(AkY(39*fs:42*fs))