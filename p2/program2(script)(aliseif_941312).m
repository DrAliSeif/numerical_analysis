clear all;
close all;
clc;
A=[10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8];
b=[6;25;-11;15];
x=[0; 0 ;0 ;0];
E=10^-3;
 y=[0 0 0 0];
sum=0;
 while norm(b-A*x)>E
     y=x;
    for i=1:4
        sum=0;
        for j=1:4
            if i~=j
                
                sum=sum+A(i,j)*y(j);
                
            end
        end
        x(i)=((b(i)-sum)/A(i,i));
    end
 end
x