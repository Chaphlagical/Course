clc;clear;

t=0:0.01:360;

R=3;
r=1;

X=(R+r)*cos(t)+r*cos((R+r)*t/r);
Y=(R+r)*sin(t)+r*sin((R+r)*t/r);

plot(X,Y);