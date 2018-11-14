clear all;
close all;
load('spectr.mat');
% seglen = [2,3,4];
% for itr = 1:numel(seglen)
%     figure;
%     spectrogram(x_steth,seglen(itr),seglen(itr)-1,seglen(itr),1600,'yaxis');
% %     figure;
% %     spectrogram(X_sens,seglen(itr),seglen(itr)-4,[],1600,'yaxis');
% end
figure('Name','20,15,20');
spectrogram(x_steth,20,15,20,1600,'yaxis');
figure('Name','2,1,2');
spectrogram(x_steth,2,1,2,1600,'yaxis');
figure('Name','30,25,30');
spectrogram(x_steth,30,25,30,1600,'yaxis');
figure('Name','45,40,45');
spectrogram(x_steth,45,40,45,1600,'yaxis');
figure('Name','60,55,60');
spectrogram(x_steth,60,55,60,1600,'yaxis');
figure('Name','80,70,80');
spectrogram(x_steth,80,70,80,1600,'yaxis');
figure('Name','120,100,120');
spectrogram(x_steth,120,100,120,1600,'yaxis');
figure('Name','150,130,150');
spectrogram(x_steth,150,130,150,1600,'yaxis');
