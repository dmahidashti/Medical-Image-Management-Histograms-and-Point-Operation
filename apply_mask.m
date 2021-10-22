function [out_img] = apply_mask(img,img_mask)

out_img = img.*img_mask;
%Create backup mask
orginial_mask = img_mask;
%Inverse the mask
img_mask = ~img_mask;
%Find all tissue except pulm
rem_tissue = img.*img_mask;

%Plotting
figure;
subplot(4,2,1)
imshow(img,[]); % Input Image
colorbar;
title("Input Image | Before Masking ");
subplot(4,2,2)
histogram(img)
title("Input Image Histogram");
subplot(4,2,3)
imshow(out_img,[]); % Pulm Region
colorbar;
title("Pulmonary Region");
subplot(4,2,4)
histogram(out_img)
title("Pulmonary Region Histogram");
subplot(4,2,5)
imshow(rem_tissue,[]); % Remaining Tissue
colorbar;
title("Remaining Tissue");
subplot(4,2,6)
histogram(rem_tissue)
title("Remaining Tissue Histogram");
subplot(4,2,7)
imshow(orginial_mask,[]); % mask
colorbar;
title("Masking Image");
subplot(4,2,8)
histogram(orginial_mask)
title("Masking Image Histogram");

end

