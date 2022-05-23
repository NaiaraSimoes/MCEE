function [v,k] = newton(f,x1, n,tol,e)

% definição do eixo x
if x1 < 0
    x = linspace(x1-tol,tol,100);
else 
    x = linspace(-tol,x1+tol,100);
end

% gráfico:
t_pausa = 0.25;
plot(x,f(x));grid on; hold on;
title('f(x) = ',e);
xlabel('xx'); ylabel('yy');
plot(x, x*0, 'k-');

% newton
y = sym(f);
fp = matlabFunction(diff(y));

for k = 1:n

    % animação:
    p1(k) = plot(x1, f(x1), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
    pause(t_pausa);
    p2 = plot(x1, 0, 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,0)
    pause(t_pausa);
    p3 = plot ([x1, x1],[f(x1),0], 'm:','LineWidth',1); % linha vertical 
    pause(t_pausa);
  
    if fp(x1) == 0
        error('x1 é mín/máx local');
    end

    x2 = x1 - f(x1)/fp(x1);
    d = plot ([x2, x1],[0,f(x1)], 'r--','LineWidth',1); % linha diagonal
    pause(t_pausa);
    delete(p2); delete(p3); delete(d);

    if abs(x2 - x1) < tol        
        v(k) = x2;
        delete(p1);
        return
    else
        v(k) = x1; 
        x1 = x2;
    end
end

