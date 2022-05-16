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

% utiliza o metodo 
bisection(f,a,b,n,tol,e);


% voltar ao menu
m = '0';
while m == '0'
    m = input('Aperte 1 para VOLTAR AO MENU: ','s');
    if m == '1'
        break
    end
    clc;
    fprintf('MÉTODO DAS BISECÇÕES: f(x) = %s\n', e);
    fprintf('Instante inicial: t1 = %ds\n', a);
    fprintf('Instante final: t2 = %ds\n', b);
    bisection(f,a,b,n,tol,e);
    m = '0';
    
end
menu
