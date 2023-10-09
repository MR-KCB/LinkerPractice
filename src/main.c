//#include <stdio.h>

typedef struct  {
  long major_ver; 
  long minor_ver; 
  long variant; 
  long variant2; 
} header_T;


//extern const unsigned char __bank_header[]; 
#pragma section rodata = ".bank_header"
const header_T BANK_HEADER =
{
  .major_ver = 22,
  .minor_ver = 92,
  .variant = 'C', 
  .variant2 = 'D' 
};
#pragma section default

unsigned long long getFactorial(int n);

int custom_main(){
  int myvar=0;
  int myresult=0;
  unsigned long long myfact=0;

  myresult = myvar + 10;
  myfact = getFactorial(9);
  
  return 0;
}

unsigned long long getFactorial(int n) {
    int i;
    unsigned long long fact = 1U;
    if (n > 1) {
        return n*getFactorial(n-1);
    }
    else {
        return 1;
    }
}