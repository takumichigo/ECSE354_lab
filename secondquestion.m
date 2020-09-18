v0 = 1;
omega = 2*pi*(10^9);
phi = 0;
Z0 = 50;
vp = 2*(10^8);
z = 0:0.001:0.4;
t = 0:5e-11:5e-9;
fv = zeros(length(z),length(t));
bv = zeros(length(z),length(t));



for m = 1: length(z)
    [fv(m,:),~] = forward_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
    [bv(m,:),~] = backward_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
end
    
for k=1:length(t)
    plot(z, fv(k,:),'b'); 
    hold on;
    plot(z, bv(k,:),'r'); 
    hold off;
    xlabel('z [m]');
    ylabel('v(z,t)[V]');
    title('instantaneous voltage on a lossless line');
    legend('v_f(z,t)',' v_b(z,t)');
    axis([0 4 -1 1]);
    M(k)=getframe;
end;