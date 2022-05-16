clear; clc;

% introdução dos dados necessãrios para a realização do método

% define a equação
[f, e] = equacao();

% define o ponto de partida
clc;
fprintf('Método de Newton-Raphson: f(x) = %s\n', e);
x1 = input('Insira a posição inicial: ');

% define tolerancia
[n,tol] = tolerancia();
clc;
fprintf('MÉTODO DE NEWTON-RAPHSON: f(x) = %s\n', e);
fprintf('Posição inicial: %.2f\n', x1);
fprintf('Número máximo de repetições: %d\n', n);
fprintf('Distância mínima aceita: %.4f\n', tol);
j = 1; m = '0';

% voltar ao menu 
while m ~= '1'
    for r = 1:3
        [xx, fx]=newton(f,x1, n, tol);
        while j == 1
            clc;
            fprintf('MÉTODO DE NEWTON-RAPHSON: f(x) = %s\n', e);
            fprintf('\n   Interação            x              f(x)');
            fprintf('\n--------------------------------------------------\n')
            for l = 1:length(xx)
                fprintf(' %dº interação:     %.6f   %.6f \n',l,xx(l), f(xx(l)));
            end
            j = 0;
        end
    end
    m = input('PRIMA 1 PARA VOLTAR AO MENU: ', 's');
    if m ~= '1' 
        clc; j = 1;
    else
        menu
    end
end


