x=[];
round=100;
for i=1:round
    count=0;
    sam=0;
    while(sam<=4)
        sam=sam+rand();
        count=count+1;
    end
    x(i)=count;
end
hist(x)
E=sum(x)/round
        