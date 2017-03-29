clear;
record=[];
for samnum=1:125
reject=0;   %number of reject
accept=0;   %number of accept 
round=1000;  %number of experiments
%samnum=60;   %sample number
samnum;
for j=1:round
    samspace=125;   %sample space
    x=[];
    for k=1:floor(125/samnum)
        for i=1:samnum      %take samnum chips
            a=randi(samspace);
            while(sum(x==a))% avoid getting same number in one round of sampling
                %disp(a);
                a=randi(samspace);
            end
            x(i)=a;
        end
        if (sum(x<7)>0)%check if samples have defected chips
            reject=reject+1;
            break;
        else
            accept=accept+1;
            samspace=samspace-5;
        end
    end
end
disp('Number of microchip sampled:')
disp(samnum)
disp('Probability of rejection:');
disp(reject/(reject+accept));
record(samnum)=reject/(reject+accept);
end
bar(record);