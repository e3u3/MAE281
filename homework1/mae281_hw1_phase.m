function dy = mae281_hw1_phase( t,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
dy=zeros(2,1);
dy(1)=y(2);
if(abs(y(1)-y(2))<=1)
    dy(2)=-y(2)-(y(1)-y(2))^3-0.5*(y(1)-y(2));
else
    dy(2)=-y(2)-2*(y(1)-y(2))+0.5;
end

