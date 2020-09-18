function [fv, fi] = forward_wave(v0,omega,phi,Z0,vp,z,t)
    fv = v0.*cos((omega.*(t-(z./vp)))+phi);
    fi = (v0./Z0).*cos((omega.*(t-(z./vp)))+phi);
end
