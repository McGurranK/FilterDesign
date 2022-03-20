function [FilterSignal]= stopbandfilter( sig, FS, FO, PB1, SB1,SB2,PB2)

%         **** What is the stopbandfilter function ****
%
%   **** stopbandfilter :
%        * Takes an input signal, and filter characteristics of Bandstop
%        Filter.
%        * Filters audio to user specifications.
%
%   **** Inputs needed for function ****
%        * sig - Sampled audio data aray
%        * FS  - Sampling Frequency of audio
%        * FO  - Filter Order
%        * PB1 - End of passband in Hz
%        * SB1 - Start of Stopband in Hz
%        * SB2 - End of stopband in Hz
%        * PB2 - Continuation of passband in Hz
%
%   **** Outputs of this function ****
%        * FilterSignal- Filtered audio of whatever has been input.
%
%   **** Using function
%        * Input Audio Signal data, sampling frequency, and filter
%          variables.
%        * Give variable name for output signal.
%        * You can play the signal by using the sound() Function.
%
%   **** Example
%        * filtered= stopbandfilter( sig, fs, 200, 4500, 5000,14000,15000);

% Below is the code with with descriptions if u want to know how it works.



%fdesign for bandstop filter specification 
bandstop= fdesign.bandstop('N,Fp1,Fst1,Fst2,Fp2,C',FO ,PB1,SB1,SB2,PB2,FS);
bandstopfilt = design(bandstop);        %Filter Design

%Filter input signal with bandstop filter design to remove noise
FilterSignal= filter(bandstopfilt, sig);
end
    