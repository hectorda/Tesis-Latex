DispositivoAP=decimate(AP_Proy,2)-traAPPro;
DispositivoAPRe=decimate(AP_ReCur,2)-traAPReCurv;
KistlerAP=AP_Plat-traAPPlat;

DispositivoML=decimate(ML_Proy,2)-traMLPro;
DispositivoMLReCur=decimate(ML_ReCur,2)-traMLReCurv;
KistlerML=ML_Plat-traMLPlat;

correlacionAP=corr(DispositivoAP,KistlerAP)
correlacionML=corr(DispositivoML,KistlerML)

valorMedioDiferenciaAP=mean(KistlerAP-DispositivoAP)
valorMedioDiferenciaML=mean(KistlerML-DispositivoML)

[minDiferenciaAP,indice]=min(abs(KistlerAP-DispositivoAP))
[minDiferenciaML,indice]=min(abs(KistlerML-DispositivoML))

[maxDiferenciaAP,indice]=max(abs(KistlerAP-DispositivoAP))
[maxDiferenciaML,indice]=max(abs(KistlerML-DispositivoML))

diferenciaPromedioAP=sum(abs(KistlerAP-DispositivoAP))/length(KistlerAP)

procentajeSemejanzaAP=(sum(round((KistlerAP-DispositivoAP))==0)/length(KistlerAP))*100
procentajeSemejanzaML=(sum(round((KistlerML-DispositivoML))==0)/length(KistlerAP))*100
