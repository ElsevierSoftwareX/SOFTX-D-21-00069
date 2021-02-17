load('TEP_state_latest.mat', ...
    'x',...
    'sp',...
    'idv',...
    't',...
    'xmv_0',...
    'controller_init',...
    'integrator_init'...
    )

% load('InitVariables');
xInitial = x;
SetPoint_Init(1,:) = sp;
SetPoint_Init(2,:) = sp;
SetPoint_Init(3,:) = zeros(1,12);
IDV_Init(1,:) = idv;
IDV_Init(2,:) = idv;
IDV_Init(3,:) = zeros(1,28);
seed = 1000;
SP_deltaTRamp = 0;
Ts_base = 5e-4;
Ts_save = 0.05;

if (exist('controller_init', 'var'))
    Eadj_0 = controller_init(end, 1);
    SP17_0 = controller_init(end, 2);
    Fp_0 = controller_init(end, 3);
    r1_0 = controller_init(end, 4);
    r4_0 = controller_init(end, 5);
    r5_0 = controller_init(end, 6);
    r6_0 = controller_init(end, 6);
    r7_0 = controller_init(end, 8);
end
% 
% integrator_init = zeros(1, 17);
% controller_init = zeros(1, 8);
% if (exist('integrator_log', 'var'))
%     integrator_init = integrator_log(end,:);
% else
%     integrator_init = ones(1,17);
% end