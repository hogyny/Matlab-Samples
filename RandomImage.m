function BigMatrix = CreateRandomImage(BigMatrix,cars, suns, CarMatrix,SunMatrix)
    
    for n =  1: cars
        if n < suns
            x = round(rand()* size(BigMatrix, 1));
            y = round(rand()* size(BigMatrix, 1));
            BigMatrix(x : x+size(CarMatrix,1)-1,y : y+size(CarMatrix,2)-1,1:3)= CarMatrix ;
            x = round(rand()* size(BigMatrix, 1)) ;
            y = round(rand()* size(BigMatrix, 1));
            BigMatrix(x : x+size(SunMatrix,1)-1,y : y+size(SunMatrix,2)-1,1:3)= SunMatrix ;
            
        else
            
            x = round(rand()* size(BigMatrix, 1));
            y = round(rand()* size(BigMatrix, 1));
            BigMatrix(x : x+size(CarMatrix,1)-1,y : y+size(CarMatrix,2)-1,1:3)= CarMatrix ;
            
         
        end
    end
end

%----------------main------------------------

clear;
BigMatrix = ones(2000,2000,3);
CarMatrix = imread("icon.png");
SunMatrix = imread("sun.png");


BigMatrix = CreateRandomImage(BigMatrix,5, 3, CarMatrix,SunMatrix);

imagesc(BigMatrix)
