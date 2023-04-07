clear;
clc;

t = (-10:0.01:10);     % to dianisma toy xronoy

% tha dokimasoyme 3 diaforetikes synartiseis san eisodoys gia na deiksoyme
% tin leitoyrgikothta tis oddeven

y1 = @(t)t.^2;         % dokimazoyme thn x^2 poy kseroyme oti einai even
y2 = @(t)t.^3;         % dokimazoyme thn x^3 poy kseroyme oti einai odd

% dokimazoyme kai to sima toy erotimatos 1
y3 = @(t)(t>=0 & t<2).*t + (t>=2 & t<4).*((6-4*t).^(-1)) + 0;

evenodd(t,y1);
figure;

evenodd(t,y2);
figure;

evenodd(t,y3);