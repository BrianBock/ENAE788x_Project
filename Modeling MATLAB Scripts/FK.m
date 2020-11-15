function Tn = FK(q1,q2,q3,q4,q5,x)
    l1 = .24;
    l2 = .2;
    l3 = .194;
    l4 = .205;
    n = 5;
    
    DH=[q1,l1,0,pi/2; % frame 0 to 1
    q2,0,l2,0; % frame 1 to 2
    q3+(pi/2),0,0,pi/2; % frame 2 to 3
    0,l3+q4,0,0; % frame 3 to 4
    q5,l4,0,0]; % frame 4 to n

    A = cell(1,n); 
    for i = 1:n
        A{i}=[cos(DH(i,1)),-sin(DH(i,1))*cos(DH(i,4)),sin(DH(i,1))*sin(DH(i,4)),DH(i,3)*cos(DH(i,1));...
              sin(DH(i,1)),cos(DH(i,1))*cos(DH(i,4)),-cos(DH(i,1))*sin(DH(i,4)),DH(i,3)*sin(DH(i,1));...
              0,sin(DH(i,4)),cos(DH(i,4)),DH(i,2);0,0,0,1]; 
    end
    
    Ti = cell(1,n); 
    for i = 1:n
        X = eye(4);
        j = 1;
        while j <= i
            X = X*A{j};
            j = j+1;
        end  
        Ti{i} = X;
    end
    Tn = Ti{x};
end