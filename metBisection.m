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
[v, k, fx] = bisection(f,a,b,n,tol);

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