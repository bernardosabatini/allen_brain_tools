function [ energy ] = bsABloadEnergy2(fName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    fid = fopen(fName, 'r', 'l' );
    if fid<0
        error('unable to open file')
        energy=[];
        return
    end
    sizeGrid = [67 41 58];
    energy = fread( fid, prod(sizeGrid), 'float' );
    energy = reshape(energy,sizeGrid);
    fclose(fid);

end

