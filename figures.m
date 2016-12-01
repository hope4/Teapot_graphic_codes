clc
close all
clear all


load("p_data.mat");
load("q_data.mat");
load("q_1iteration.mat");
load("q_2iteration.mat");
load("q_3iteration.mat");
load("q_4iteration.mat");
load("q_5iteration.mat");
load("q_6iteration.mat");
load("q_7iteration.mat");
load("q_8iteration.mat");
load("q_9iteration.mat");
load("q_10iteration.mat");


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q(1,:),q(2,:),q(3,:),'b');

figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q12(1,:),q12(2,:),q12(3,:),'b');

figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q22(1,:),q22(2,:),q22(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q32(1,:),q32(2,:),q32(3,:),'b');

figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q42(1,:),q42(2,:),q42(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q52(1,:),q52(2,:),q52(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q62(1,:),q62(2,:),q62(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q72(1,:),q72(2,:),q72(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q82(1,:),q82(2,:),q82(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q92(1,:),q92(2,:),q92(3,:),'b');


figure
plot3(p(1,:),p(2,:),p(3,:),'r');                
hold 
plot3(q10(1,:),q10(2,:),q10(3,:),'b');


