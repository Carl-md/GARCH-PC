%% GARCH��ģ
%garch��ģ֮ǰ��Ҫ�����ݽ����췽���Լ��飨�Ƿ����ARCHЧӦ��������������Լ���
%������LM������в��Ƿ����ARCHЧӦ���췽���ԣ�
[h,pValue] = archtest(error,'Lags',1:1:5,'Alpha',0.05);
%������Ljung-Box Qͳ�����Բв�в�ƽ����������Լ���
[h,pValue] = lbqtest(error,'lags',1:1:5);
[h,pValue] = lbqtest(error.^2,'lags',1:1:5);
%����ѵ�����Ͳ��Լ�
error_test = error(61:72,:);
error_train = error(1:60,:);
%����garchģ��
%AIC׼���BIC׼��



Mdl = garch(10,10);
EstMdl = estimate(Mdl,error_train);
vF1 = forecast(EstMdl,12,error_test);


