%% Definición inicial del Manipulador

L1 = 1045/1000;
L2 = 500/1000;
L3 = 1300/1000;
L4 = 55/1000;
L5 = 1525/1000;
L45 = sqrt(L4^2 + L5^2);
L6 = 290/1000;

KUKARobotLink(1) = Link('a', 0,  'alpha', 0,     'd', L1, 'offset', 0, ...
    'revolute', 'qlim', [-37*pi/36 37*pi/36], 'modified');
KUKARobotLink(2) = Link('a', L2, 'alpha', pi/2,  'd', 0,  'offset', 0, ...
    'revolute', 'qlim', [-1*pi/9 13*pi/18], 'modified');
KUKARobotLink(3) = Link('a', L3, 'alpha', 0,     'd', 0,  'offset', -pi/2, ...
    'revolute', 'qlim', [-4*pi/5 5*pi/9], 'modified');
KUKARobotLink(4) = Link('a', L4, 'alpha', -pi/2, 'd', L5, 'offset', 0, ...
    'revolute', 'qlim', [-35*pi/18 35*pi/18], 'modified');
KUKARobotLink(5) = Link('a', 0,  'alpha', pi/2,  'd', 0,  'offset', 0, ...
    'revolute', 'qlim', [-2*pi/3 2*pi/3], 'modified');
KUKARobotLink(6) = Link('a', 0,  'alpha', -pi/2, 'd', L6, 'offset', 0, ...
    'revolute', 'qlim', [-35*pi/18 35*pi/18], 'modified');

KUKAqHome = [0 pi/2 -pi/2 0 0 0];
KUKAqZero = [0 0 0 0 0 0];
KUKARobot = SerialLink(KUKARobotLink, 'name', 'KUKA KR 340 R3330');
KUKARobot.plot(KUKAqHome, 'floorlevel', -1.5,'jaxes', 'noa')

%% Planteamiento de la Trayectoria (Tomado del archivo trayectoria.m)

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

trayectoria = trayectoria/10;
for i = 1:length(trayectoria)
    trayectoria(i,3) = trayectoria(i,3) + 1;
    trayectoria(i,1) = trayectoria(i,1) + 0.8;
end

%% Uso del toolbox de Peter Corke para la ejecución de la trayectoria

pose = zeros(4, 4, length(trayectoria));
for i = 1:length(trayectoria)
    pose(:,:,i) = transl(trayectoria(i,1), trayectoria(i,2), trayectoria(i,3))*troty(3*pi/4);
end

% Empleando el método jtraj()

qTray = KUKARobot.ikine(pose);

jTrayectoria = zeros(length(qTray) - 1, 6);
for i = 1:length(qTray) - 1
    jTrayectoria(i,:) = jtraj(qTray(i,:), qTray(i + 1,:), 1);
end

KUKARobot.plot(jTrayectoria)

% Usando el método ctraj()

cMTH = zeros(4, 4, length(pose) - 1);
for i=1:length(pose) - 1
    cMTH(:,:,i) = ctraj(pose(:,:,i), pose(:,:,i + 1), 1);
end

cTrayectoria = KUKARobot.ikine(cMTH);

KUKARobot.plot(cTrayectoria)