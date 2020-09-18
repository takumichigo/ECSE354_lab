


    z = 0:0.001:0.4;
    t = 0:5e-12:5e-9;
    vs = zeros(length(z),length(t));
    is = zeros(length(z),length(t));
    
    for m = 1: length(z)
        [vs(m,:),~] = standing_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
        [~,is(m,:)] = standing_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
    end
       
    
    