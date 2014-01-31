labels = train2{7}.labels;
images_ = train2{7}.images;
images = [];
for j = 1: length(images_)
        pixels = images_(:,:,j);
        row = reshape(pixels,1,[]);
        images = [images; row];
end
labels2 = double(labels);
images2 = sparse(double(images));
model=train(labels2, images2, '-s 2');

testfeat = [];
for j = 1: length(test.images)
        pix = test.images(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end
testlab = (test.labels);
testimg=sparse(double(testfeat));
pred = predict(testlab,testimg,model);

C = confusionmat(labels, pred);

imagesc(C);
