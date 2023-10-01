% This program calculates the amount of flow rate that goes through
% the outlet of the siphon

% Definitions 

g=9.81; % in m/s^2
gamma=9.81; % in kN/m^3
Q=input('define the flow rate in m^3/sec:');

% Known Head Losses 

hk12 =input('define the head loss in cm between locations 1 and 2: ');
hk23 =input('define the head loss in cm between locations 2 and 3: ');
hk34 =input('define the head loss in cm between locations 3 and 4: ');

% Diameters

D1=input('define the diameter of first section in cm: ');
D2=input('define the diameter of second section in cm: ');

% Distances from reference line

z1=input('define the distance of first location from the reference line in m: ');
z2=input('define the distance of second location from the reference line in m: ');
z3=input('define the distance of third location from the reference line in m: ');
z4=input('define the distance of fourth location from the reference line in m: ');


% Velocity at the surface of the reservoir

V1=input('define the velocity at location 1: ');


% Pressures at the surface of the reservoir and at the end of the siphon
% (open to the atmosphere)

P1=input('define the pressure at location 1: ');

P4=input('define the pressure at location 4: ');



% Bernoulli between 1 and 4

V4=sqrt((((V1)^2/(2*g)+(P1/gamma)+z1-(P4/gamma)-z4-((hk12+hk23+hk34)/100)))*2*g);



% Velocity of V2 

A1=(3.14)*((D1/100)^2)/4;
A2=(3.14)*((D2/100)^2)/4;

Q=V4*A2;

V2=Q/A1;
V3=Q/A2;


% Calculations 

% Bernoulli between 1 and 2 

P2=(((V1)^2)/(2*g)+(P1/gamma)+z1-((V2)^2)/(2*g)-z2-(hk12/100))*gamma;

% Bernoulli between 1 and 3 

P3=((((V1)^2)/(2*g)) +(P1/gamma)+z1-(((V3)^2)/(2*g))-z3-((hk12+hk23)/100))*gamma;