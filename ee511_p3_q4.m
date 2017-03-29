clear;
round=10000;
count_1=[];
count_2=[];
sumofsequence=[];
%---------Count constant p
for i=1:60
    sumofsequence(i)=1/i;
end
pp=1/sum(sumofsequence);
%---------Generate pmf
p=[];
for i=1:60
    p(i)=pp/i;
end
%---------Generate long sequence and produce histogram
Xk=[];
for j=1:round
    sam=rand();
    sump=0;
    for i=1:60
        sump=sump+p(61-i);
        if sam<sump
            Xk(j)=(61-i);
            break;
        end
    end
end
figure(1)
hist(Xk)
%----------Generate sequence until get 60
for ii=1:round
j=1;
sequence=[];
while 1
    sam=rand();
    sump=0;
    for i=1:60
        sump=sump+p(61-i);
        if sam<sump
            sequence(j)=(61-i);
            break;
        end        
    end
    if sequence(j)==60
        break;
    end
    j=j+1;
end
count_1(ii)=length(sequence);
end
figure(2)
hist(count_1)
%----------Generate 60 by geometric r.v.
for i=1:round
    x=0;
    while rand()>p(60)
        x=x+1;
    end
    count_2(i)=x;
end
figure(3)
hist(count_2)
%-----------Mean and Var
disp('E[N60]=');
mean=sum(count_1)/round;
disp(mean);
disp('Var[N60]=');
disp(sum((count_1-mean).^2)/round);