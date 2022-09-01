% close all
% clear all
% clc

%% tumor grade
xt = (0:0.1:10);
xt_length = length(xt);
yt1 = 0.*(xt>=0 & xt<7) + 1.*(xt>=7 & xt<=10);
yt2 = 1.*(xt>=0 & xt<=10);
yt3 = 1.*(xt>=0 & xt<5) + 0.*(xt>=5 & xt<=10);

figure%tumor grade after test
plot(xt,yt1);
hold on
plot(xt,yt2);
hold on
plot(xt,yt3);

%% distance measure
x = (0:1:80);
x_length = length(x);
x2 = x;
y11 = 1.*(x>=0 & x<20)+ 0.5.*(x>=20 & x<60) + 0.*(x>=60 & x<=80);
y22 = 0.*(x>=0 & x<20)+ 1.*(x>=20 & x<60) + 0.*(x>=60 & x<=80);
y33 = 0.*(x>=0 & x<40)+ 0.5.*(x>=40 & x<60) + 1.*(x>=60 & x<=80);
figure%distance measure before test
plot(x,y11);
hold on
plot(x,y22);
hold on
plot(x,y33);

%%

Z11 = combine(yt1,y11);
Z11 = (Z11.Z);
Z21 = combine(yt1,y22);
Z21 = (Z21.Z);
Z31 = combine(yt1,y33);
Z31 = (Z31.Z);
Z41 = combine(yt2,y11);
Z41 = (Z41.Z);
Z51 = combine(yt2,y22);
Z51 = (Z51.Z);
Z61 = combine(yt2,y33);
Z61 = (Z61.Z);
Z71 = combine(yt3,y11);
Z71 = (Z71.Z);
Z81 = combine(yt3,y22);
Z81 = (Z81.Z);
Z91 = combine(yt3,y33);
Z91 = (Z91.Z);
% figure
% mesh(xt,x2,Z11);
% hold on
% mesh(xt,x2,Z21);
% hold on
% mesh(xt,x2,Z31);
% hold on
% mesh(xt,x2,Z41);
% hold on
% mesh(xt,x2,Z51);
% hold on
% mesh(xt,x2,Z61);
% hold on
% mesh(xt,x2,Z71);
% hold on
% mesh(xt,x2,Z81);
% hold on
% mesh(xt,x2,Z91);

%% imagesc
% figure
% imagesc(xt,x2,Z11);

figure

ZZZ = Z11;%Choose a curve from 1 to 9

imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');

X = xt*10+1;
X = floor(X);

%y = 80.*exp(-10./xt).*(xt>=0 & xt<7) + 1.*(xt>=7 & xt<10);%Co-Relation
%y = 80.*exp(-0.1./xt);%Co-Relation

np = 0.3;
c=70;
y = c.* (1 - (((10-xt)./10).^np));


for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z11 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z11(m,Y(m)) = ZZZ(m,Y(m));
end
figure
imagesc(xt,x2,Z11');
caxis([0,1])
set(gca,'YDir','normal');


%%


ZZZ = Z21;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z21 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z21(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z31;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));

for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z31 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z31(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z41;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z41 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z41(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z51;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z51 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z51(m,Y(m)) = ZZZ(m,Y(m));
end


ZZZ = Z61;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z61 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z61(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z71;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z71 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z71(m,Y(m)) = ZZZ(m,Y(m));
end




ZZZ = Z81;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z81 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z81(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z91;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');
X = xt*10+1;
X = floor(X);
y = c.* (1 - (((10-xt)./10).^np));
for m = 1:xt_length
    for n = 1:x_length-1
        if y(m) >= x2(n) & y(m) <= x2(n+1)
            Y(m) = n;
        end
        end
end
Z91 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z91(m,Y(m)) = ZZZ(m,Y(m));
end

