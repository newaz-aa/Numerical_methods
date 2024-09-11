tic
a= randi(100000,1,1000000);  % creating a random 1D array with 1 million parameters
val= 12000;

low=1;
high= length(a);
mid= floor((low+high)/2);

while low<=high
    if a(mid)<val
        low= mid+1;
    elseif a(mid)>val
        high= mid-1;
    else
        out= 'value is found';
        val_index= mid;
        break;
    end

    mid= floor((low+high)/2);
end

if low>high
    out= 'value not found';
    val_index=nan;
end

out
val_index
toc
