#include <stdio.h>
#define FT() int main() {display(code);export(buf);return (0);}

char code[] = "$";

char buf[123456];

void concat(char *s, int len)
{
	static int p = 0;

	while (*s && len--)
		buf[p++] = *(s++);
	buf[p] = '\0';
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

void display(char *s)
{
	while (*s)
	{
		if (*s == 36)
			display_code();
		else
			concat(s, 1);
		s++;
	}
}

void export(char *data)
{
	FILE *file = fopen("Grace_kid.s", "w");
	if (file == NULL)
		return ;
	fprintf(file, "%s", data);
	fclose(file);
}

FT();
