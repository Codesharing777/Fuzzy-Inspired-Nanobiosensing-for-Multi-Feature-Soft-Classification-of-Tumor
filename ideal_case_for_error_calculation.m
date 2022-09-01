% close all
% clear all
% clc

%original function
xt = (0:0.1:10);
xt_length = length(xt);
yt1 = 0.*(xt>=0 & xt<7) + (0.5*(xt-7)).*(xt>=7 & xt<9) + 1.*(xt>=9 & xt<=10);
yt2 = 0.*(xt>=0 & xt<2) + (0.5*(xt-2)).*(xt>=2 & xt<4) + 1.*(xt>=4 & xt<7) + (1-0.5*(xt-7)).*(xt>=7 & xt<9)+0.*(xt>=9 & xt<=10);
yt3 = 1.*(xt>=0 & xt<2) + (1-0.5*(xt-2)).*(xt>=2 & xt<4)+0.*(xt>=5 & xt<=10);

figure %tumor grade
plot(xt,yt1);
hold on
plot(xt,yt2);
hold on
plot(xt,yt3);

x = (0:1:80);
x2 = x;
x_length = length(x);

y1 = 1.*(x>=0 & x<10)+(1-0.05*(x-10)).*(x>=10 & x<30)+0.*(x>=30 & x<=80);
y2 = 0.*(x>=0 & x<10)+(0.05*(x-10)).*(x>=10 & x<30)+1.*(x>=30 & x<40)+(1-0.05*(x-40)).*(x>=40 & x<60)+0.*(x>=60 & x<=80);
y3 = 0.*(x>=0 & x<40)+(0.05*(x-40)).*(x>=40 & x<60)+1.*(x>=60 & x<=80);

figure %distance measure
plot(x,y1,'r');
hold on
plot(x,y2,'y');
hold on
plot(x,y3,'g');

%% 3D
Z1 = combine(yt1,y1);
Z1 = (Z1.Z);
Z2 = combine(yt1,y2);
Z2 = (Z2.Z);
Z3 = combine(yt1,y3);
Z3 = (Z3.Z);
Z4 = combine(yt2,y1);
Z4 = (Z4.Z);
Z5 = combine(yt2,y2);
Z5 = (Z5.Z);
Z6 = combine(yt2,y3);
Z6 = (Z6.Z);
Z7 = combine(yt3,y1);
Z7 = (Z7.Z);
Z8 = combine(yt3,y2);
Z8 = (Z8.Z);
Z9 = combine(yt3,y3);
Z9 = (Z9.Z);

%% imagesc
%close all

ZZZ = Z1;%Choose a curve from 1 to 9
figure
imagesc(xt,x2,ZZZ');
set(gca,'YDir','normal');

X = xt*10+1;
X = floor(X);

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

Z1 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z1(m,Y(m)) = ZZZ(m,Y(m));
end

figure
imagesc(xt,x2,Z1');
caxis([0,1])
set(gca,'YDir','normal');

%%

ZZZ = Z2;%Choose a curve from 1 to 9
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
Z2 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z2(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z3;%Choose a curve from 1 to 9
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
Z3 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z3(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z4;%Choose a curve from 1 to 9
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
Z4 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z4(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z5;%Choose a curve from 1 to 9
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
Z5 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z5(m,Y(m)) = ZZZ(m,Y(m));
end


ZZZ = Z6;%Choose a curve from 1 to 9
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
Z6 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z6(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z7;%Choose a curve from 1 to 9
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
Z7 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z7(m,Y(m)) = ZZZ(m,Y(m));
end




ZZZ = Z8;%Choose a curve from 1 to 9
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
Z8 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z8(m,Y(m)) = ZZZ(m,Y(m));
end



ZZZ = Z9;%Choose a curve from 1 to 9
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
Z9 = zeros(xt_length,x_length);
for m = 1:xt_length
        Z9(m,Y(m)) = ZZZ(m,Y(m));
end

