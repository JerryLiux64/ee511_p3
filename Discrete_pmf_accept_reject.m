p = [4 5 10 6 7 19 13 14 15 14]/100; N = 10000;
for i = 1:N, k = 0;
    while 1, k = k + 1;
         j = 1 + floor(10*rand);   % Get Uniform j
	 if (1.9*rand) < p(j)/0.1  % Accept p(j) if U<p(j)/c, q(j)= 0.1
	 X(i) = j; C(i) = k; 
         break
     end
    end
end
% Check mean X and C
disp([ mean(X) sum(p.*[1:10]) mean(C) ])