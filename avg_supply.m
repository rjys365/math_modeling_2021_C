function out=avg_supply(a,b)
siz=size(a);
out=zeros(siz(1),1);
for i=1:siz(1)
    cnt=0;
    total_supply=0;
    for j=1:siz(2)
        if a(i,j)~=0
            cnt=cnt+1;
            total_supply=b(i,j)+total_supply;
        end
    end
    out(i)=total_supply/cnt;
end