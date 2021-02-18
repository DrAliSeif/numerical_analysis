clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vorode n va sayz z va f
prompt = 'type the n:';
n = input(prompt);
t=2*n+2
z=zeros([1,t])
f=zeros([t,t])
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vorode vectore x
for  i=1:2:t
    
    string=num2str(0.5*i-0.5);
    
    e=strcat('enter x',string,'=');
    z(1,i) = input(e);
    z(1,i+1)=z(1,i)
    clc
end
disp('vector x is:')
disp(z)
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vorode f
for  i=1:2:t
    
    string=num2str(0.5*i-0.5);
    
    e=strcat('enter f',string,'=');
    f(1,i) = input(e);
    f(1,i+1)=f(1,i)
    clc
end
disp('vector f is:')
disp(f)
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vorode df

for  i=2:2:t
    
    string=num2str(0.5*i);
    
    e=strcat('enter df',string,'=');
    f(2,i) = input(e);
    clc
end
disp('vector df is:')
disp(f)
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mohasebe fard haye df
for j=3:2:t-1
    
    f(2,j)=(f(1,j)-f(1,j-1))/(z(j)-z(j-1))
    
end
clc


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mohasebe lig bartary
for i=3:1:t
    for j=i:1:t
        
        f(i,j)=(f(i-1,j)-f(i-1,j-1))/(z(j)-z(j-i+1))
    end
end
clc
z
f
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vorode x meghdar
prompt = 'type the x:';
x = input(prompt);
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mohasebeye H
H=0;
multiplication=(x-z(1));
for i=2:t
    
    H=H+f(i,i)*multiplication;
    multiplication=1;
    for j=i:-1:1
        multiplication=multiplication*(x-z(j));
        
    end
    
end
H=H+f(1,1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





