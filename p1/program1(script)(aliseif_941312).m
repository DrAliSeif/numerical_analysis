clear all;
close all;
clc;
    
goAgain = input('Do you want to nmanually enter data(y or n)?', 's');
if strcmp(goAgain, 'y')
   




    prompt = 'Hi im ali seif\n What is the Dimensions of the matrix? ';
    x = input(prompt);
    a=zeros([x,x]);
    x;
    for  i=1:1:x
        for  j=1:1:x
            string=num2str(i);
            string2=num2str(j);
            z=strcat('enter a',string,string2,'=');
            a(i,j) = input(z);
        end
    end
     disp('Matrix is:')
   disp(a)
    a;
    b=zeros([x,1]);
    for  i=1:1:x
        
        string=num2str(i);
        z=strcat('enter b',string,'=');
        b(i,1) = input(z);
        
    end
    b;
     disp('solo Matrix is:')
   disp(b)
    
    
    
    c=[a,b];
    
    disp('Matrix added is:')
   disp(c)
   
   
    d=length(c)-1;
    
    for j=2:d
        for i=1:j-1
            c(j,:)=c(j,:)-(c(j,i)/c(i,i))*c(i,:);
        end
    end
    
    
   disp('Top triangular is:')
   disp(c)
 
    
    
    y=zeros([x,1]);
    
    y(d)=c(d,d+1)/c(d,d);
    sum=y(d)*c(d-1,d);
    for i=d-1:-1:1
        y(i)=((c(i,d+1)-sum)/c(i,i));
        sum=0;
        if i~=1
            for j=i:d
                sum=sum+c(i-1,j)*y(j);
            end
        end
    end
    
    
     disp('The final answer for equations is:')
   disp(y)
    y;

    elseif strcmp(goAgain, 'n')
    d=5+5
    
     prompt = 'Hi im ali seif\n What is the Dimensions of the matrix? ';
    x = input(prompt);
    a=rand(x,x);
     disp('Matrix is:')
   disp(a)
   
    b=rand(x,1);
     disp('solo Matrix is:')
   disp(b)
    
     c=[a,b];
    
    disp('Matrix added is:')
   disp(c)
   
   
    d=length(c)-1;
    
    for j=2:d
        for i=1:j-1
            c(j,:)=c(j,:)-(c(j,i)/c(i,i))*c(i,:);
        end
    end
    
    
   disp('Top triangular is:')
   disp(c)
 
    
    
    y=zeros([x,1]);
    
    y(d)=c(d,d+1)/c(d,d);
    sum=y(d)*c(d-1,d);
    for i=d-1:-1:1
        y(i)=((c(i,d+1)-sum)/c(i,i));
        sum=0;
        if i~=1
            for j=i:d
                sum=sum+c(i-1,j)*y(j);
            end
        end
    end
    
    
     disp('The final answer for equations is:')
   disp(y)
    y;
    
    

end
    
    
    
    
