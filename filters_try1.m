
M = xlsread('t3.csv');
% figure('Name','Stethoscope_Original_VS_Filtered');
% plot(M(3:end,1),M(3:end,2));
x_steth=M(3:end,2);
t = M(3:end,1);
t=t-t(1);
X_sens = M(3:end,3);
% Hd_1 = bpftry;
% 
% y1 = filter(bpfriiv(),1,x);
% y1=y1(floor(length(bpfriiv())/2):end);
% y2 = filter(bpfriiv(),1,Q);
% y2=y2(floor(length(bpfriiv())/2):end);

%%
y_steth = filter(bpftry(),1,x_steth);
% y_steth = filter(lowpass(),x_steth);
y_steth=y_steth(floor(length(bpftry())/2):end);
y_sens = filter(bpftry(),1,X_sens);
% y_sens = filter(lowpass(),X_sens);
y_sens=y_sens(floor(length(bpftry())/2):end);
%%
% y_sens=y_sens';
% delay_samples = length(X_sens)-length(y_sens);
% % y_sens=[zeros(1,delay_samples) y_sens];
% y_sens(isnan(y_sens)) = [];
% [up,lo] = envelope(y_sens');
% % figure;hold on; plot(x_steth); plot(t(1:length(y_sens)),up-.3,t(1:length(y_sens)),lo-.3)
% figure;hold on; plot(x_steth); plot(up-.3);plot(lo-.3);plot(y_sens-.3)
% x_steth(isnan(x_steth)) = [];
% [up,lo] = envelope(x_steth');
% findpeaks(up,t(1:end-(length(t)-length(up))));
% figure; plot(up,t(1:end-(length(t)-length(up))));
% y_steth=y_steth';
% delay_samples = length(X_sens)-length(y_steth);
% y_steth=[zeros(1,1) y_steth]
 figure;hold on; plot(x_steth); plot(y_sens-.3)
% % hold on;
% t1 = (1:length(y_steth))/1600;
% % t1 = (1:length(y_steth));
% 
% figure('Name','Stethoscope_Original_VS_Filtered_5_12');
% subplot(2,1,1);
% plot(t,x_steth);
% 
% subplot(2,1,2);
% plot(t1,y_sens);
% % 
% % figure('Name','Stethoscope_Original_VS_Filtered_10_20');
% % subplot(2,1,1);
% % plot(t,x_steth);
% % 
% % subplot(2,1,2);
% % plot(t1,y_steth);
% % 
% % figure('Name','Stethoscopefiltered_VS_SensorFiltered_5_8');
% % subplot(2,1,1);
% % plot(t1,y_steth);
% % 
% % subplot(2,1,2);
% % plot(t1,y_sens);
% % 
% % 
% % figure('Name','All_mix');
% % plot(t,X_sens,t1,y_steth,t1,y_sens);
% % % plot(t,y1,t,y2);% xlim([0 0.1])
% % 
% % % 
% % xlabel('Time (s)')
% % ylabel('Amplitude')
% % legend('Original Signal','Filtered Data','Sensor_filtered');
% legend('Filtered Data','Sensor_filtered');