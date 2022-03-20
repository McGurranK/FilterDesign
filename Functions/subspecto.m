function specto = subspecto(SigA,SigB,TitleA,TitleB,fsA,fsB, window, overlap)
  
% 
%         **** What is the subspecto function ****
%
%   **** subspecto, and STFT:
%        * The Function subspecto displays two sampled audio signals in a
%          subplot utilising Short-time Fourier Transform(STFT).
%        * STFT displays the frequncy spectrum over time.
%
%
%           Inputs
%           * SigA - Sampled data for first audio file.
%           * SigB - Sampled data for Second audio file. 
%           * TitleA - title for top sepctrogram
%           * TitleB - title for second spectrogram on plot
%           * fsA - Sampling Frequency of SigA
%           * fsB - Sampling Frequency of SigB
%           * window - Size of window used to divide the signal into segments
%            (Windowing Function)
%           * Overlap - Overlap between different windows
%
%           Outputs
%           *specto - subplot Spectrogram of sinA, and SigB.
%
%           E.G.1. Using Variables for Inputs
%
%                  window = 200;
%                  overlap = 50;
%                  TitleA= 'Spectrogram of Singal A'
%                  TitleB= 'Spectrogram of Signal B'
%                  specto = subspecto(SigA,SigB,TitleA,TitleB,fsA,fsB, window, overlap)
%
%           E.G.2. Inputing straight into function
%
% 'specto= subspecto(Signal,SignalC, 'Signal Spectrogram', 'Signal C Spectrogram', FS, FS, 100, 10)


subplot(2,1,1) % Subplot function to show filtered 
spectrogram(SigA,window,overlap,300,fsA,'yaxis');    %Spectrogram of filtered signal
title(TitleA)                        %Naming Filtered signal
 
specto= subplot(2,1,2); % Subplot function of unfiltered signal
 spectrogram(SigB,window,overlap,300,fsB,'yaxis');         %Spectrogram of original signal
 title(TitleB)                        %Naming Original Signal
% 
end
