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
title('f(x) = ',e);
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');

% verificacao de solução 
if length(xx)<n || (min(fx) <= tol && max(fx) > 0) %se o menor resultado for negativo e o maior 
                              %positivo, então há um valor nulo pra equação

    m = '0';
    while m == '0'
        tabela(fx,xx);
        animation(fx, xx,f); 
       
        %volta ao menu
        m = input('Aperte 1 para VOLTAR AO MENU: ','s');
        if m == '1'
            break;
        else
            clc;
            m = '0';
        end
        
    end    
else
    fprintf('Equação sem solução.\nPressione qualquer tecla para voltar ao menu.\n');
    pause;
end
menu