function out=supply_offset(a,b)
siza=size(a);
sizb=size(b);
if siza~=sizb
    error("size not match!");
end
siz=siza;
out=zeros(siz(1),1);
for i=1:siz(1)
    valcnt=0;
    total_curv=0;
    for j=1:siz(2)
        if a(i,j)~=0
            total_curv=total_curv+curv((b(i,j)-a(i,j))/a(i,j));
            valcnt=valcnt+1;
        end
    end
    out(i)=1/(total_curv/valcnt);
end