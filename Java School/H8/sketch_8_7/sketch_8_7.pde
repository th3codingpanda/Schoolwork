int A = 0;
int B = 1;
int C = A;
 for (int i = 0; i< 10; i++)
 {
    C = A;
    A = B;
    B = C + B;
    println(A);
    //too much brain
 }
