clc 
clear
close
pt=13;
L=3;
gr=6;
gt=6;
grr=10.^(gr/10);
gtr=10.^(gt/10);
ptr=10.^(pt/10);
pat=5;
%patr
Lamda=(3*10.^8)/(2.4*10.^9);

%matrixCell = cell(50, 50); % 3x3 cell array

% Populate the cell array with lists
%matrixCell{1, 1} = [1, 2, 3];    % List in the first cell
%matrixCell{1, 2} = [4, 5, 6];    % List in the second cell
%matrixCell{1, 3} = [7, 8, 9];    % List in the third cell
%matrixCell{2, 1} = [10, 11, 12]; % List in the fourth cell
% ... Continue populating the rest of the cells

% Access and display a list from a specific cell
%disp(matrixCell{1, 1});

AP1 = [70,25];
AP2 = [30,35];
AP3 = [70,55];
AP4 = [35,75];
AP5 = [70,85];
Walls=[20,0,20,100;20,20,100,20;40,30,100,30;40,40,100,40;40,50,100,50;40,30,40,50;50,30,50,50;60,30,60,50;70,30,70,50;80,30,80,50;90,30,90,50;40,60,100,60;40,70,100,70;40,80,100,80;40,60,40,80;50,60,50,80;60,60,60,80;70,60,70,80;80,60,80,80;90,60,90,80;20,90,100,90;30,90,30,100;40,90,40,100;50,90,50,100;60,90,60,100;70,90,70,100;80,90,80,100;90,90,90,100];






hold on
rectangle('Position',[0 0 100 100])
rectangle('Position',[0 0 20 100],'FaceColor',[0 0.5 .5])
rectangle('Position',[20 0 80 20],'FaceColor',[0.1 .6 0.3])
rectangle('Position',[90 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[80 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[70 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[60 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[50 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[40 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[30 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[20 90 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[90 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[80 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[70 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[60 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[50 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[40 70 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[90 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[80 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[70 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[60 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[50 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[40 60 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[90 40 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[80 40 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[70 40 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[60 40 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[50 40 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[40 40 10 10],'FaceColor',[0.2 0.2 0.9])
rectangle('Position',[90 30 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[80 30 10 10],'FaceColor',[.2 .2 0.9])
rectangle('Position',[70 30 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[60 30 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[50 30 10 10],'FaceColor',[0.2 .2 0.9])
rectangle('Position',[40 30 10 10],'FaceColor',[0.2 .2 0.9])

rectangle('Position',[70 25 1 1],'FaceColor',[0 0 0 ])
rectangle('Position',[30 35 1 1],'FaceColor',[0 0 0 ])
rectangle('Position',[70 55 1 1],'FaceColor',[0 0 0 ])
rectangle('Position',[35 75 1 1],'FaceColor',[0 0 0 ])
rectangle('Position',[70 85 1 1],'FaceColor',[0 0 0 ])

matrix_of_power1=zeros([100,100]);
matrix_of_power2=zeros([100,100]);
matrix_of_power3=zeros([100,100]);
matrix_of_power4=zeros([100,100]);
matrix_of_power5=zeros([100,100]);
for x_ref = 1:1:100
    for y_ref = 1:1:100 
        %plot(x_ref,y_ref,'.')
        matrix_of_power1(x_ref,y_ref)=power_recieved(AP1,[x_ref,y_ref],Walls);
        matrix_of_power2(x_ref,y_ref)=power_recieved(AP2,[x_ref,y_ref],Walls);
        matrix_of_power3(x_ref,y_ref)=power_recieved(AP3,[x_ref,y_ref],Walls);
        matrix_of_power4(x_ref,y_ref)=power_recieved(AP4,[x_ref,y_ref],Walls);
        matrix_of_power5(x_ref,y_ref)=power_recieved(AP5,[x_ref,y_ref],Walls);


    end
end
z=getnearestpoint([-52.166598444891550 -47.771374794033180 -53.757638348310294 -53.119994147875644 -58.657882066901510 ],matrix_of_power1,matrix_of_power2,matrix_of_power3,matrix_of_power4,matrix_of_power5);
%rectangle('Position',[10 90 0.5  0.5],'FaceColor',[0 0 0 ])

%hangeeb el rms of distance by getting the root mean square which
%root((access point distance-user distance)^2+.....)bas 2s2l dah eh dah msh
%el mafrood hangee root((x^2+y^2)) wdah kda 2a2rb distance lel ap 
%ya3ny hal howa kda hydeny el distance gahza?
%n free-space pl factor=2
%pl will be indoor propgation model bec within building?
% where is the pl(d0)?
%power=pt+y+x-pl(=PL(d0) + 10nlog(𝑑/d0)+(paf)) 
%eh 7etet el matrices el multiplied el kona 2olnha f a5er el quiz dah liha
%3leka bel value of the received power every X meters from the AP location a
%function 

%rulespar[]=[pt gt gr 
function power = power_recieved(APpoints, refpoints,walls)
d = sqrt((APpoints(1)-refpoints(1))^2+(APpoints(2)-refpoints(2))^2);
numbofwalls=count_crossed_walls(APpoints,refpoints,walls);
pt=13;
L=3;
gr=6;
gt=6;

%patr
lamda=(3*10.^8)/(2.4*10.^9);
    power=pt+gt+gr+20*log10(lamda)-20*log10(4*pi*d)-numbofwalls*L;
     
end


function num_crossed_walls = count_crossed_walls(point1, point2, walls)
   

    % Initialize counter for crossed walls
    num_crossed_walls = 0;

    % Loop through each wall (each set of four values)
    for i = 1:4:length(walls)
        wall_x1 = walls(i);
        wall_y1 = walls(i + 1);
        wall_x2 = walls(i + 2);
        wall_y2 = walls(i + 3);

        % Check if the line connecting point1 and point2 intersects the wall
        if is_line_intersecting(point1, point2, [wall_x1, wall_y1], [wall_x2, wall_y2])
            num_crossed_walls = num_crossed_walls + 1;
        end
    end
end
function is_intersecting = is_line_intersecting(point1, point2, wall_1, wall_2)
    % Check if the line segment defined by point1 and point2 intersects
    % with the line segment defined by wall_x and wall_y

    [xi, yi] = polyxpoly([point1(1), point2(1)], [point1(2), point2(2)], wall_1, wall_2);
z=size(xi);
    % If xi and yi are non-empty, there is an intersection
    if(z(1)==0 )
        is_intersecting = ~isempty(xi)&&isempty(yi);
        
    else
        
        x1=xi(1);
        y1=yi(1);
        
        if(is_point_on_segment(point1,[x1,y1],point2))
            is_intersecting=1;
        else 
            is_intersecting=0;
        end
    end
    

end
function is_on_segment = is_point_on_segment(p, q, r)
    % Check if point q is on the line segment defined by p and r

    is_on_segment = (q(1) <= max(p(1), r(1))) && (q(1) >= min(p(1), r(1))) &&(q(2) <= max(p(2), r(2))) && (q(2) >= min(p(2), r(2)));
end


%plot([0.3;0.5],[0.5;0.5],'k') %line from (0.3,0.5) to (0.5 0.5)

function getrefpoint=getnearestpoint(power,matrix1,matrix2,matrix3,matrix4,matrix5)
rmsd=zeros([100,100]);

for x_ref = 1:1:100
    for y_ref = 1:1:100 
    rms1=(matrix1(x_ref,y_ref)-power(1))^2 ;
    rms2=(matrix2(x_ref,y_ref)-power(2))^2 ;
    rms3=(matrix3(x_ref,y_ref)-power(3))^2 ;
    rms4=(matrix4(x_ref,y_ref)-power(4))^2 ;
    rms5=(matrix5(x_ref,y_ref)-power(5))^2 ;
    rmsd(x_ref,y_ref)=sqrt(rms1+rms2+rms3+rms4+rms5);
   
    end
end

minmum = min(min(rmsd));
[x,y]=find(rmsd==minmum);
%rectangle('Position',[x y 1 1],'FaceColor',[0 0 0 ])
plot(x,y,'*','MarkerSize',10,'Color',[0 0 0])
getrefpoint=[x,y];



end

