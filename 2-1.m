
min = 0;
size = 10000;
a = zeros(1,size);
sample = zeros(1,size);
for j=10:size   %the sample size from 10 to 10000
    x = rand(2,j);
    y = zeros(1,j);
    quadrant=0;
    for i=1:j
        if (x(1,i)^2+x(2,i)^2)<=1
           y(i) = 1;
           quadrant=quadrant+1; 
        end      
    end
   sample(1,j)=sqrt(var(y)/j);
   a(1,j)=quadrant/j*4;
end
plot(a(1,10:size));
axis([10 size 2.8 3.4]);
title('Estimators of different sample sizes');
ylabel('Estimate ');
xlabel('Sample size');
 
for i=10:size
    if 1.96 * sample(1,i)< pi/4*0.01
    min = i;
    break;
    end
end

