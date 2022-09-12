load("data.mat");

cnt=zeros(402,1);
T3=zeros(402,240);
T1=table2array(T1);
T2=table2array(T2);
for i=1:402
    for j=1:240
        if T1(i,j)>0.1
            cnt(i)=cnt(i)+1;
        end
        if T2(i,j)==0
            T3(i,j)=0;
        elseif T2(i,j)>=T1(i,j)
            T3(i,j)=1;
        elseif T2(i,j)>0
            T3(i,j)=0.5;
        end
    end
end

sum3=sum(T3,2);

cre=sum3./cnt;

%save("preprocessed_data_1.mat","T3","cre");