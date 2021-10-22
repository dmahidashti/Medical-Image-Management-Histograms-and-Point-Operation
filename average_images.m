function [out_img] = average_images(img1, img2, img3, img4, img5, img6)

switch nargin
    case 2                                                                  % Case 2
        % Define the parameters using the first image
[i,j,k] = size(img1);

% Create for loop to cycle through all pixels
for x=1:i
    for y=1:j
        for z=1:k
            out_img(x,y,z)=img1(x,y,z)+img2(x,y,z);
        end
    end
end
out_img = out_img./nargin;% Divide combined image by number of inputs
%Plotting
figure;
subplot(3,1,1);
imshow(img1,[]);
colorbar;
title('Image 1');
subplot(3,1,2);
imshow(img2,[]);
colorbar;
title('Image 2');
subplot(3,1,3);
imshow(out_img,[]);
colorbar;
title('Syncronized Average Image');
    case 3                                                                  % Case 3
        % Define the parameters using the first image
[i,j,k] = size(img1);

% Create for loop to cycle through all pixels
for x=1:i
    for y=1:j
        for z=1:k
            out_img(x,y,z)=img1(x,y,z)+img2(x,y,z)+img3(x,y,z);
        end
    end
end
out_img = out_img./nargin;% Divide combined image by number of inputs
%Plotting
figure;
subplot(4,1,1);
imshow(img1,[]);
colorbar;
title('Image 1');
subplot(4,1,2);
imshow(img2,[]);
colorbar;
title('Image 2');
subplot(4,1,3);
imshow(img3,[]);
colorbar;
title('Image 3');
subplot(4,1,4);
imshow(out_img,[]);
colorbar;
title('Syncronized Average Image');
    case 4                                                                  % Case 4
        % Define the parameters using the first image
[i,j,k] = size(img1);

% Create for loop to cycle through all pixels
for x=1:i
    for y=1:j
        for z=1:k
            out_img(x,y,z)=img1(x,y,z)+img2(x,y,z)+img3(x,y,z)+img4(x,y,z);
        end
    end
end
out_img = out_img./nargin;% Divide combined image by number of inputs
%Plotting
figure;
subplot(5,1,1);
imshow(img1,[]);
colorbar;
title('Image 1');
subplot(5,1,2);
imshow(img2,[]);
colorbar;
title('Image 2');
subplot(5,1,3);
imshow(img3,[]);
colorbar;
title('Image 3');
subplot(5,1,4);
imshow(img4,[]);
colorbar;
title('Image 4');
subplot(5,1,5);
imshow(out_img,[]);
colorbar;
title('Syncronized Average Image');
    case 5                                                                  % Case 5
% Define the parameters using the first image
[i,j,k] = size(img1);

% Create for loop to cycle through all pixels
for x=1:i
    for y=1:j
        for z=1:k
            out_img(x,y,z)=img1(x,y,z)+img2(x,y,z)+img3(x,y,z)+img4(x,y,z)+img5(x,y,z);
        end
    end
end
out_img = out_img./nargin;% Divide combined image by number of inputs
%Plotting
figure;
subplot(6,1,1);
imshow(img1,[]);
colorbar;
title('Image 1');
subplot(6,1,2);
imshow(img2,[]);
colorbar;
title('Image 2');
subplot(6,1,3);
imshow(img3,[]);
colorbar;
title('Image 3');
subplot(6,1,4);
imshow(img4,[]);
colorbar;
title('Image 4');
subplot(6,1,5);
imshow(img5,[]);
colorbar;
title('Image 5');
subplot(6,1,6);
imshow(out_img,[]);
colorbar;
title('Syncronized Average Image');
    case 6                                                                  % Case 6
% Define the parameters using the first image
[i,j,k] = size(img1);

% Create for loop to cycle through all pixels
for x=1:i
    for y=1:j
        for z=1:k
            out_img(x,y,z)=img1(x,y,z)+img2(x,y,z)+img3(x,y,z)+img4(x,y,z)+img5(x,y,z)+img6(x,y,z);
        end
    end
end
out_img = out_img./nargin;% Divide combined image by number of inputs
%disp(nargin);

%Plotting
figure;

subplot(7,2,1);
imshow(img1,[]);
colorbar;
title('Image 1');

subplot(7,2,2);
histogram(img1);
title('Image 1 Histogram');

subplot(7,2,3);
imshow(img2,[]);
colorbar;
title('Image 2');

subplot(7,2,4);
histogram(img2);
title('Image 2 Histogram');

subplot(7,2,5);
imshow(img3,[]);
colorbar;
title('Image 3');

subplot(7,2,6);
histogram(img3);
title('Image 3 Histogram');

subplot(7,2,7);
imshow(img4,[]);
colorbar;
title('Image 4');

subplot(7,2,8);
histogram(img4);
title('Image 4 Histogram');

subplot(7,2,9);
imshow(img5,[]);
colorbar;
title('Image 5');

subplot(7,2,10);
histogram(img5);
title('Image 5 Histogram');

subplot(7,2,11);
imshow(img6,[]);
colorbar;
title('Image 6');

subplot(7,2,12);
histogram(img6);
title('Image 6 Histogram');

subplot(7,2,13);
imshow(out_img,[]);
colorbar;
title('Syncronized Average Image');

subplot(7,2,14);
histogram(out_img);
title('Syncronized Average Image Histogram');


    otherwise
        disp("ERROR, RUN!!!");
end
end

