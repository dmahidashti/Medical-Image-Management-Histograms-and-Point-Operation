function [out_img] = apply_point_tfrm(in_img, C, B)

out_img = (in_img.*C)+B;

%Extract the row, column of the image
row = size(out_img, 1); % Effectively the x axis
column = size(out_img, 2); % Effectively the y axis
bins = min(out_img(:)):max(out_img(:)); % Define graylevels directly from the image pixel values
freq = zeros(size(bins)); % Define a matrix of zeros for freq
% Create a for loop to find the number of each graylevel present in the image
for i = 1:length(bins) 
    
    graylevel = bins(i); %Select a graylevel
    bins_count = find(out_img==graylevel);% Find all matching graylevels in the image
    freq(i) = length(bins_count); %Define frequency as the length of the array with the matched graylevels  
end

%Plotting
figure;
subplot(1,2,1)
imshow(out_img,[]); % Output Image
colorbar;
title("Intensity Scaling and Shifting for C= " + C + " and B=" + B);
subplot(1,2,2)
histogram(out_img)
title('Intensity Histogram')
xlabel('Graylevel');
ylabel('Frequency');
% bar(bins,freq); % Histogram
% xlabel('Graylevel');
% ylabel('Frequency');
% axis tight;
% grid;
% title('Histogram');
% figure;
% freq_normal = freq./(row.*column);%Normalizing
% bar(bins,freq_normal); % Histogram
% xlabel('Graylevel');
% ylabel('Frequency');
% axis tight;
% grid;
% title('Normalized Histogram');

end

