function r= integracionRomberg(func,a,b,n)
    %integra por el método de romberg
    r=zeros(n);
    h=(b-a)./(2.^(0:n-1));
    r(1,1)=(b-a)*(subs(func,a)+subs(func,b))/2;
    for j=2:n
        subtotal=0;
        for i=1:2^(j-2)
            subtotal=subtotal+subs(func,a+(2*i-1)*h(j));
        end
        r(j,1)=r(j-1,1)/2+h(j)*subtotal;
        for k=2:j
            r(j,k)=(4^(k-1)*r(j,k-1)-r(j-1,k-1))/(4^(k-1)-1);
            
        end
    end
    %outArg1 = inArg1;
    %outArg2 = inArg2;
end