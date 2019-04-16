a=zeros(1,10000);
for i=1:10000
    N=zeros(1,i); 
    for k=1:i
        x=ceil(rand(1,1)*i);
        N(1,x)= N(1,x)+1;   
    end
    sum=0;
    for j=1:i
     if N(1,j)==0
       sum=sum+1;
     end
    end
    a(1,i)=sum/i;
end  
sample=sqrt(var(a))/100
figure(1);
plot(a(1,1:10000));
axis([1 10000 0.25 0.5]);
title('Estimate of 1/e');
ylabel('P0');
xlabel('sample size N');
