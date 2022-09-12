function out=supply_freq(a)
siz=size(a);
out=zeros(siz(1),1);
for i=1:siz(1)
    for j=1:siz(2)
        if a(i,j)~=0
            out(i)=out(i)+1;
        end
    end
end
out=out./siz(2);
