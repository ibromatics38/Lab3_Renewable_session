clc;
clear all;
Pn = 2*10^6;
Dt = 76; 
N= 80; 
c1 = 0.44;
c2 = 125;
c3 = 0;
c4 = 0;
c5 = 0;
c6 = 6.94;
c7 = 16.5;
c8 = 0;
c9 = -0.002;
theta = 0;
we = 2*pi*50;
Vw=[5 8 11 14];
p = 2;
r = 1.225;
%1
wmg = we/p;
wmt = wmg/N;
R = Dt/2;   
lyamda = (wmt*R)./Vw;
alfa = 1./(lyamda+c8*theta)-c9./(1+theta^3);
cp = c1.*(c2*alfa-c3*theta-c4*theta^5-c6).*exp(-c7*alfa);
P1 = 1/2.*pi.*R^2.*(Vw.^3).*cp.*r;
P1a = min (P1, Pn);
Tt = P1/wmt;

%2
lyamda1=0:.1:20;  
alfa1 = 1./(lyamda1+c8*theta)-c9./(1+theta^3);
cp11 = c1.*(c2*alfa1-c3*theta-c4*theta^5-c6).*exp(-c7*alfa1);
cp1 = max (cp11, 0)
figure(1);
plot(lyamda1,cp1);hold on;grid on; %Cp-lambda curve
plot(lyamda,cp,'ko');              %Operation points
for ii=1:1:4
txt{ii}=['v_w = ' num2str(Vw(ii)) ' m/s'];
text(lyamda(ii),cp(ii),txt{ii},'FontSize',12);
end
xlabel('lyamda','FontSize',12);
ylabel('C_p','FontSize',12);


%3
vw2=0:.1:15;
lyamda = (wmt*R)./vw2;
alfa = 1./(lyamda+c8*theta)-c9./(1+theta^3);
cp = c1.*(c2*alfa-c3*theta-c4*theta^5-c6).*exp(-c7*alfa);
P2a = 1/2.*pi.*R^2.*(vw2.^3).*cp.*r;
P2 = min (P2a, Pn)
figure(2);
h=subplot(1,1,1);
plot(vw2,P2,':k');hold on;grid on; %Power-wind curve without nominal power limit
plot(vw2,P2a,'k');                 %Power-wind curve with nominal power limit
plot(Vw,P1a,'ko');                  %Operation points
for ii=1:1:4
txt{ii}=['V_w = ' num2str(Vw(ii)) ' m/s'];
text(Vw(ii),P1a(ii),txt{ii},'FontSize',12);
end
xlabel('v_w (m/s)','FontSize',12);
ylabel('P (MW)','FontSize',12);
set(h,'FontSize',12);

%% Include a comparison between the obtained power and the maximum available power
cp3 = max(cp)
P3a = 1/2.*pi.*R^2.*(vw2.^3).*cp3.*r;
P3 = min (P3a, Pn)
figure(3);
h=subplot(1,1,1);
plot(vw2,P2,':k');hold on;grid on;  %Power-wind curve without nominal power limit
plot(vw2,P2a,'k','LineWidth',3);    %Power-wind curve with nominal power limit
plot(Vw,P1a,'ko');                   %Operation points
plot(vw2,P3,':r');                  %Power-wind curve without nominal power limit and with Cp max
plot(vw2,P3a,'r');                  %Power-wind curve with nominal power limit and with Cp max              
for ii=1:1:4
txt{ii}=['V_w = ' num2str(Vw(ii)) ' m/s'];
text(Vw(ii),P1a(ii),txt{ii},'FontSize',12);
end
xlabel('V_w (m/s)','FontSize',12);
ylabel('P (MW)','FontSize',12);
set(h,'FontSize',12);