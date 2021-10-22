function [out_img] = image_subtraction(img1, img2)

% Define the x, y and z components of the input image 1
[x,y,z] = size(img1);

%Loop through all pixels using x, y and z components
for a=1:x
    for b=1:y
        for c=1:z
            out_img(a,b,c) = img1(a,b,c) - img2(a,b,c);
        end
    end
end

% Plotting
figure;
subplot(3,1,1);
imshow(img1,[]);
colorbar;
title('Pre Contrast');
subplot(3,1,2);
imshow(img2,[]);
colorbar;
title('Post Contrast');
subplot(3,1,3);
imshow(out_img,[]);
colorbar;
title('Perfusion Image | Subtraction of Image 2 from Image 1');

end

