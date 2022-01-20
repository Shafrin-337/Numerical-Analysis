clc;
clear all;
close all;

n=input(' Number of data sets ')
x=input(' Data points ')
f=input(' Function values at data points ')
xp=input(' point at which interpolation is required ')


for i =1:n
    d(i,1)=f(i)
end

for j=2:n
    for i=1:n-j+1
        d(i,j)=(d(i+1,j-1)-d(i,j-1))/(x(i+j-1)-x(i))
    end
end
for j=1:n
    a(j)=d(1,j)
end

sum=a(1)
for i=2:n
    pi=1.0
    for j=1:i-1
        pi=pi*(xp-x(j))
    end
    sum=sum+a(i)*pi
end
disp(sum)