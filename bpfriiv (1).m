function b = bpfriiv
%BPF Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and DSP System Toolbox 9.5.
% Generated on: 30-Nov-2017 11:53:20

% FIR Window Bandpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 100;  % Sampling Frequency

Fstop1 = 0.001 ;              % First Stopband Frequency was 0.001
Fpass1 = 0.16;             % First Passband Frequency was 0.13
Fpass2 = 0.28;             % Second Passband Frequency was 0.28
Fstop2 = 1;             % Second Stopband Frequency was 1
Dstop1 = 0.001;           % First Stopband Attenuation
Dpass  = 0.057501127785;  % Passband Ripple
Dstop2 = 0.001;           % Second Stopband Attenuation
flag   = 'scale';         % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fstop1 Fpass1 Fpass2 Fstop2]/(Fs/2), [0 ...
    1 0], [Dstop1 Dpass Dstop2]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
Hd = dsp.FIRFilter( ...
    'Numerator', b);

% [EOF]
