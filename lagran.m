clc;
clear all;
close all;

n=input(' Number of data sets ')
x=input(' Data points ')
f=input(' Function values at data points ')
xp=input(' point at which interpolation is required ')


sum=0.0
for i=1:n
    lf=1.0
    for j=1:n
        if j~=i
            lf=lf*(xp-x(j))/(x(i)-x(j))
        end
    end
    sum=sum+lf*f(i)
end


disp(sum)