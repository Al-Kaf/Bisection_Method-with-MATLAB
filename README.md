# Bisection_Method-with-MATLAB
This code is intended for the Matlab program to find zeros of equations using a method Bisection_Method

# Concept 
The sub-interval at which the function changes sign is located.
It is divided in half.
The half where the function changes sign is determined..
This process is repeated to obtain refined estimates.

# Assumptions
f(x) is continuous on [xl, xu] 
f(xl) ∙ f(xu) < 0  

# Algorithm
Loop
  1. Compute the mid point  xr=(xl+xu)/2
  2. Evaluate f(xr)
  3. If f(xl) f(xr) < 0  then new interval [xl, xr]
      If f(xl) f(xr) > 0 then new interval [xr, xu]
End loop at the desired interval size

# how is work
Step 1: Choose lower xl and upper xu guesses for the root such that: 
       f(xl) f(xu) < 0

Step 2: The root estimate is:
         xr = (xl + xu)/2

Step 3: Subdivide the interval according to:
If (f(xl) . f(xr) < 0), the root lies in the lower subinterval; xu = xr and go to step 2.
If (f(xl) . f(xr) > 0), the root lies in the upper subinterval; xl = xr and go to step 2.
If (f(xl) . f(xr) = 0), the root is xr and stop.

# References
S.C. Chapra, “Applied Numerical Methods with MATLAB for Engineers and Scientists”, 3rd Edition, McGraw- Hill, 2011.

S.C. Chapra and R.P. Canale, “Numerical Methods for Engineers”, 5th Edition, McGraw- Hill, 2006.
