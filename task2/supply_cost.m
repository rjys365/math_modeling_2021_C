function co=supply_cost(buy,consume,v)%v为3个数的行向量
load("supply_typ.mat");
trans_cost=sum(0.9.*buy);
purchase_cost=0
siz=size(buy)
for i=1:siz
    purchase_cost=purchase_cost+price_coefficient(supply_typ(i))*buy(i)
end
volume_cost=sum(v)+0.5*(sum(buy)-sum(consume));%TODO!!!
co=trans_cost+purchase_cost+volume_cost;
