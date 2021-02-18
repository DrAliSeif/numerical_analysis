
function [x,JacobItr]= jacobi(A,b,x,tol)
JacobItr = 0;
n = length(A);

while norm(b-A*x)>tol
    xold=x;
    
    for i=1:n
        sigma=0;
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*xold(j);
            end
            
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    JacobItr=JacobItr+1;
end

