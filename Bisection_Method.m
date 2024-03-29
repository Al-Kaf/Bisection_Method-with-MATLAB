function [root,fx,ea,iter] = Bisection_Method(func,x1,xu,es,maxit,varargin)

if nargin<3,error('at least 3 input arguments reguired'),end
test = func(x1,varargin{:})*func(xu,varargin{:});
if test>0, error('no sign chang'),end
if nargin < 4 || isempty(es), es=0.0001;end
if nargin < 5 || isempty(maxit), maxit=50;end
iter = 0; xr = x1;ea=100;
while(1)
    xrold = xr;
    xr = (x1 + xu)/2;
    iter = iter +1;
    if xr ~= 0,ea = abs((xr - xrold)/xr)*100;end
    test = func(x1,varargin{:})*func(xr,varargin{:});
    if test <0
        xu = xr;
    elseif test >0
        x1 = xr;
    else
        ea=0;
    end
    if ea <= es || iter >= maxit, break,end
end
root= xr; fx = func(xr,varargin{:});

end