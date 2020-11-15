function q = IK(x,y,z,phi)
    l1 = .24;
    l2 = .2;
    l3 = .194;
    l4 = .205;

    r = sqrt(x^2+y^2);
    q1 = round(atan2(y,x),6);
    q2 = round(asin((z-l1)/l2),6);
    q3 = -q2;
    q4 = round(r-l3-l4-l2*cos(q2),6);
    q5 = phi;
    q = [q1,q2,q3,q4,q5];
end
