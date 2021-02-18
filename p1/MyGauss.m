
function y = MyGauss(a,b)
  c=[a,b];
d=length(c)-1;
    
    for j=2:d
        for i=1:j-1
            c(j,:)=c(j,:)-(c(j,i)/c(i,i))*c(i,:);
        end
    end
y=zeros(d,1);
    
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
end

