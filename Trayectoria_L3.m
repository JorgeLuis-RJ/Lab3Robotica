clc;clear;close;
N=[-1,0,1];

[x,y]=meshgrid(-33.3:2*33.3:33.3);

z=x-17.5;
hold on; view(3);
surf(x,y,z,'FaceColor','none','EdgeColor','k')
O=eye(4);
trplot(O,'rgb','length',10)

ax=cosd(45);
az=sind(45);

trayectoria=[[15.5 -3 -2]
    [21.9 -3 4.4]
    [21.9+ax*3*sind(5) -3*cosd(5) 4.4+az*3*sind(5)]
    [21.9+ax*3*sind(10) -3*cosd(10) 4.4+az*3*sind(10)]
    [21.9+ax*3*sind(15) -3*cosd(15) 4.4+az*3*sind(15)]
    [21.9+ax*3*sind(20) -3*cosd(20) 4.4+az*3*sind(20)]
    [21.9+ax*3*sind(25) -3*cosd(25) 4.4+az*3*sind(25)]
    [21.9+ax*3*sind(30) -3*cosd(30) 4.4+az*3*sind(30)]
    [21.9+ax*3*sind(35) -3*cosd(35) 4.4+az*3*sind(35)]
    [21.9+ax*3*sind(40) -3*cosd(40) 4.4+az*3*sind(40)]
    [21.9+ax*3*sind(45) -3*cosd(45) 4.4+az*3*sind(45)]
    [21.9+ax*3*sind(50) -3*cosd(50) 4.4+az*3*sind(50)]
    [21.9+ax*3*sind(55) -3*cosd(55) 4.4+az*3*sind(55)]
    [21.9+ax*3*sind(60) -3*cosd(60) 4.4+az*3*sind(60)]
    [21.9+ax*3*sind(65) -3*cosd(65) 4.4+az*3*sind(65)]
    [21.9+ax*3*sind(70) -3*cosd(70) 4.4+az*3*sind(70)]
    [21.9+ax*3*sind(75) -3*cosd(75) 4.4+az*3*sind(75)]
    [21.9+ax*3*sind(80) -3*cosd(80) 4.4+az*3*sind(80)]
    [21.9+ax*3*sind(85) -3*cosd(85) 4.4+az*3*sind(85)]
    [21.9+ax*3*sind(90) -3*cosd(90) 4.4+az*3*sind(90)]
    %[24.9 0 7.4]
    [21.9+ax*3*sind(85) 3*cosd(85) 4.4+az*3*sind(85)]
    [21.9+ax*3*sind(80) 3*cosd(80) 4.4+az*3*sind(80)]
    [21.9+ax*3*sind(75) 3*cosd(75) 4.4+az*3*sind(75)]
    [21.9+ax*3*sind(70) 3*cosd(70) 4.4+az*3*sind(70)]
    [21.9+ax*3*sind(65) 3*cosd(65) 4.4+az*3*sind(65)]
    [21.9+ax*3*sind(60) 3*cosd(60) 4.4+az*3*sind(60)]
    [21.9+ax*3*sind(55) 3*cosd(55) 4.4+az*3*sind(55)]
    [21.9+ax*3*sind(50) 3*cosd(50) 4.4+az*3*sind(50)]
    [21.9+ax*3*sind(45) 3*cosd(45) 4.4+az*3*sind(45)]
    [21.9+ax*3*sind(40) 3*cosd(40) 4.4+az*3*sind(40)]
    [21.9+ax*3*sind(35) 3*cosd(35) 4.4+az*3*sind(35)]
    [21.9+ax*3*sind(30) 3*cosd(30) 4.4+az*3*sind(30)]
    [21.9+ax*3*sind(25) 3*cosd(25) 4.4+az*3*sind(25)]
    [21.9+ax*3*sind(20) 3*cosd(20) 4.4+az*3*sind(20)]
    [21.9+ax*3*sind(15) 3*cosd(15) 4.4+az*3*sind(15)]
    [21.9+ax*3*sind(10) 3*cosd(10) 4.4+az*3*sind(10)]
    [21.9+ax*3*sind(5) 3*cosd(5) 4.4+az*3*sind(5)]
    [21.9 3 4.4]
    [15.5 3 -2]
    [15.5 -3 -2]];

plot3(trayectoria(1,1),trayectoria(1,2),trayectoria(1,3),'+r')
plot3(trayectoria(39,1),trayectoria(39,2),trayectoria(39,3),'xr')
plot3(trayectoria(:,1),trayectoria(:,2),trayectoria(:,3),'c')
