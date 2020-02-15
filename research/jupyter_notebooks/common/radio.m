% Set-up some constants for the Yaesu FT-817ND and Yaesu FT-847
radioFreqAudioBwLow = 200 # Hz
radioFreqAudioBwHigh = 2600 # Hz
radioFreqAudioBw = radioFreqAudioBwHigh - radioFreqAudioBwLow # Hz

% Geometric mean for mid band
radioFreqAudioMidBand = sqrt(radioFreqAudioBwLow*radioFreqAudioBwHigh)
% radioFreqAudioMidBandNominal = 10*round(radioFreqAudioMidBand/10)
