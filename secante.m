function [r, y] = secante(f, x1, x2, N, tol)
% definição do eixo x
if x1 < x2
    x = linspace(x1,x2,100);
else
    x = linspace(x2,x1,100);
end

% gráfico:
% t_pausa = 0.25;
% plot(x,f(x));grid on; hold on;
% title('f(x) = ');
% xlabel('xx'); ylabel('yy');
% plot(x, x*0, 'k-');

for n = 2:N
    % animação:
%     p1(n) = plot(x1, f(x1), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
%     pause(t_pausa);
%     p2 = plot(x1, 0, 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,0)
%     pause(t_pausa);
%     p3 = plot ([x1, x1],[f(x1),0], 'm:','LineWidth',1); % linha vertical 
%     pause(t_pausa);
    
    
    x3 = x2 - ((x2 - x1)/(f(x2)-f(x1)))*f(x2);
    
%     d = plot ([x2, x1],[0,f(x1)], 'r--','LineWidth',1); % linha diagonal
%     pause(t_pausa);
%     delete(p2); delete(p3); delete(d);
    
    if abs(x3-x2)<tol
        r(n-1) = x3;
        y(n-1) = f(x3);
        return
    else
        x1 = x2;
        x2 = x3;
        r(n-1) = x3;
        y(n-1) = f(x3);
    end
end
end