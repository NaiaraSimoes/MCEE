function [n,d] = tolerancia()
tol = input('Deseja inserir manualmente as tolerâncias?\nAperte S para SIM: ', 's');
n = 0; d = 0; 

if tol == 's' || tol == 'S'
    while n <=0
        clc;
        n = input('Digite o número de vezes que pretende analisar(min. 1): ');
        if isempty(n)
            n = 0;
        end
        
    end

    while d <= 0 || d >= 1 
        clc;
        d = input('Digite a menor distância entre dois pontos entre 0 e 1: ');
        if isempty(d)
            d = 0;
        end
    end

else
    n = 20; d = 1e-4;
end
return 