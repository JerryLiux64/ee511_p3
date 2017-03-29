clear;
p=[0.06 0.06 0.06 0.06 0.06 0.15 0.13 0.14 0.15 0.13 0 0 0 0 0 0 0 0 0 0];
expnum=10000;
c=3;
for i=1:expnum, k=0;
    while 1, k=k+1;
        j=1+floor(20*rand);
        if 3*rand<=p(j)/0.05
            X(i)=j;
            C(i)=k;
            break;
        end
    end
end
hist(X)
hold
p=p.*expnum;
plot(p)
disp('Sample mean:');
disp(sum(X)/expnum);
disp('Var:');
disp(var(X));
disp('Efficiency:');
disp(expnum/sum(C));