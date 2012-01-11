%LAPLACIAN  Calculates the Laplacian of an image
%
%    dst = Laplacian(src)
%    dst = Laplacian(src, 'KSize', 5, ...)
%
%  Input:
%    src: Source image.
%  Output:
%    dst: Destination image of the same size and the same number of channels as
%         src.
%  Options:
%	 'KSize': Aperture size used to compute the second-derivative filters. The
%             size must be positive and odd.
%	 'Scale': Optional scale factor for the computed Laplacian values. By
%             default, no scaling is applied.
%	 'Delta': Optional delta value that is added to the results prior to
%             storing them in dst .
%	 'BorderType': Pixel extrapolation method.
%
% The function calculates the Laplacian of the source image by adding up the
% second x and y derivatives calculated using the Sobel operator.
%
% This is done when ksize > 1 . When ksize = 1 , the Laplacian is computed by
% filtering the image with the following aperture:
%
%    [0, 1, 0; 1,-4, 1; 0, 1, 0]
%