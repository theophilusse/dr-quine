#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define FT() int main(void) {if (gen <= 0) return (0);display(code, gen);exportexec(buf, gen);return (0);}

char code[] = "#";
char isnotroot = '0';
int gen = 5;

char buf[123456];

void concat(char *s, int len)
{
	static int p = 0;

	while (*s && len--)
		buf[p++] = *(s++);
	buf[p] = '\0';
}

void itoa(char *dst, int num)
{
    char tmp[32];
    int  i;
    int  j;

    i = 0;
    if (num < 0)
	{
		*(dst++) = '-';
		num = -num;
	}
    if (num == 0)
	{
		*(dst++) = '0'; *dst = '\0';
		return;
	}
    while (num > 0)
	{
		tmp[i++] = (num % 10) + '0'; num /= 10;
	}
    j = 0;
    while (i > 0)
		dst[j++] = tmp[--i];
    dst[j] = '\0';
}

int my_strlen(char *s)
{
	int i;

	i = 0;
	while (*(s++))
		i++;
	return (i);
}

void display_code()
{
	char *c;
	int i;

	c = code;
	concat("\t.align 32\n", 11);
	concat("\t.type\tcode, @object\n", 21);
	concat("\t.size\tcode, 1234566\n", 21);
	concat("code:\n", 6);
	i = 0;
	while (*c)
	{
		if (i % 50 == 0)
		{
			if (i != 0)
				concat("\"\n", 2);
			if (my_strlen(c) < 50)
				concat("\t.string \"", 10);
			else
				concat("\t.ascii \"", 9);
		}
		if (*c == '"')
		{
			concat("\\\"", 2);
			c++;
		}
		else if (*c == '\n')
		{
			concat("\\n", 2);
			c++;
		}
		else if (*c == '\t')
		{
			concat("\\t", 2);
			c++;
		}
		else if (*c == '\\')
		{
			concat("\\\\", 2);
			c++;
		}
		else
		{
			concat(c, 1);
			c++;
		}
		i++;
	}
	concat("\"\n", 2);
}

void display(char *s, int gen)
{
	char num[32];

	while (*s)
	{
		if (*s == 36)
			display_code();
		else if (*s == 63)
		{
			itoa(num, gen - (isnotroot - '0'));
			concat(num, strlen(num));
		}
		else if (*s == 7)
			concat("1", 1);
		else
			concat(s, 1);
		s++;
	}
}

void exec(char *filename)
{
	char command[512];
	char name[64];

	name[0] = '\0';
	command[0] = '\0';
	strcat(name, filename);
	name[my_strlen(filename) - 2] = '\0';
	strcat(command, "as -o ");
	strcat(command, name);
	strcat(command, ".o ");
	strcat(command, name);
	strcat(command, ".s ; gcc -o ");
	strcat(command, name);
	strcat(command, " ");
	strcat(command, name);
	strcat(command, ".o -lc");
	strcat(command, "; ./");
	strcat(command, name);
	printf("%s\n", command); //// 
	system(command);
}

void exportexec(char *data, int gen)
{
	char filename[256];

	filename[0] = '\0';
	strcat(filename, "Sully_");
	itoa(filename + 6, gen - (isnotroot - '0'));
	strcat(filename, ".s");
	FILE *file = fopen(filename, "w");
	if (file == NULL)
		return ;
	fprintf(file, "%s", data);
	fclose(file);
	exec(filename);
}

FT();
