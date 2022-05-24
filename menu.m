clear; clc; close all;

disp('**********************************************************');
disp('************** Miniprojeto de MCEE 21/22 *****************');
disp('********** Resolução numérica de equações ****************');
disp('**********************************************************');
fprintf('\n[1] Mét das bisecções\n[2] Mét. Newton-Raphson\n[3] Mét. Secantes\n[s] Sair');

n = input('\nEscolha sua opção: ', 's');
switch n
    case '1'
        metBisection;
    case '2'
        metNewton;
    case '3'
        metSecantes;
    case 's'
        clear; clc;
    case 'S'
        clear; clc;
    otherwise
        menu
end