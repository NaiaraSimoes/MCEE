function tabela(fx,xx)
fprintf('\n   Interação     Valor Calculado  Distância da raiz ');
fprintf('\n-----------------------------------------------------\n');
for i = 1:length(xx)
    
    % é utilizado if e else apenas para criar um padrão na tabela    
    if i < 10
        if fx(i) >= 0
            fprintf(' %dº interação:       %.6f          %.6f\n', i, xx(i),fx(i));
        else
            fprintf(' %dº interação:       %.6f         %.6f\n', i, xx(i),fx(i));
        end
        
    else
        if fx(i) >= 0
            fprintf('%dº interação:       %.6f          %.6f\n', i, xx(i),fx(i));
        else
            fprintf('%dº interação:       %.6f         %.6f\n', i, xx(i),fx(i));
        end

    end
end
