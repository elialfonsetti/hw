int i;
alldata_lab = [];
for i = 1: length(train2)  
    alldata_lab = [alldata_lab, (train2{i}.labels)'];
end

trainingfeat = [];
for i = 1: length(train2) 
    for j = 1: length(train2{i}.images)
        pixels = train2{i}.images(:,:,j);
        row = reshape(pixels,1,[]);
        trainingfeat = [trainingfeat; row];
    end
end
lab = double(alldata_lab)';
img = sparse(double(trainingfeat));
model=train(lab, img, '-s 2');


testfeat = [];
for j = 1: length(test.images)
        pix = test.images(:,:,j);
        r = reshape(pix,1,[]);
        testfeat = [testfeat; r];
end
testlab = (test.labels);
testimg=sparse(double(testfeat));
pred = predict(testlab,testimg,model);

% using benchmark function
pred_labels = pred;
true_labels = (testlab);
err_rate=sum(pred_labels~=true_labels)./length(true_labels);
wrong=find(pred_labels~=true_labels);