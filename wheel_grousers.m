
clc
clear all
n = 1;
% Values of theta and phi in radians
theta = 0.3491;
phi = 0.6109;

%Wheel Slip ratio
s = 0.8;


kc = 1400;       %modulus of cohesion of soil deformation
kphi = 820000;   %modulus of friction of soil deformation
y = 2472;        %Weight density of soil
c = 170;
K = 0.0178;      %Value of shear
Wv = 2200; %Weight of the vehicle
W = 367;  %Weight on a single wheel

Kc = 56.38;  %cohesive modulus of soil deformation
Ny = 47.294;  



for D = 0.1:0.1:1   %Diameter of the wheel
    b_values = [];
    DP_values = [];
    D_values =[];
    
    
    for b = 0.05:0.05:0.5  %Width of the wheel
        Ky = ((2*Ny/tan(phi))+1)*(cos(phi)^2);  %frictional modulus of soil deformation
        k = (kc/b)+ kphi;
        z = ((3/(3-n))*(W/(b*k*(D^0.5))))^(2/((2*n)+1));
        lo = z*((tan((pi/4)-(phi/2)))^2);     %length of soil ruptured by compression
        l = (D/2)*acos((1-(2*z/D)));          %length of the wheel's circumference in contact with the soil
        A = b*l;
        
        h = 0.06;                    % height of the grousers   
        N = 16;                      % Number of grousers
        Ng = (2*D)/(N/l);            %Number of grousers in ground contact
        alpha = acos(1-((2*z)/D));   %Angle of approach of wheel to soil
        
        Rr = Wv * 0.05;            %Rolling resistance
        Rg = Wv *(sin(theta));     %Gravitational resistance
        Rc = 2*(0.5*((kc + kphi)^(-1/3))*(((3*W)/(2*(2^0.5)))^(4/3))); %compression resistance
        %bulldozing resistance
        Rb = 6*((b*sin(alpha+phi)/(2*sin(alpha)*cos(phi)))*((2*z*c*Kc)+(y*(z^2)*Ky))+ (((lo^3)*y/3)*((pi/2)-phi)+(c*(lo^2))*(1+tan((pi/4)+(phi/2)))));
        
        %tractive force for smooth wheel
        H = 6*(((A*c*Ng*(1+(2*h/b)))+(W*tan(phi)*(1+(0.64*(h/b)*atan(b/h)))))*(1-((K/(s*l))*(1-(exp(((-s*l)/K)))))));
        
        %Drawbar pull
        DP = H - (Rc + Rb + Rg + Rr);
        DP_values = [DP_values, DP];
        D_values = [D_values, D];
        b_values = [b_values, b];
    end
    grid on
    hold on
    plot3(b_values, D_values, DP_values, 'LineWidth', 2)
    ylabel('Diameter of Wheel(m)');
    xlabel('Width of Wheel(m)');
    zlabel('Drawbar Pull');
    clear DP_values;
    clear D_values;
    clear b_values;
end

[x,y] = meshgrid(0:0.1:0.6,0:0.25:1);
z=0.*x+0.*y;
surf(x,y,z)
hold off









