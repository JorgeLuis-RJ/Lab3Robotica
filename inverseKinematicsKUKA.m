function q = inverseKinematicsKUKA (T, elbow)
    L1 = 1045/1000;
    L2 = 500/1000;
    L3 = 1300/1000;
    L4 = 55/1000;
    L5 = 1525/1000;
    L45 = sqrt(L4^2 + L5^2);
    L6 = 290/1000;

    x = T(1,4);
    y = T(2,4);
    z = T(3,4);
    pw = [x y z];
    q1 = atan2(y, x);
    
    x2 = L2*cos(q1);
    y2 = L2*sin(q1);
    p2 = [x2 y2 L1];
    two_pw = pw - p2;
    c3 = (norm(two_pw)^2 - L3^2 - L45^2)/(2*L3*L45);
    s3 = sqrt(1 - c3^2);
    q3 = atan2(s3, c3);
    
    if (elbow == 1)
        q2 = atan2(L45*s3, L3 + L45*c3) + atan2(abs(z - L1), norm(pw(1:2)) - L2);
    else
        q2 = atan2(L45*s3, L3 + L45*c3) - atan2(abs(z - L1), norm(pw(1:2)) - L2);
    end
    
    q5 = atan2(sqrt(1 - T(3,3)^2), T(3,3));
    
    q6 = atan2(-T(3,2), T(3,1));
    
    q4 = atan2(T(2,3), T(1,3));
    
    q = [q1 q2 q3 q4 q5 q6];
end