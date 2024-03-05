clc
close all
clear all

rectangle('Position',[0,0,6,15]);
rectangle('Position',[6,0,8,15]);
rectangle('Position',[14,0,8,8]);
rectangle('Position',[14,8,8,7]);
rectangle('Position',[22,0,3,15]);
rectangle('Position',[25,0,2,15]);
rectangle('Position',[27,0,3,15]);
rectangle('Position',[30,0,8,8]);
rectangle('Position',[30,8,8,7]);
rectangle('Position',[38,0,8,15]);
rectangle('Position',[46,0,6,15]);
rectangle('Position',[0,15,2,5]);
rectangle('Position',[2,16.5,4,3.5]);
rectangle('Position',[6,16.5,4,3.5]);
rectangle('Position',[10,16.5,4,3.5]);
rectangle('Position',[14,16.5,4,3.5]);
rectangle('Position',[18,16.5,4,3.5]);
rectangle('Position',[22,16.5,4,3.5]);
rectangle('Position',[26,16.5,4,3.5]);
rectangle('Position',[30,16.5,4,3.5]);
rectangle('Position',[34,16.5,4,3.5]);
rectangle('Position',[38,16.5,4,3.5]);
rectangle('Position',[42,16.5,4,3.5]);

hold on
plot(6,15.5625,'s');
plot(17.5,4,'s');
plot(25.5,15.5625,'s');
plot(33.5,4,'s');
plot(45,15.5625,'s');

x_aps=[6,17.5,25.5,33.5,45];
y_aps=[15.625,4,15.625,4,15.625];
x_walls=[0 52;6 6.005;14 14.005;22 22.005;25 25.005;27 27.005;30 30.005;38 38.005;46 46.005;52 52.005;14 22;30 38;2 46;6 6.005;10 10.005;14 14.005;18 18.005;22 22.005;26 26.005;30 30.005;34 34.005;38 38.005;42 42.005;46 46.005;2 2.005];
y_walls=[15 15.005;0 15;0 15;0 15;0 15;0 15;0 15;0 15;0 15;0 15;8 8.005;8 8.005;16.5 16.5005;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;16.5 20;15 20];
power_ap=[];
powertotal=[];
Pos=[];

for x_ref = 1:1:52
    for y_ref = 1:1:20 
        plot(x_ref,y_ref,'.')
        
        for n=1:1:5
          counter=0;
          x_ap=x_aps(n);
          y_ap=y_aps(n);
          Dlos=sqrt((x_ap-x_ref)^2+(y_ap-y_ref)^2);
          Path_loss=((4*pi*Dlos)/0.125)^3;
          path_loss_db=10*log10(Path_loss);
          x_los=[x_ref x_ap];
          y_los=[y_ref y_ap];
          
          for w=1:1:25
              x_wall=x_walls(w,:);
              y_wall=y_walls(w,:);
              line(x_wall,y_wall);
              [x_int,y_int]=curveintersect(x_wall,y_wall,x_los,y_los);
              counter=counter+length(x_int);
          end
  
          pr=-10-path_loss_db-(3*counter);
          power_ap=[power_ap,pr];
          
        end
        powertotal=[powertotal;power_ap]; 
        Pos=[Pos;x_ref y_ref];    
        power_ap=[];
        
    end
end

% powertotal
% Pos

for i=1:1:5
        D=[Pos(:,1),Pos(:,2),powertotal(:,i)];
        [Du,D1] = unique(D(:,1));
        Dd = diff(D1);
        Dr = reshape(D, Dd(1), [], size(D,2));
        X = Dr(:,:,1);
        Y = Dr(:,:,2);
        Z = Dr(:,:,3);
        figure
        contourf(X, Y, Z)
end
 Dtot=[Pos(:,1),Pos(:,2),max(powertotal.').'];
        [Du,D1] = unique(Dtot(:,1));
        Dd = diff(D1);
        Dr = reshape(Dtot, Dd(1), [], size(Dtot,2));
        X = Dr(:,:,1);
        Y = Dr(:,:,2);
        Z = Dr(:,:,3);
        figure
        contourf(X, Y, Z)

input=[-230 -270 -225 -100 -90];
Rms=[];

for c=1:1:length(powertotal)
    Rms_temp=(input(1)-powertotal(c,1))^2+(input(2)-powertotal(c,2))^2+(input(3)-powertotal(c,3))^2+(input(4)-powertotal(c,4))^2+(input(5)-powertotal(c,5))^2;
    Rms=[Rms Rms_temp]; 
                
end

MinPos=find(Rms==min(Rms))
Pos(MinPos,:)

