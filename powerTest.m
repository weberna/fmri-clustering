function [vec, value] = powerTest(start, A, toler)

%
% Power method for computing eigenvalues
% A - Matrix A
% start - x_0 An initial start vector (possibly a unit vector)
% toler - tolerance level (should be in (0-1]
%
         
dd = 10;
x = start;
n = 10;
while dd < toler
    z = A' * x;
    y = A * z;
    dd =  dd + 1;
    n = max(abs(x));
    x = y ./ n;
  
end
vec = x;
value = n;
