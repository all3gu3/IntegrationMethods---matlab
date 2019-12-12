%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Easy way to try the functions %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
r1 = integracionSimpson(str2sym('x^3'),0,1,10);
fprintf('Valor de la integral 1 con metodo de Simpson  : %6.4f\n',t1)
r2 = integracionRomberg(str2sym('x^3'),0,1,5);
fprintf('Valor de la integral 1 con metodo de Romberg: %6.4f\n',r1)
r3 = integracionRectangulo(str2sym('x^3'),0,1,100);
fprintf('Valor de la integral 1 con metodo de Simpson  : %6.4f\n',t1)
r4 = integracionTrapecio(str2sym('x^3'),0,1,100);
fprintf('Valor de la integral 1 con metodo de Romberg: %6.4f\n',r1)
