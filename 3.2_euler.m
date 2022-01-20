
clc;
clear all;
close all;

x=input('Input initial value of x')
y=input('Input initial value of y')
xp=input('Input x at which y is required')
h=input('Input step size')

n= floor((xp-x)/h+0.5)

for i=1:n
    dy=h*heuns_func(x,y)
    x=x+h
    y=y+dy
   
end

fprintf('value of the function at the point x=%i is, y=%i\n', xp,y)
disp(y)