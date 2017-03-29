divide=10000;%divider
pavr=120/divide;
pdf=[];
for i=1:100
    x=rand(divide,1);
    trails=x<pavr;
    pdf(i)=sum(trails);
end
figure(1)
hist(pdf)
hold
x=[];
for i=80:160
    x(i)=poisspdf(i,120);
end
x=x*500;
plot(x)

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
figure(3)
bar(count)
    
