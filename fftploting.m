%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%$%%%
% Author :- Manas Kumar Mishra
% Why?:- To plot fft of a signal (Magnitude and phase values)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%$%%%

% Inputs are the fft values of discrete signal and sampling rate (Hz)
% Output is a plot with proper frequency mark on x-axis
function fftploting(fftValues, Fs)

    % Use periodic property to shift the values
    fftx = fftshift(fftValues);

    N = length(fftx);

    deltaF = Fs/N;
    faxis = -ceil(Fs/2):deltaF:ceil(Fs/2)-deltaF;

    figure;
    plot(faxis, abs(fftx)/N);
    xlabel("Frequency values");
    ylabel("Magnitude of fft");
    grid on;
    title("Magnitude response of the signal | X(omega)|/N ");

end

