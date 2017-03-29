clear;
round=10000;
lambda=120;
range=200;
p=exp(-lambda);
f=p;
count=zeros(1,range);

for k=1:round
    x=rand();
    for i=0:(range-1)
        if(x<f)
            count(i+1)=count(i+1)+1;
            x=rand();
            p=exp(-lambda);
            f=p;
            break;
        end
        p=lambda*p/(i+1);
        f=f+p;        
    end
end
figure(1)
bar(count)
hold
x=[];
for i=80:160
    x(i)=poisspdf(i,120);
end
x=x.*10000;
plot(x)

