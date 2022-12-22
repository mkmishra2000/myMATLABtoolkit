%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name :- MANAS KUMAR MISHRA
% Task :- Show the waveform of the signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ShowTimedomainPlot(Signal, fsample, text)
     % Divide the both channel sounds

    firstChannel = Signal;

     % Length of the channel
     Nfirst = length(firstChannel);

     % timerange of the sound recording in both channels
     t_first = (0:Nfirst-1)/fsample;

     % plot the sound samples of both samples
     figure;
     plot(t_first, firstChannel, "linewidth", 0.8);
     xlim([0 max(t_first)]);
     grid minor;
     set(gca, 'FontName', 'Times New Roman', 'FontSize', 10);
%      ylabel("Amplitude");
     xlabel("seconds");
     ylabel("Amplitude");
     title("Result "+ text);
     
end