%
clc
close all
clear all

%p is the reference
load("p_data.mat");
load("q_data.mat");

plot3(p(1,:),p(2,:),p(3,:),'r');
hold 
plot3(q(1,:),q(2,:),q(3,:),'b');
hold off

C=p*q';

[U D V]=svd(C);

rotation=U*V';

q1=rotation*q;

norm(p-q1);
norm(p-q);

figure
plot3(p(1,:),p(2,:),p(3,:),'r');                %this is when correspondence is given
hold 
plot3(q1(1,:),q1(2,:),q1(3,:),'b');
hold off



%When correspondence is not given
%*****************first iteration**********************************

[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
       q1=q(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
             end 
             size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q';
[U D V]=svd(C);
 rotation=U*V';
 q12=rotation*q;
save q_1iteration.mat q12

load("q_1iteration.mat");

 figure
plot3(p(1,:),p(2,:),p(3,:),'r')
hold
plot3(q12(1,:),q12(2,:),q12(3,:),'b')

%q12 is obtained after first iteration is stored in q_1iteratioin.mat file
%*****************second iteration*************************


[n,m]=size(p);
p1=p;
m1=m;
for i=1:m
        q1=q12(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
             end 
             size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q12';
[U D V]=svd(C);
 rotation=U*V';
 q22=rotation*q12;
 load("q_2iteration.mat");
 figure
 plot3(p(1,:),p(2,:),p(3,:),'r')
 hold
 plot3(q22(1,:),q22(2,:),q22(3,:),'b')



%******************* iteration number 3***************************

[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q22(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
             end 
             size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q22';
[U D V]=svd(C);
 rotation=U*V';
 q32=rotation*q22;
save q_3iteration.mat q32
load("q_3iteration.mat");
 
figure
 plot3(p(1,:),p(2,:),p(3,:),'r')
 hold
 plot3(q32(1,:),q32(2,:),q32(3,:),'b')


****************************4 iteration**************************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q32(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q32';
[U D V]=svd(C);
 rotation=U*V';
 q42=rotation*q32;
save q_4iteration.mat q42
load("q_4iteration.mat");
%**********************************5 iteartion**************************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q42(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q42';
[U D V]=svd(C);
 rotation=U*V';
 q52=rotation*q42;
save q_5iteration.mat q52
load("q_5iteration.mat");
%*****************************6 iteration**********************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q52(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q52';
[U D V]=svd(C);
 rotation=U*V';
 q62=rotation*q52;
save q_6iteration.mat q62
load("q_6iteration.mat");
%*****************************7 iteration**********************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q62(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q62';
[U D V]=svd(C);
 rotation=U*V';
 q72=rotation*q62;
save q_7iteration.mat q72
load("q_7iteration.mat");

%*****************************8 iteration**********************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q72(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q72';
[U D V]=svd(C);
 rotation=U*V';
 q82=rotation*q72;
save q_8iteration.mat q82
load("q_8iteration.mat");

%*****************************9 iteration**********************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q82(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q82';
[U D V]=svd(C);
 rotation=U*V';
 q92=rotation*q82;
save q_9iteration.mat q92
load("q_9iteration.mat");

%*****************************10 iteration**********************
[n,m]=size(p);
pfinal=zeros(3,m);
p1=p;
m1=m;
for i=1:m
        q1=q92(:,i);
             for j=1:m1
             q2(:,j)=norm(q1-p1(:,j),2);
            end 
            size(q2)
             [x,ix]=min(q2);
             pfinal(:,i)=p1(:,ix);
             p1(:,[ix])=[];
             m1=m1-1;
             q2=zeros(1,m1);
end

C=pfinal*q92';
[U D V]=svd(C);
 rotation=U*V';
 q10=rotation*q92;
save q_10iteration.mat q10
load("q_10iteration.mat");

figure
 plot3(p(1,:),p(2,:),p(3,:),'r')
 hold
 plot3(q10(1,:),q10(2,:),q10(3,:),'b')

