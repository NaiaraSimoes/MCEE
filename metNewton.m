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
[n,tol] = tolerancia();
clc;

fprintf('MÉTODO DE NEWTON-RAPHSON: f(x) = %s\n', e);
fprintf('Posição inicial: %.2f\n', x1);

% utiliza o metodo 
[v, k] = newton(f,x1, n, tol,e);

% imprime a tabela no ecrã
tabela(f,v,k)

% voltar ao menu
m = '0';
while m == '0'
    m = input('Aperte 1 para VOLTAR AO MENU: ','s');
    if m == '1'
        break
    end

    [k, c] = newton(f,x1, n, tol,e);
    m = '0';
    
end
menu



