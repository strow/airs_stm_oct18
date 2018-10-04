t = load('pagano_v7_v5_diffs');
figure
plot(t.d(1).x,t.d(1).y)
cd airs_stm_oct18/
cd Srf
cd Matlab
cd Figs
hgload(a(1).name)
d = run_extract_figdata(gca);
plot(d(2).x,d(2).y)

cd ~/Work/Airs/l1c_freq_adjust/l1c_freq_shift/
whos
g = load('indices_of_l1b_in_l1c.mat');
kc = g.l1b_ind_in_l1c;
ka = g.l1c_ind_for_l1b;
f = d(2).x;bt = d(2).y;
cc = t.d(1).y;
btmod = bt;
btmod(ka) = cc(kc);
btmod = bt;
btmod(ka) = btmod(ka) + cc(kc);
clf
plot(f,bt)
hold on;
plot(f,btmod)
figure
plot(f,bt-btmod)
% airs2cris paths
addpath ~/Git/airs_decon/source
addpath ~/Git/ccast/source
opt1.hpod = 1;
opt1.scorr = 1;
sfile = '/asl/matlab2012/srftest/srftables_m140f_withfake_mar08.hdf';
rmod = bt2rad(f,btmod);
[crad, cfrq, opt2 ] = airs2cris(rmod,f,sfile,opt1);
[crad, cfrq, opt2 ] = airs2cris(rmod',f,sfile,opt1);
r = bt2rad(f,bt);
[xcrad, xcfrq, xopt2 ] = airs2cris(r',f,sfile,opt1);
a2c_ref = rad2bt(cfrq,xcrad);
a2c_mod = rad2bt(cfrq,crad);
figure
plot(cfrq,a2c_ref)
hold on;
plot(cfrq,a2c_mod)
clf
plot(cfrq,a2c_mod)
plot(xcrad)
plot(crad)
plot(rmod')
whos rmod
sfile
opt1
[crad, cfrq, opt2 ] = airs2cris(rmod',f,sfile,opt1);
plot(crad)
crad(1:10)
plot(f,rmod-r)
figure
plot(f,isnan(rmod))
k = find(isnan(rmod) ==1);
plot(f,btmod)
hold on;
plot(f(k),btmod(k),'o')
length(k)
for i=1:32
vline(f(k),'r-')
end
btmod(k) = (btmod(k-1) + btmod(k+1))/2;
clf
plot(f,btmod)
plot(f,isnan(btmod))
k = find(isnan(btmod) ==1)
btmod(k) = btmos(k-2);
btmod(k) = btmod(k-2);
plot(f,isnan(btmod))
plot(f,btmod)
rmod = bt2rad(f,btmod);
[crad, cfrq, opt2 ] = airs2cris(rmod',f,sfile,opt1);
[crad
a2c_mod = rad2bt(cfrq,crad);
plot(f,a2c_ref)
plot(cfrq,a2c_ref)
hold on;
plot(cfrq,a2c_)
plot(cfrq,a2c_mod)
clf
plot(cfrq,a2c_mod-a2c_ref)
toms_diff_in_a2c_format = run_extract_figdata(gca);
figure(1);
dsno = run_extract_figdata(gca);
dsno
figure
plot(cfrq,toms_diff_in_a2c_format(1).y)
hold on;
plot(dsno(1).x,dsno(1).y)
grid
hl = legend('Pagano','SNO Diff')
pwd
hgsave('pagano_d1_with_sno_diff_on_chirp')
y1 = toms_diff_in_a2c_format(1).y;
y2 = dsno(1).y;
corrcoef(y1,y2)
figure
plot(cfrq,isnan(y1))
hold on;
plot(cfrq,isnan(y2))
y1(isnan(y1)) = 0;
y2(isnan(y2)) = 0;
corrcoef(y1,y2)
whos
figure(7)
whos a2c_ref
figure
plot(cfrq,a2c_ref)
pwd
whos -file lls_version_pagano_v7_v5_diffs.mat
load lls_version_pagano_v7_v5_diffs.mat  readme*
whos readm*
readme1
readme2
readme3
commandhistory