ii = [1:size(shp,1)]';
jj = ii;
sss = ones(size(shp,1),1);
IIshp = sparse(ii,jj,sss,size(shp,1),size(shp,2));

lvec = balanceDiv(shp,IIshp);
pf = (lvec.').*shp;
pf = abs(pf);

%ii = [1:Nx]';
%jj = [1:Nx]';
%sss = ones(Nx,1);
%Imat = sparse(ii,jj,sss);
%dvec = pf(Imat == 1)
%scl = 1./dvec
%sqmat = sparse(ii,jj,sqrt(scl))
%pf = sqmat*pf*sqmat

%pf = abs(shp).*abs(inv(shp).');
%vec = sum(pf,2);
%pf = pf./vec;

