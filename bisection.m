function bisection(f,a,b,kmax,tol,e)

% tabela:
fprintf('\n   Interação   Valor Calculado ');
fprintf('\n------------------------------------------\n');

% animação:
t_pausa = 0.25;
x = linspace(a,b,100);
plot(x,f(x));grid on; hold on;
title('f(x) = ',e);
xlabel('xx'); ylabel('yy');
h1 = plot(a, 0, b, 0, 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 8);  
shg 

% linha preta y = 0
plot(x, x*0, 'k-');

for k = 1:kmax
    c = (a+b)/2; % Primeiro ponto médio

    % tabela:
    fprintf(' %dº interação:     %.6f   %.6f \n',k,c, f(c));

    % animação:
    pause(t_pausa);
    delete(h1);
    h1 = plot(a, 0, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8); 
    pause(t_pausa);
    h = plot(c, 0, 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 8);
    pause(t_pausa);
    delete(h)
    h = plot(c, 0, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8);

    % bisection
    if f(c) == 0 % Pára se houver uma raíz
        return
    end

    if (b-a)/2 < tol % Valor abaixo da tolerância
        return
    end

    if f(b)*f(c) > 0 % Verifica mudança de sinal
        b = c; % Ajusta o limite do intervalo
        
    else 
        a = c;
    end
end
