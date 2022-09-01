%%
deltaZ1 = Z1-Z11;
deltaZ2 = Z2-Z21;
deltaZ3 = Z3-Z31;
deltaZ4 = Z4-Z41;
deltaZ5 = Z5-Z51;
deltaZ6 = Z6-Z61;
deltaZ7 = Z7-Z71;
deltaZ8 = Z8-Z81;
%%
deltaZ1 = deltaZ1(:);
deltaZ2 = deltaZ2(:);
deltaZ3 = deltaZ3(:);
deltaZ4 = deltaZ4(:);
deltaZ5 = deltaZ5(:);
deltaZ6 = deltaZ6(:);
deltaZ7 = deltaZ7(:);
deltaZ8 = deltaZ8(:);
%% RMSE
% n = 8181;
% DZ1 = sum(deltaZ1.*deltaZ1)/n;
% DZ2 = sum(deltaZ2.*deltaZ2)/n;
% DZ3 = sum(deltaZ3.*deltaZ3)/n;
% DZ4 = sum(deltaZ4.*deltaZ4)/n;
% DZ5 = sum(deltaZ5.*deltaZ5)/n;
% DZ6 = sum(deltaZ6.*deltaZ6)/n;
% DZ7 = sum(deltaZ7.*deltaZ7)/n;
% DZ8 = sum(deltaZ8.*deltaZ8)/n;
% 
% Dfinal = sqrt((DZ1+DZ2+DZ3+DZ4+DZ5+DZ6+DZ7+DZ8)/9) %RMSE

%% MAE
n = 8181;
DZ1 = sum(abs(deltaZ1))/n;
DZ2 = sum(abs(deltaZ2))/n;
DZ3 = sum(abs(deltaZ3))/n;
DZ4 = sum(abs(deltaZ4))/n;
DZ5 = sum(abs(deltaZ5))/n;
DZ6 = sum(abs(deltaZ6))/n;
DZ7 = sum(abs(deltaZ7))/n;
DZ8 = sum(abs(deltaZ8))/n;

Dfinal = (DZ1+DZ2+DZ3+DZ4+DZ5+DZ6+DZ7+DZ8)/9 %MAE