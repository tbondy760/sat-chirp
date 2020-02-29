## Return a column vector for raised cosine for the number of samples
function cv = rcos(numSamples)
    cv = (1 - cos(2*pi*([0:1:numSamples-1](:))/numSamples))/2;
endfunction