t = 0;
while t == 0
    clc;
    disp('**********************************************************');
    disp('************** Miniprojeto de MCEE 21/22 *****************');
    disp('********** Resolução numérica de equações ****************');
    disp('**********************************************************');
    fprintf('\n[1] Mét das bisecções\n[2] Mét. Newton-Raphson\n[3] Mét. Secantes\n[s] Sair');
    n = input('\nEscolha sua opção: ', 's');
    if (n == '1' || n == '2' || n == '3' || n == 's')
        t = 1;
    end

end

if n == '1'
    bisection;
elseif n == '2'
        newton;
elseif n == '3'
        secantes;
else
    clear all;
    clc;

end