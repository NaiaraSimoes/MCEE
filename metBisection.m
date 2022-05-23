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
title('f(x) = ');
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');


% voltar ao menu
m = '0';
while m ~= '1'
    clc;
    fprintf('Método das bisecções: f(x) = %s\n', e);
    tabela(f, xx, length(xx));
    for r = 1:3
        animation(fx, xx);
    end
    m = input('PRIMA 1 PARA VOLTAR AO MENU: ', 's');
end
menu