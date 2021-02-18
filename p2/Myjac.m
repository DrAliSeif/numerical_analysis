function x = Myjac(A,b,x,E)
n = length(A);
y=zeros(n,1);
sum=0;
 while norm(b-A*x)>E
    y=x;
    for i=1:n
        sum=0;
        for j=1:n
            if i~=j
                
                sum=sum+A(i,j)*y(j);
                
            end
        end
        x(i)=((b(i)-sum)/A(i,i));
    end
 end
