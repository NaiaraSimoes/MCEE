function tabela(f,v,k)
clc;
fprintf('\n   Interação     Valor Calculado  Distância da raiz ');
fprintf('\n-----------------------------------------------------\n');
for i = 1:k
    % é utilizado if e else apenas para criar um padrão na tabela
    
    if i < 10
        if f(v(i)) >= 0
            fprintf(' %dº interação:       %.6f          %.6f\n', i, v(i),f(v(i)));
        else
            fprintf(' %dº interação:       %.6f         %.6f\n', i, v(i),f(v(i)));
        end
        
    else
        if f(v(i)) >= 0
            fprintf('%dº interação:       %.6f          %.6f\n', i, v(i),f(v(i)));
        else
            fprintf('%dº interação:       %.6f         %.6f\n', i, v(i),f(v(i)));
        end

    end
end