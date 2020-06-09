%% GARCH建模
%garch建模之前需要对数据进行异方差性检验（是否具有ARCH效应）和序列自相关性检验
%①运用LM法检验残差是否具有ARCH效应（异方差性）
[h,pValue] = archtest(error,'Lags',1:1:5,'Alpha',0.05);
%②运用Ljung-Box Q统计量对残差及残差平方做自相关性检验
[h,pValue] = lbqtest(error,'lags',1:1:5);
[h,pValue] = lbqtest(error.^2,'lags',1:1:5);
%分离训练集和测试集
error_test = error(61:72,:);
error_train = error(1:60,:);
%构建garch模型
%AIC准则和BIC准则



Mdl = garch(10,10);
EstMdl = estimate(Mdl,error_train);
vF1 = forecast(EstMdl,12,error_test);


