clear;

angle =30;
g = -9.81;
a = (1/2) * g;
vo = 10;
xo = 0;
yo = 0;

v0x = vo * sind(angle);
v0x= vo * sind(angle);

tF = roots([a, v0y, yo]);
tF =max(tF);
time =linspace(0, tF, 1000);
x = xo + v0x * time;
y = yo + v0y * time + a * time .^2;
plot(x,y,'-r', 'LineWidth', 1)
title('projectile motion');
xlabel('Distance');
ylabel('Height');
hold on
plot(0,0,'*b', 8.83,0,'*b')
hold off
