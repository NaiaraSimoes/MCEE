clear; clc; close all;

% introdução dos dados necessãrios para a realização do método
% define a equação

[f, e] = equacao();
clc;
fprintf('Método das Secantes: f(x) = %s\n', e);

% Definir pontos de partida
x1 = input('Insira o primeiro ponto de partida: \n');
loop = 1;
while loop == 1
    x2 = input('Insira o segundo ponto de partida: \n');
    if x2~=x1
        loop = 0;
    else
        fprint('O segundo ponto de partida deve ser diferente do primeiro.\n');
    end
end

% define tolerancia
[n,tol] = tolerancia();
clc;
fprintf('MÉTODO DAS SECANTES: f(x) = %s\n', e);
fprintf('Posições iniciais: %.2f | %.2f\n', x1, x2);
fprintf('Número máximo de repetições: %d\n', n);
fprintf('Distância mínima aceita: %.4f\n', tol);

j = 1; m = '0';
[xx, fx] = secante(f, x1, x2, n, tol);


% gráfico:
x = linspace(-max(abs(xx)), max(abs(xx)), 1000);
t_pausa = 0.25;
plot(x,f(x));grid on; hold on;
title('f(x) = ');
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');


% voltar ao menu
while m ~= '1'
    for r = 1:3
        for count = 1:length(xx)
            % animação:
            if count<length(xx)
                p1(count) = plot(xx(count), fx(count), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
                pause(t_pausa);
                p2 = plot(xx(count), 0, 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,0)
                pause(t_pausa);
                p3 = plot ([xx(count), xx(count)],[fx(count),0], 'm:','LineWidth',1); % linha vertical
                pause(t_pausa);
                d = plot ([xx(count+1), xx(count)],[0,fx(count)], 'r--','LineWidth',1); % linha diagonal
                pause(t_pausa);
                delete(p2); delete(p3); delete(d);
            end
        end
        while j == 1
            clc;
            fprintf('MÉTODO DAS SECANTES: f(x) = %s\n', e);
            fprintf('\n   Interação            x              f(x)');
            fprintf('\n--------------------------------------------------\n')
            for k = 1:length(xx)
                fprintf(' %dº interação:     %.6f   %.6f \n',k,xx(k), fx(k));
            end
            j = 0;
        end
    end
    m = input('PRIMA 1 PARA VOLTAR AO MENU: ', 's');
    if m ~= '1'
        clc; j = 1;
        
    end
end
menu