%%%%%%%%%%%%%%%%%%% I-Delaporte distribution 
% Set Values of the Parameters
a=1;
p=1/2;
rho=2/3;
r=2;
% Set Maximal Index
mMax=60;

% Computation of the PMF
res_IDel=IDelaporte_pmf(mMax,a,p,rho,r)
% Graphical illustration
bar(res_IDel)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%% Non-central Polya-Aeppli distribution 
% Set Values of the Parameters
l1=1;
l2=2;
rho=1/2;
% Set Maximal Index
mMax=25;

% Computation of the PMF
res_NCPA=NCPA_pmf(mMax,l1,l2,rho)
% Graphical illustration
bar(res_NCPA)

