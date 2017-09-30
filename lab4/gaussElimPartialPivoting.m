function [U, swappedAnswerVector] = gaussElimPartialPivoting(M, answerVector)
% gaussian elimination with full pivoting
[m,n] = size(M);
k=1;
j=1;
M = [M answerVector];
M
while (j <= m) && (k <= n)
   
    a=abs(M(j:end,k)); %find absolute value below the pivot position
    
    if max(a)==0
        k=k+1;
        continue    % if all zeros below (and possibly including) the pivot, no need to swap rows, so move on to next column, 
                    % but stay on same row! <- this is where k is important
        
    elseif (max(abs(a)) > 0)  
        b=M(j:end,k); %set b to be portion of k-th column below (and including) (j,k) position
        [~,indices] = max(abs(b)); %finds max value in vector b, adds it to indices vector
        idx = indices(1); %selects first index of max value
        idx=idx+j-1; %reindex to get correct index for full j-th column
        
        %swap rows to get rid of zero in pivot position
        swap = M(j,:);
        M(j,:) = M(idx,:); 
        M(idx,:) = swap;
        
    end
    
    M
    for i = j+1:m
        M(i,:) = M(i,:) - (M(i,k)/M(j,k))*M(j,:); % perform type III operations 
        M %print M to show intermediate steps
    end
    j=j+1;
    k=k+1;
end

U=M(1:m, 1:n);
swappedAnswerVector = M(:,n+1);