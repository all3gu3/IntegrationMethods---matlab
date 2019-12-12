function Integral=integracionRectangulo(Funcion,a,b,num);
    m=(b-a)/num;
    tot=0;
    for i=1:num-1
        x=a+((i-1)*m);
        tot=tot+(m*subs(Funcion,x));
    end
    Integral=tot;
end