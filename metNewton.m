clear; clc; close all;

% introdução dos dados necessãrios para a realização do método

% define a equação
[f, e] = equacao();

% define o ponto de partida
clc;
fprintf('Método de Newton-Raphson: f(x) = %s\n', e);
x = input('Insira a posição inicial: ');
if isempty(x)
    x = 0;
end

% define tolerancia
clc;
[n,tol] = tolerancia();

clc;
fprintf('MÉTODO DE NEWTON-RAPHSON: f(x) = %s\n', e);
fprintf('Posição inicial: %.2f\n', x);

% utiliza o metodo 
[v, k, fx] = newton(f,x, n, tol);

% animação e tabela:
if min(fx) < 0 && max(fx) > 0 %se o menor resultado for negativo e o maior 
                              %positivo, então há um valor nulo pra equação
    animacao(f,x,v,e,k);
    tabela(f,v,k);
else
    fprintf('Equação sem solução.\nPressione qualquer tecla para voltar ao menu.\n');
    pause;
end
menu


