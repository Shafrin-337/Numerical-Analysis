clc;
clear all;
close all;

value=input('Input initial value of x and y')
xp=input('Input x at which y is required')
h=input('Input step size')

x(1)=value(1)
y(1)=value(2)

n= floor((xp-x)/h+0.5)

for i=1:3
    m1=RK_func(x(i),y(i))
    m2=RK_func(x(i)+0.5*h,y(i)+0.5*m1*h)
    m3=RK_func(x(i)+0.5*h,y(i)+0.5*m2*h)
    m4=RK_func(x(i)+h,y(i)+m3*h)
    x(i+1)=x(i)+h
    y(i+1)=y(i)+(m1+2*m2+2*m3+m4)*h/6
end
for i=4:n
    f1=RK_func(x(i-3),y(i-3))
    f2=RK_func(x(i-2),y(i-2))
    f3=RK_func(x(i-1),y(i-1))
    f4=RK_func(x(i),y(i))
    y(i+1)=y(i)+h/24.0*(55.0*f4-59*f3+37.0*f2-9*f1)
    x(i+1)=x(i)+h
    f5=RK_func(x(i+1),y(i+1))
    y(i+1)=y(i)+h/24.0*(f2-5*f3+19*f4+9*f5)
end

fprintf('value of the function at the point x=%d is, y=%d\n', xp,y(n+1))
disp(y(n+1))
disp(y)