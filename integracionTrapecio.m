function Integral= integracionTrapecio(Funcion,a,b,num);
    %Encuentra el área de la integral definida de la 'Funcion' en el
    %intervalo [a,b], dividiendo en 'num' intervalos/trapecios
    %Se llamará integracionTrapecio(str2sym('4-x^2'),0,2,10);
    F0=subs(Funcion,a);%Evalúo la funcion en a
    Fn=subs(Funcion,b);%Evalúo la funcion en b
    h=((b-a)/num);%Guarda la distancia de los intervalos
    
    Fs=0;%Guarda la sumatoria de la funcion en los puntos xi
    
    for i=1:num-1
        xi=a+(i*h);%El valor de a más la 'suma' de los i's hasta el momento
        Fs=Fs+subs(Funcion,xi);%Suma el f(xi) a 'Fs'. 'Fs' guarda la sumatoria
    end
    
    Integral = (h/2)*(F0+2*Fs+Fn);
end