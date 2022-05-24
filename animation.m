function animation(fx, xx,f)
t_pausa = 0.4;
for count = 1:length(xx)

    if count<length(xx)
        p2 = plot(xx(count), 0, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 4); % ponto (x1,0)
        pause(t_pausa);

        p3 = plot ([xx(count), xx(count)],[fx(count),0], 'm:','LineWidth',1); % linha vertical
        pause(t_pausa);

        p1(count) = plot(xx(count), fx(count), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
        pause(t_pausa);

        d = plot ([xx(count+1), xx(count)],[0,fx(count)], 'r--','LineWidth',1); % linha diagonal
        pause(t_pausa);

        p2 = plot(xx(count+1), 0, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 4); % ponto (x1,0)
        pause(t_pausa);

        delete(p3); delete(d);
        
    else
        x = linspace(-1, 1,100);
        plot(x,f(x));grid on; hold on;
        plot(x, x*0, 'k-');

        for i = 1:7
            p1(i) = plot(xx(count), fx(count), 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 6); % ponto (x1,y1)
            pause(t_pausa); delete(p1(i));
            p1(i) = plot(xx(count), fx(count), 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 6); % ponto (x1,y1)
            pause(t_pausa); delete(p1(i));
        end
    end
end