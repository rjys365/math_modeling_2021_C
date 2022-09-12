function w=entropy_weight(x)
%ENTROPY_WEIGHT 熵权法权值计算
%   计算熵权法的权值，输入矩阵x为n行m列，n为物品数，m为指标数，输出1行m列权值向量
n=size(x,1);
m=size(x,2);
z=x;
for j=1:m
    z(:,j)=z(:,j)./sqrt(sum(z(:,j).^2));
end
p=z;
for j=1:m
    p(:,j)=p(:,j)./sum(p(:,j));
end
e=zeros(1,m);
for j=1:m
    e(j)=-1/log(n)*sum(p(:,j).*log(p(:,j)),"all");
end
d=ones("like",e)-e;
w=d./sum(d);
