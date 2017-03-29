divide=10000;%divider
pavr=120/divide;
pdf=[];
for i=1:1000
    x=rand(divide,1);
    trails=x<pavr;
    pdf(i)=sum(trails);
end
figure(1)
hist(pdf)
hold
x=[];
for i=1:240
    x(i)=poisspdf(i,120);
end
x=x.*8000;
plot(x)
    
