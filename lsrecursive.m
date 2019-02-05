function [H,theta,L] = lsrecursive(H,theta,L,phi,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

gn=H*phi;
dn=1+(phi'*gn);
H=H-((1/dn)*(gn*gn'))
en=y-(phi'*theta)
theta=theta+((en/dn)*gn)
L=L+((en^2)/dn)

end

