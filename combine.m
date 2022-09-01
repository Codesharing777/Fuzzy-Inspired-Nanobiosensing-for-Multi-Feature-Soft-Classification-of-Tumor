function combine = combine(Y1,Y2)

length_tumor = length(Y1);
length_distance = length(Y2);

Z = zeros(length_tumor,length_distance);

for x = 1:length_tumor
    for y = 1:length_distance
        %Z(length_tumor-x+1,y) = Y1(x)*Y2(y);
        Z(length_tumor-x+1,y) = min(Y1(x),Y2(y));
    end
end

combine.Z = Z;

