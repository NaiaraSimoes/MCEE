clear; clc; close all;

% introdução dos dados necessãrios para a realização do método

% define a equação
[f, e] = equacao();

% define o ponto de partida
clc;
fprintf('Método de Newton-Raphson: f(x) = %s\n', e);
x1 = input('Insira a posição inicial: ');
if isempty(x1)
    x1 = 0;
end

% define tolerancia
clc;
[n,tol] = tolerancia();

clc;
fprintf('MÉTODO DE NEWTON-RAPHSON: f(x) = %s\n', e);
fprintf('Posição inicial: %.2f\n', x1);

% utiliza o metodo 
[xx,fx] = newton(f,x1, n, tol);

% gráfico:
x = linspace(-max(abs(xx)), max(abs(xx)), 1000);
plot(x,f(x));grid on; hold on;
title('f(x) = ');
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');


% voltar ao menu
m = '0';
while m ~= '1'
    clc;
    fprintf('MÉTODO DAS SECANTES: f(x) = %s\n', e);
    tabela(f, xx, length(xx));
    for r = 1:3
        animation(fx, xx);
    end
    m = input('PRIMA 1 PARA VOLTAR AO MENU: ', 's');
end
menu
