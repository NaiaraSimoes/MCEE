clear; clc; close all;

% introdução dos dados necessãrios para a realização do método
% define a equação

[f, e] = equacao();
clc;
fprintf('Método das Secantes: f(x) = %s\n', e);

% Definir pontos de partida
x1 = input('Insira o primeiro ponto de partida: \n');
if isempty(x1)
    x1 = 0;
end
loop = 1;
while loop == 1
    x2 = input('Insira o segundo ponto de partida: \n');
    if isempty(x2)
    x1 = 0;
    end
    if x2~=x1
        loop = 0;
    else
        fprintf('O segundo ponto de partida deve ser diferente do primeiro.\n');
    end
end

% define tolerancia
[n,tol] = tolerancia();
clc;
fprintf('MÉTODO DAS SECANTES: f(x) = %s\n', e);
fprintf('Posições iniciais: %.2f | %.2f\n', x1, x2);
fprintf('Número máximo de repetições: %d\n', n);
fprintf('Distância mínima aceita: %.4f\n', tol);

m = '0';
[xx, fx] = secante(f, x1, x2, n, tol);


% gráfico:
x = linspace(-max(abs(xx)), max(abs(xx)), 1000);
plot(x,f(x));grid on; hold on;
title('f(x) = ');
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');


% voltar ao menu
if min(fx) <= tol && max(fx) > 0 %se o menor resultado for negativo e o maior
                              %positivo, então há um valor nulo pra equação
    while m ~= '1'
        clc;
        fprintf('MÉTODO DAS SECANTES: f(x) = %s\n', e);
        tabela(f, xx, length(xx));
        for r = 1:3
            animation(fx, xx);
        end
        m = input('PRIMA 1 PARA VOLTAR AO MENU: ', 's');
    end
else
    fprintf('Equação sem solução.\nPressione qualquer tecla para voltar ao menu.\n');
    pause;
end
    
menu