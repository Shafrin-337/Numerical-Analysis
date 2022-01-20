clc;
clear all;
close all;

value=input('Input initial value of x and y')
xp=input('Input x at which y is required')
h=input('Input step size')

x=value(1)
y=value(2)

n= floor((xp-x)/h+0.5)

for i=1:n
    m1=RK_func(x,y)
    m2=RK_func(x+0.5*h,y+0.5*m1*h)
    x=x+h
    y=y+m2*h
    fprintf('%d  ||%d  ||%d\n',i,x,y)
    
end

fprintf('value of the function at the point x=%d is, y=%d\n', xp,y)
disp(y)