a = zeros(1,100000);
sample = zeros(1,100000);
for i=10:100000
    x = rand(2,i);
    y = zeros(1,i);
    for j=1:i
        if (x(1,j)^2+x(2,j)^2)<=1
           y(j) = 1;
        end      
    end
   sample(1,i)=sqrt(var(y)/i);
   if sample(1,i)<=0.004007
       break
   end
end
  i