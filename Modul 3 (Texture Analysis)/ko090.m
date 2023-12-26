%ko090.m - MATRIKS KOOKURENSI ARAH 90 DERAJAT
function MatriksHasil=ko090(GambarAsli)
GambarAsli=double(GambarAsli);
Temp=zeros(256);
[tinggi,lebar]=size(GambarAsli);
for i=2:tinggi
for j=1:lebar
p=GambarAsli(i,j)+1;
q=GambarAsli(i-1,j)+1;
Temp(p,q) = Temp(p,q)+1 ;
Temp(q,p) = Temp(q,p)+1 ;
end
end
JumlahPixel=sum(sum(Temp));
MatriksHasil=Temp/JumlahPixel;