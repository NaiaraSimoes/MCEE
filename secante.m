function [r, y] = secante(f, x1, x2, N, tol)

for n = 2:N
       
    x3 = x2 - ((x2 - x1)/(f(x2)-f(x1)))*f(x2);    
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