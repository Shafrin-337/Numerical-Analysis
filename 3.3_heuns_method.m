clc;
clear all;
close all;

x=input('Input initial value of x')
y=input('Input initial value of y')
xp=input('Input x at which y is required')
h=input('Input step size')

n= floor((xp-x)/h+0.5)

for i=1:n
    m1=heuns_func(x,y)
    m2=heuns_func(x+h,y+m1*h)
    x=x+h
    y=y+0.5*h*(m1+m2)
   
end

fprintf('value of the function at the point x=%i is, y=%i\n', xp,y)
disp(y)