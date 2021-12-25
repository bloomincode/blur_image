norm_img = double(imread('./images/robin.jpg')) ./255;
grey_img = norm_img(:,:,1)*0.30 + norm_img(:,:,2)*0.59 + norm_img(:,:,3)*0.11;

box_kernal = ones(3,3) ./ 7;
box_blur= conv2(grey_img(:,:,:), box_kernal ,'same');
gauss_blur = imgaussfilt(grey_img, 10);

montage({grey_img,box_blur, gauss_blur})
