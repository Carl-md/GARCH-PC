%�򿪲��г�,�鿴�����Ǽ��˵ģ���2���ǵ��Եĺ���
p = parpool('local',2);
%��¼��ʼʱ��
tic
n = 200;
A = 500;
a = zeros(n);
%ִ��parfor����ѭ��
parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
%���ɽ���ʱ��
toc
%�رղ��г�
delete(p);