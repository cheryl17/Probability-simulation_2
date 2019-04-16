sum = zeros(1,10000);
    for k = 1:10000
        a = rand(1,k);
        sum(1,k) = 0;
        y = zeros(1,k);
        for j = 1:k
            y(1,j) = sin(pi*a(1,j))/a(1,j);
            sum(1,k) = sum(1,k) + sin(pi*a(1,j))/a(1,j)/k;
        end  
    end
    sample = sqrt(var(y))/100;
figure(1);
plot(sum(1,:))
axis([1 10000 1.3 2.4]);
title('Estimate of y');
ylabel('Integral values');
xlabel('sample size k');

