clear; clc;

% introdução dos dados necessãrios para a realização do método
% define a equação

[f, e] = equacao();
clc;

% define o tempo
fprintf('Método das bisecções: f(x) = %s\n', e);
a = input('Insira o instante inicial: ');

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
fprintf('Tolerância de repetições: %d\n', n);
fprintf('Tolerância de distância: %d\n', tol);

% utiliza o metodo 
bisection(f,a,b,n,tol,e);


% voltar ao menu
v = input('Aperte 1 para VOLTAR AO MENU: ');
if v == 1
    menu
else 
    clear; clc;
end



