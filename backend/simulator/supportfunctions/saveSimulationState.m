x = xFinal;
sp = setpoints(end,:);
idv = idv_list(end,:);
t = tout(end);
xmv_0 = xFinal.signals(1).values(39:50);
controller_init = controller_out_init(end,:);
integrator_init = integrator_log(end,:);

save('mode_one_no_faults.mat', ...
    'x',...
    'sp',...
    'idv',...
    't',...
    'xmv_0',...
    'controller_init',...
    'integrator_init'...
    );

    