function [vs , is] = standing_wave(v0,omega,phi, Z0,vp,z,t)
       vs = v0.*cos(omega*(t-z./vp)+phi)+v0.*cos(omega*(t+z./vp)+phi);
       is = (v0./Z0).*cos(omega*(t-z./vp)+phi)+(v0./Z0)*cos(omega*(t+z./vp)+phi);
end
