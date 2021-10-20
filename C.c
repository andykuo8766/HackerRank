#define tag 4


#if tag == 1
//"Hello World!" in C
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{

    char s[100];
    gets(s);
    printf("Hello, World!\n");
    printf("%s", s);
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return 0;
}

#elif tag == 2
//Sum and Difference of Two Numbers
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main()
{
    int x, y;
    float a, b;
    scanf("%d %d", &x, &y);
    scanf("%f %f", &a, &b);
    printf("%d %d\n", x + y, x - y);
    printf("%.1f %.1f\n", a+b, a-b);

    return 0;
}
#elif tag == 3
//Functions in C
#include <stdio.h>
/*
Add `int max_of_four(int a, int b, int c, int d)` here.
*/
int max_of_four(int a, int b, int c, int d) {

    int max = 0;
    if (a >= max) max = a;
    if (b >= max) max = b;
    if (c >= max) max = c;
    if (d >= max) max = d;
    return max;
}

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);

    return 0;
}
#elif tag == 4
//Pointers in C
#include <stdio.h>

void update(int* a, int* b) {
    // Complete this function   
    int sum  = *a + *b;
    int minus = 0;
    if (*a > *b) minus = *a - *b;
    else minus = *b - *a;
    *a = sum;
    *b = minus;
}

int main() {
    int a, b;
    int* pa = &a, * pb = &b;

    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}



#endif