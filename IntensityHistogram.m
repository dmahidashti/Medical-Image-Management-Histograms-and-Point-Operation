function [bins, freq] = IntensityHistogram(img,x,h,type)

% bins is the number of graylevels
% freq is the frequency of the graylevels
% img is the inputted image

%Extract the row, column and width of the image
row = size(img, 1); % Effectively the x axis
column = size(img, 2); % Effectively the y axis
slice = size(img, 3); % Effectively the z axis

bins = min(img(:)):max(img(:)); % Define graylevels directly from the image pixel values
freq = zeros(size(bins)); % Define a matrix of zeros for freq

% Create a for loop to find the number of each graylevel present in the image
for i = 1:length(bins) 
    
    graylevel = bins(i); %Select a graylevel
    bins_count = find(img==graylevel);% Find all matching graylevels in the image
    freq(i) = length(bins_count); %Define frequency as the length of the array with the matched graylevels  
end

freq(1) = 0;

% Graphing
if x=='y'
    
 if h=='n'%Show both image and histogram
     
    figure;
    subplot(1,2,1) 
    imshow(img,[]); % Display Image 
    colorbar;
    title(type);
    subplot(1,2,2)
    bar(bins,freq); % Histogram
    xlabel('Graylevel');
    ylabel('Frequency');
    %axis tight;
    grid;
    title(type, 'Histogram');
    
    else if h=='y' %Show only histogram
            
    bar(bins,freq); % Histogram
    xlabel('Graylevel');
    ylabel('Frequency');
    %axis tight;
    grid;
    title(type, 'Histogram');
    
    else if h=='nh' % Show normalized histogram
            
         freq_normal = freq./(row.*column.*slice);%Normalizing for volume
         %freq_normal = freq./(row.*column);%Normalizing for image
         bar(bins,freq_normal); % Histogram
        xlabel('Graylevel');
        ylabel('Frequency');
        axis tight;
        grid;
        title(type, 'Normalized Histogram');
        end
        end
 end
 else if x=='n'
        disp([' ']); 
    end

end

end

