ENTRY(Reset_Handler)

__STACK_SIZE = 0x00000400;

MEMORY 
{
  ROM (wx) : ORIGIN = 0x00000000,  LENGTH = 1M
  RAM (rx) : ORIGIN = 0x000200000,  LENGTH = 256K
}


SECTIONS
{
  .text : 
  { 
    . = ALIGN(4);
    *(.text)
    *(.rodata);  
    . = ALIGN(4);
  } > ROM

 
  .data : 
  {   
    *(.data)
  } > RAM AT > ROM

  .bss : {
    *(.bss);
  } > RAM

}