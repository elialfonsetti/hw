
% permutation of the data_set (the one with 10000 elements)
l = train2{7}.labels;
i = train2{7}.images;
index = randperm(numel(l));
l = l(index);
i = i(:,:,index);

% K = 1

%training 
l1 = l(1:9000);
i1_ = i(:,:,1:9000);
i1 = [];
for j = 1: length(i1_)
        pixels = i1_(:,:,j);
        row = reshape(pixels,1,[]);
        i1 = [i1; row];
end
l1 = double(l1);
i1 = sparse(double(i1));
model1=train(l1, i1, '-s 2 -c 8');

%test 
tl1 = l(9001:end);
ti1_= i(:,:,9001:end);
testfeat = [];
for j = 1: length(ti1_)
        pix = ti1_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti1=sparse(double(testfeat));
pred = predict(tl1,ti1,model1);

% K = 2

%training 
l2 = l(1:8000);
laux = l(9001:end);
l2 = [l2; laux];
i22_ = i(:,:,1:8000);
i2aux = i(:,:,9001:end);
i2_ = cat(3,i22_, i2aux);
i2 = [];
for j = 1: length(i2_)
        pixels = i2_(:,:,j);
        row = reshape(pixels,1,[]);
        i2 = [i2; row];
end
l2 = double(l2);
i2 = sparse(double(i2));
model2=train(l2, i2, '-s 2 -c 8');

%test 
tl2 = l(8001:9000);
ti2_= i(:,:,8001:9000);
testfeat = [];
for j = 1: length(ti2_)
        pix = ti2_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti2=sparse(double(testfeat));
pred = predict(tl2,ti2,model2);


% K = 3

%training 
l3 = l(1:7000);
laux = l(8001:end);
l3 = [l3; laux];
i33_ = i(:,:,1:7000);
i3aux = i(:,:,8001:end);
i3_ = cat(3,i33_, i3aux);
i3 = [];
for j = 1: length(i3_)
        pixels = i3_(:,:,j);
        row = reshape(pixels,1,[]);
        i3 = [i3; row];
end
l3 = double(l3);
i3 = sparse(double(i3));
model3=train(l3, i3, '-s 2 -c 8');

%test 
tl3 = l(7001:8000);
ti3_= i(:,:,7001:8000);
testfeat = [];
for j = 1: length(ti3_)
        pix = ti3_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti3=sparse(double(testfeat));
pred = predict(tl3,ti3,model3);

% K = 4

%training 
l4 = l(1:6000);
laux = l(7001:end);
l4 = [l4; laux];
i44_ = i(:,:,1:6000);
i4aux = i(:,:,7001:end);
i4_ = cat(3,i44_, i4aux);
i4 = [];
for j = 1: length(i4_)
        pixels = i4_(:,:,j);
        row = reshape(pixels,1,[]);
        i4 = [i4; row];
end
l4 = double(l4);
i4 = sparse(double(i4));
model4=train(l4, i4, '-s 2 -c 8');

%test 
tl4 = l(6001:7000);
ti4_= i(:,:,6001:7000);
testfeat = [];
for j = 1: length(ti4_)
        pix = ti4_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti4=sparse(double(testfeat));
pred = predict(tl4,ti4,model4);

% K = 5

%training 
l5 = l(1:5000);
laux = l(6001:end);
l5 = [l5; laux];
i55_ = i(:,:,1:5000);
i5aux = i(:,:,6001:end);
i5_ = cat(3,i55_, i5aux);
i5 = [];
for j = 1: length(i5_)
        pixels = i5_(:,:,j);
        row = reshape(pixels,1,[]);
        i5 = [i5; row];
end
l5 = double(l5);
i5 = sparse(double(i5));
model5=train(l5, i5, '-s 2 -c 8');

%test 
tl5 = l(5001:6000);
ti5_= i(:,:,5001:6000);
testfeat = [];
for j = 1: length(ti5_)
        pix = ti5_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti5=sparse(double(testfeat));
pred = predict(tl5,ti5,model5);


% K = 6

%training 
l6 = l(1:4000);
laux = l(5001:end);
l6 = [l6; laux];
i66_ = i(:,:,1:4000);
i6aux = i(:,:,5001:end);
i6_ = cat(3,i66_, i6aux);
i6 = [];
for j = 1: length(i6_)
        pixels = i6_(:,:,j);
        row = reshape(pixels,1,[]);
        i6 = [i6; row];
end
l6 = double(l6);
i6 = sparse(double(i6));
model6=train(l6, i6, '-s 2 -c 8');

%test 
tl6 = l(4001:5000);
ti6_= i(:,:,4001:5000);
testfeat = [];
for j = 1: length(ti6_)
        pix = ti6_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti6=sparse(double(testfeat));
pred = predict(tl6,ti6,model6);

% K = 7

%training 
l7 = l(1:3000);
laux = l(4001:end);
l7 = [l7; laux];
i77_ = i(:,:,1:3000);
i7aux = i(:,:,4001:end);
i7_ = cat(3,i77_, i7aux);
i7 = [];
for j = 1: length(i7_)
        pixels = i7_(:,:,j);
        row = reshape(pixels,1,[]);
        i7 = [i7; row];
end
l7 = double(l7);
i7 = sparse(double(i7));
model7=train(l7, i7, '-s 2 -c 8');

%test 
tl7 = l(3001:4000);
ti7_= i(:,:,3001:4000);
testfeat = [];
for j = 1: length(ti7_)
        pix = ti7_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti7=sparse(double(testfeat));
pred = predict(tl7,ti7,model7);

% K = 8

%training 
l8 = l(1:2000);
laux = l(3001:end);
l8 = [l8; laux];
i88_ = i(:,:,1:2000);
i8aux = i(:,:,3001:end);
i8_ = cat(3,i88_, i8aux);
i8 = [];
for j = 1: length(i8_)
        pixels = i8_(:,:,j);
        row = reshape(pixels,1,[]);
        i8 = [i8; row];
end
l8 = double(l8);
i8 = sparse(double(i8));
model8=train(l8, i8, '-s 2 -c 8');

%test 
tl8 = l(2001:3000);
ti8_= i(:,:,2001:3000);
testfeat = [];
for j = 1: length(ti8_)
        pix = ti8_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti8=sparse(double(testfeat));
pred = predict(tl8,ti8,model8);


% K = 9

%training 
l9 = l(1:1000);
laux = l(2001:end);
l9 = [l9; laux];
i99_ = i(:,:,1:1000);
i9aux = i(:,:,2001:end);
i9_ = cat(3,i99_, i9aux);
i9 = [];
for j = 1: length(i9_)
        pixels = i9_(:,:,j);
        row = reshape(pixels,1,[]);
        i9 = [i9; row];
end
l9 = double(l9);
i9 = sparse(double(i9));
model9=train(l9, i9, '-s 2 -c 8');

%test 
tl9 = l(1001:2000);
ti9_= i(:,:,1001:2000);
testfeat = [];
for j = 1: length(ti9_)
        pix = ti9_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti9=sparse(double(testfeat));
pred = predict(tl9,ti9,model9);


% K = 10

%training 
l10 = l(1001:end);
i10_ = i(:,:,1001:end);
i10 = [];
for j = 1: length(i10_)
        pixels = i10_(:,:,j);
        row = reshape(pixels,1,[]);
        i10 = [i10; row];
end
l10 = double(l10);
i10 = sparse(double(i10));
model10=train(l10, i10, '-s 2 -c 8');

%test 
tl10 = l(1:1000);
ti10_= i(:,:,1:1000);
testfeat = [];
for j = 1: length(ti10_)
        pix = ti10_(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end

ti10=sparse(double(testfeat));
pred = predict(tl10,ti10,model10);

%training
model1=train(l1, i1, '-s 2 c 2');
model2=train(l2, i2, '-s 2 c 2');
model3=train(l3, i3, '-s 2 c 2');
model4=train(l4, i4, '-s 2 c 2');
model5=train(l5, i5, '-s 2 c 2');
model6=train(l6, i6, '-s 2 c 2');
model7=train(l7, i7, '-s 2 c 2');
model8=train(l8, i8, '-s 2 c 2');
model9=train(l9, i9, '-s 2 c 2');
model10=train(l10, i10, '-s 2 c 2');

%prediction 
pred = predict(tl1,ti1,model1);
pred = predict(tl2,ti2,model2);
pred = predict(tl3,ti3,model3);
pred = predict(tl4,ti4,model4);
pred = predict(tl5,ti5,model5);
pred = predict(tl6,ti6,model6);
pred = predict(tl7,ti7,model7);
pred = predict(tl8,ti8,model8);
pred = predict(tl9,ti9,model9);
pred = predict(tl10,ti10,model10);

acc = [87 87.1 86.1 88 87.1 87.7 88.3 88.5 87.7 87.5];
acc = sum(acc,2)/10;

