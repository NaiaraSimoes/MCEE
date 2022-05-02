clear;
clc;

disp('*************** Método das Bisecções *********************');
disp('**********************************************************');

% define a equacao
eq = equacao();


% define o tempo
[a,b] = tempo();

% utiliza o metodo PRECISA FAZER UMA TABELA
%[c,k] = bisection(f,a,b);


% faz a animação


% voltar ao menu
v = input('Aperte 1 para VOLTAR AO MENU: ');
if v == 1
    menu
else 
    clear; clc;
end



