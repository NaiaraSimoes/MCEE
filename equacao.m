function [f,s2] = equacao()
clc;

s1 = '@(x)';
b = '0';
while b == '0'
    s2 = input('Introduza a equação: f(x) = ', 's');
    
    fprintf('A equacão está correta? f(x) = %s ',s2);
    b = input('[S/N]: ', 's');

    if b == 's'
        e = strcat(s1,s2);
        f = str2func(e);
    elseif b == 'S'
        e = strcat(s1,s2);
        f = str2func(e);       
    else
        clc;
        b = '0';
    end
end
