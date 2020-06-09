%打开并行池,查看电脑是几核的，‘2’是电脑的核数
p = parpool('local',2);
%记录初始时间
tic
n = 200;
A = 500;
a = zeros(n);
%执行parfor并行循环
parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
%纪律结束时间
toc
%关闭并行池
delete(p);