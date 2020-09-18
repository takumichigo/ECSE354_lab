function [bv, bi] = backward_wave(v0,omega,phi, Z0,vp,z,t)
    bv = v0.*cos(omega.*(t+z./vp)+phi);
    bi = (v0./Z0).*cos(omega.*(t+z./vp)+phi);
