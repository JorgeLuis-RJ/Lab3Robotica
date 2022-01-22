%% Modelo Numerico
close all
clc
clear variables
% Se ponen longitudes
L1 = 10.45;
L2 =  5.00;
L3 = 13.00;
L4 =  0.55;
L5 = 15.25;
L6 =  2.90;
% Definición de los eslabones
link(1) = Link('revolute', 'alpha',   +pi, 'a',   0, 'd', -L1,  'offset',     0, 'qlim', [-185*pi/180,  185*pi/180], 'modified');
link(2) = Link('revolute', 'alpha', +pi/2, 'a',  L2, 'd',   0,  'offset', -pi/2, 'qlim', [-130*pi/180,   20*pi/180], 'modified');
link(3) = Link('revolute', 'alpha',     0, 'a',  L3, 'd',   0,  'offset',     0, 'qlim', [-100*pi/180,  144*pi/180], 'modified');
% link(4) = Link('revolute', 'alpha', +pi/2, 'a', -L4, 'd', -L5,  'offset',     0, 'qlim', [-350*pi/180,  350*pi/180], 'modified');
% link(5) = Link('revolute', 'alpha', -pi/2, 'a',   0, 'd',   0,  'offset',     0, 'qlim', [-120*pi/180,  120*pi/180], 'modified');
% link(6) = Link('revolute', 'alpha', +pi/2, 'a',   0, 'd',   0,  'offset',     0, 'qlim', [-350*pi/180,  350*pi/180], 'modified');
% Creación de robot
Kuka_KR340 = SerialLink(link,'name','KR340')
% Definición del Tool
R_TCPa3 = [[1 0 0]' [0 -1 0]' [0 0 -1]'];
P_TCPen3 = [0 L5 0]';
T_TCPa3 = [[R_TCPa3 P_TCPen3]; [0 0 0 1]]
Kuka_KR340.tool = T_TCPa3;
%Coordenadas generalizadas
T_EF = Kuka_KR340.fkine([0 0 0]);
X_o = tr2rpy(T_EF,'deg');
X_p = T_EF(1:3,4);
X = [X_p; X_o']
% Visualización
hold on
Kuka_KR340.plot([0 0 0],'workspace',[-20.00 20.00 -20.00 20.00 -20.00 20.00],'noa','jaxes', 'view',[30 30])
trplot(eye(4), 'width',2,'arrow')
axis([-40.00 40.00 -40.00 40.00 -30.00 45.00]);
%% Calculo Jacobiano
deltaQ = 0.0001;
% X_imenos1= ; 
% X_i = ; 

J=[ 0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0;]

%%X_Punto = 


