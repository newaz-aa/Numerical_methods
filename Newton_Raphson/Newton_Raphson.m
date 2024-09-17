function [out, error]= Newton_Raphson(sym_func,x,n)
% given a function, this code finds the root using the Newton-Raphson
% method

% 1st input = a symbolic function = f(x)
% 2nd input = the initial guess for x
% 3rd input = the number of iteration to continue

% adding constraints to n
arguments
    sym_func
    x double
    n = 5
end

g= diff(sym_func) % differentiation 
error= zeros(1,n);  %pre-allocation

for i=1:n
    y= x- sym_func(x)/g(x);
    error(i)= ((y-x)/y)*100;
    x=y;
end

out=double(x);  %double convert symbolic variable to numeric value


end