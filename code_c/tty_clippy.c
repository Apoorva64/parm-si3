#include <parm.h>
#include <stdio.h>

void run()
{
	BEGIN();
	PUTCHAR(' ',' ',' ',' ','/',' ','\\','\n');
	PUTCHAR(' ',' ',' ','|',' ',' ','|','\n');
	PUTCHAR(' ',' ','@',' ',' ',' ','@','\n');
	PUTCHAR(' ',' ','|',' ',' ',' ','|','\n');
	PUTCHAR(' ',' ','|','|',' ','|','/','\n');
	PUTCHAR(' ',' ','|','|',' ','|','|','\n');
	PUTCHAR(' ','\\','|','\\','_','/','|','\n');
	PUTCHAR(' ','\\','_','_','_','_','/','\n');
	END();
}
