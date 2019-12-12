function Integral= integracionSimpson(Funcion,a,b,n);
    %Encuentra el área de la integral definida de la 'Funcion' en el
    %intervalo [a,b], dividiendo en 'num' intervalos/trapecios
    Fa=subs(Funcion,a);%Evalúo la funcion en a
    Fb=subs(Funcion,b);%Evalúo la funcion en b
    h=((b-a)/n);%Guarda la distancia de los intervalos
    arr=[a:h:b];
    P=0;
    I=0;
    for i=1:n-1
        if(mod(i,2)==0)%Es par 
            I=I+(subs(Funcion,arr(i)));
        %end
        else
            P=P+(subs(Funcion,arr(i)));
        %end    
       
    end
    
    Integral = h/3*(Fa+4*I+2*P+Fb);
end