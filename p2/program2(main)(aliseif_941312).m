clear all;
close all;
clc;
A=[10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8];
b=[6;25;-11;15];
x=[0; 0 ;0 ;0];
E=10^-3;
[x,k] =jacobi(A,b,x,E)