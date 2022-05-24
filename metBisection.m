clear; clc; close all;

% introdução dos dados necessãrios para a realização do método

% define a equação
[f, e] = equacao();
clc;

% define o tempo
fprintf('Método das bisecções: f(x) = %s\n', e);
a = input('Insira o instante inicial: ');
if isempty(a)
    a = 0;
end
b = a;
while b <= a
    clc;
    fprintf('Método das bisecções: f(x) = %s\n', e);
    fprintf('Instante inicial: t1 = %ds\n', a);
    b = input('Insira o instante final (t > t1): ');
end


% define tolerancia
clc;
[n,tol] = tolerancia();

clc;
fprintf('MÉTODO DAS BISECÇÕES: f(x) = %s\n', e);
fprintf('Instante inicial: t1 = %ds\n', a);
fprintf('Instante final: t2 = %ds\n', b);

% utiliza o metodo
[xx,fx] = bisection(f,a,b,n,tol);

% gráfico:
x = linspace(-max(abs(xx)), max(abs(xx)), 1000);
plot(x,f(x));grid on; hold on;
title('f(x) = ',e);
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');


% verificacao de solução
if length(xx)<n || (min(fx) <= tol && max(fx) > 0)
    %se o menor sultado for negativo e o maior positivo, então há um valor nulo pra equação

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