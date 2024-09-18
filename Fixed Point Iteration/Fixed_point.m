% Prepared by - Asif Newaz
% Code to solve the finding root problem using Fixed-point iteration


i=1;                       % iteration number
imax=15;                   % maximum iteration number

xo=0;                      % starting value
tolerance = 0.001;

ea= zeros(1,imax);         % error array
val = zeros(1,imax);       % x-value array

f = @(x) exp(-x);          % another way of writing a function called function-handle
%f = @(x) ((2*x+5)/2)^(1/3)
%f= @(x) 2*x^2-1
%f= @(x) sqrt((x+1)/2)
%f= @(x) exp(-x)-x

while i< imax
    xnew= f(xo)           % the new value of x
    xold=xo;
    val(i)=xnew;

    ea(i)= abs((xnew-xold)/xnew)*100;   % percentage error

    if ea(i)<tolerance
        break
    end

    xo=xnew;
    i=i+1;

    
end

val
ea