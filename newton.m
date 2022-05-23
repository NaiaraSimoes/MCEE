function [v,fx,erro] = newton(f,x1, n,tol)

y = sym(f);
fp = matlabFunction(diff(y));

for k = 1:n
 
    if fp(x1) == 0
        erro = 1; v = 0; fx = 0;
        return
    end
    erro = 0;
    x2 = x1 - f(x1)/fp(x1);
    if abs(x2 - x1) < tol        
        v(k) = x2;
        fx(k) = f(x2);
        return
    else
        v(k) = x1; 
        fx(k) = f(x1);
        x1 = x2;
    end
end

