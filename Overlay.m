function [] = Overlay(img, img_mask, color, t)

% im = image(img);
% im.AlphaData=t;
% im = set(img, 'FaceAlpha', t);

im = img;
t = str2num(t);

if (color== '010')  % Code for green
    
    %Define the green mask based on the size
    % Use cat to catarate them onto a single array with dimension of 3
    green = cat(3, zeros(size(im)),  ones(size(im)), zeros(size(im)));
    imshow(im,[]); % Create image object to overlay on
    
    hold on; 
    h = imshow(green); %Create the image overlay
    hold off;
    img_mask = img_mask*t;
    set(h,'AlphaData',img_mask); % Use both the colour overlay and the transparency command (AlphaData) to overaly the image mask
    title('Image with Green + Transparency Overlay');
    colorbar;
    
elseif (color== '001')  % Code for blue
    
    %Define the blue mask based on the size
    % Use cat to catarate them onto a single array with dimension of 3
    blue = cat(3, zeros(size(img)),  zeros(size(img)), ones(size(img)));
    imshow(im,[]); % Create image object to overlay on
    
    hold on; 
    h = imshow(blue); %Create the image overlay
    hold off;
    img_mask = img_mask*t;
    set(h,'AlphaData',img_mask); % Use both the colour overlay and the transparency command (AlphaData) to overaly the image mask
    title('Image with Blue + Transparency Overlay');
    colorbar;

elseif (color== '100') % Code for red
    
    %Define the red mask based on the size
    % Use cat to catarate them onto a single array with dimension of 3
    red = cat(3, ones(size(img)),  zeros(size(img)), zeros(size(img)));
    imshow(im,[]); % Create image object to overlay on
    
    hold on; 
    h = imshow(red); %Create the image overlay
    hold off;
    img_mask = img_mask*t;
    set(h,'AlphaData',img_mask); % Use both the colour overlay and the transparency command (AlphaData) to overaly the image mask
    title('Image with Red + Transparency Overlay');
    colorbar;
    
end
end

