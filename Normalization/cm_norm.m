clc;clear all;

%���룺�����ݹ�һ����-1��1֮�䡣
for i=1:3
    file_name = ['..\ʵ������\data\test_',num2str(i),'.mat'];
    data = load(file_name);
    d = data.d;
    d = MaxMinNormalization(d);
    d = 0.2*d;
    figure,pcolor(d),shading interp,axis ij
    set(gca,'FontSize',10);
    xlabel('','fontsize',12),ylabel('','fontsize',12);
    set(gca,'xaxislocation','top','box','off','TickDir','out');
    colorbar
    hcb=colorbar
    title(hcb,' ','fontsize',12)
    colormap('gray');
    filename=['..\ʵ������\data\test_',num2str(i),'.mat'];
    saveas(1,'..\�����������\test_',num2str(i),'.png');
    save(filename, 'd');
end