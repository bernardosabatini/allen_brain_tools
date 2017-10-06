function [ rgb ] = bsABrgb( ns, v1, v2, v3 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    

    sizeGrid = [67 41 58];
    rgb=zeros([sizeGrid(2:3) 3]);
    
    if ~isempty(v1)
        vmm=max(reshape(v1, 1, prod(sizeGrid)));
        rgb(:,:,1)=squeeze(v1(ns,:,:))/vmm;
    end
    
    if ~isempty(v2)
        vmm=max(reshape(v2, 1, prod(sizeGrid)));
        rgb(:,:,2)=squeeze(v2(ns,:,:))/vmm;
    end
    
    if ~isempty(v3)
        vmm=max(reshape(v3, 1, prod(sizeGrid)));
        rgb(:,:,3)=squeeze(v3(ns,:,:))/vmm;
    end
end

