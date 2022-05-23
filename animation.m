function animation(fx, xx)
t_pausa = 0.25;
for count = 1:length(xx)
    % animação:
    if count<length(xx)
        p1(count) = plot(xx(count), fx(count), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
        pause(t_pausa);
        p2 = plot(xx(count), 0, 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,0)
        pause(t_pausa);
        p3 = plot ([xx(count), xx(count)],[fx(count),0], 'm:','LineWidth',1); % linha vertical
        pause(t_pausa);
        d = plot ([xx(count+1), xx(count)],[0,fx(count)], 'r--','LineWidth',1); % linha diagonal
        pause(t_pausa);
        delete(p2); delete(p3); delete(d);
    end
end
end