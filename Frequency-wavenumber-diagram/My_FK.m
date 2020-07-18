% clc;clear all;
% load 'hanzaotest_4.mat';
% load 'quzaotest_4.mat';
% load xiaoboquzao2.mat;
% load noise_3.mat;
% load .\仿真数据\50轮\subsample_signal_101.npy.mat;
% M_r =subsample;
% load .\仿真数据\50轮\signal_d.npy.npy.mat;
% M_r =subsample;
% load .\仿真数据\50轮\denoise_signal_101.npy.mat;
M_r = denoise;
% M_r = mapminmax(M_r,0,1);
% M_r = MaxMinNormalization(M_r);
% F =fftshift(fft2(seis_origin1));
% F =fftshift(fft2(seis_sam1));
M_r=double(squeeze(M_r));
% M_r = (M_r-min(M_r(:)))/(max(M_r(:))-min(M_r(:)));
F =fftshift(fft2(M_r));
% F =fftshift(fft2(X1));
[a,b]=size(F);
a1=round(a/2);
a2=a1-a+1; 
b1=round(b/2);
b2=b1-b+1;
% figure;
% set(gcf,'position',[100 300 300 240])
figure( 'position',[200 150 320 350]);
% pcolor([b2:b1]/b,[0:248]/249,log(1+abs(F(252:500,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:373]/374,log(1+abs(F(377:750,:)))), shading interp, axis ij
pcolor([b2:b1]/b,[0:748]/749,log(1+abs(F(752:1500,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:998]/999,log(1+abs(F(1002:2000,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:30]/31,log(1+abs(F(34:64,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:62]/63,log(1+abs(F(66:128,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:126]/127,log(1+abs(F(130:256,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:254]/255/0.003,log(1+abs(F(258:512,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:398]/399,log(1+abs(F(402:800,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:348]/349,log(1+abs(F(352:700,:)))), shading interp, axis ij
% pcolor([b2:b1]/b,[0:114]/115,log(1+abs(F(118:232,:)))), shading interp, axis ij

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca,'FontSize',10);
% xlabel('normalised wavenumber','fontsize',10),ylabel('normalised frequency','fontsize',10);
% title('original data','position',[0 1.25]);
% set(gca,'xaxislocation','top','box','off','TickDir','out');
% colorbar
% hcb=colorbar
% title(hcb,' ','fontsize',12)
% colormap(mycmap);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set(gca,'FontSize',10);
xlabel({'Normalized Wavenumber', '(f)'},'fontsize',12);
ylabel('Normalized Frequency(Hz)','fontsize',12);

% set(gca,'XTick',-0.025:0.01:0.025);
% set(gca,'XTicklabel',{'-0.02','-0.01','0','0.01','0.02'});
% 
% set(gca,'YTick',0:20:100);
% set(gca,'YTicklabel',{'0','20','40','60','80','100'});
% 
% set(gca,'xaxislocation','top','box','off','TickDir','out');
% colorbar
% hcb=colorbar;
% title(hcb,' ','fontsize',12)
colormap(mycmap);
% colormap('gray');