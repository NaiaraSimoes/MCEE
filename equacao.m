function [f,s2] = equacao()
clc;

s1 = '@(x)';
s2 = input('Introduza a equação: f(x) = ', 's');
fprintf('A equacão está correta? f(x) = %s ',s2);

b = input('[S/N]: ', 's');
if b == 's' || b == 'S'
    e = strcat(s1,s2);
    f = str2func(e);
    return
else
    clc;
    f = equacao();
end
