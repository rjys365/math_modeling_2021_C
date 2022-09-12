function out=supply_variance(a,b)
siza=size(a);
sizb=size(b);
if siza~=sizb
    error("size not match!");
end
siz=siza;
avg=avg_supply(a,b);
out=zeros(siz(1),1);
for i=1:siz(1)
    cnt=0;
    tot_v=0;
    for j=1:siz(2)
        if a(i,j)~=0
            cnt=cnt+1;
            tot_v=tot_v+(b(i,j)-avg(i))^2;
        end
    end
    out(i)=sqrt(tot_v/cnt);
end
