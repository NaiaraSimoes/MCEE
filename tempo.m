function [a,b] = tempo()
a = input('\nInsira o instante inicial: ');

b = a;
while b <= a 
    b = input('Insira o instante final: ');
end
