function [v, k, fx] = bisection(f,a,b,kmax,tol,e)

for k = 1:kmax

    c = (a+b)/2; % Primeiro ponto médio
    v(k) = c; % vetor com os valores de c para a tabela
    fx(k) = f(c);

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

end