DispositivoAP=decimate(AP_Proy,2)-traAPPro;
DispositivoAPRe=decimate(AP_ReCur,2)-traAPReCurv;
KistlerAP=AP_Plat-traAPPlat;

DispositivoML=decimate(ML_Proy,2)-traMLPro;
DispositivoMLReCur=decimate(ML_ReCur,2)-traMLReCurv;
KistlerML=ML_Plat-traMLPlat;

correlacionAP=corr(DispositivoAP,KistlerAP)
correlacionML=corr(DispositivoML,KistlerML)

rangoAP =  max(KistlerAP)-min(KistlerAP)
rangoML =  max(KistlerML)-min(KistlerML)

DiferenciaAP=KistlerAP-DispositivoAP;
DiferenciaML=KistlerML-DispositivoML;

ErrorMedioPorcentualAP=(sum(abs(DiferenciaAP))/length(KistlerAP))*(100/rangoAP)
ErrorMedioPorcentualML=(sum(abs(DiferenciaML))/length(KistlerML))*(100/rangoML)

minDiferenciaAP=min(abs(DiferenciaAP))*(100/rangoAP)
minDiferenciaML=min(abs(DiferenciaML))*(100/rangoML)

maxDiferenciaAP=max(abs(DiferenciaAP))*(100/rangoAP)
maxDiferenciaML=max(abs(DiferenciaML))*(100/rangoML)

