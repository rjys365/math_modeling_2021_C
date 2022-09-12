load("data.mat");

T1=table2array(T1);
T2=table2array(T2);

cre=supply_offset(T1,T2);
avg=avg_supply(T1,T2);
supply_var=supply_variance(T1,T2);
supply_var_max=max(supply_var);
supply_var_neg=ones("like",supply_var)*supply_var_max-supply_var+1;

supply_fre=supply_freq(T2);

%an=[(1:size(T1,1))',cre,avg,supply_var_neg,supply_fre];

an=[cre,avg,supply_var_neg,supply_fre];% 不含行号的矩阵
save("preprocessed_data.mat","an");

%an_sorted=sortrows(an,3,"descend");

