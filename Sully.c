#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define FT() int main(void) {int gen = 5;if (gen <= 0) return (0);display(code, gen);exportexec(buf, gen);return (0);}

char code[] = "#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n#define FT() int main(int argc, char **argv) {int gen = $;if (gen <= 0) return (0);display(code, gen, argv[0]);exportexec(buf, gen, argv[0]);return (0);}\n\nchar code[] = \"@\";\nint isnotroot = \a;\n\nchar buf[12345];\n\nvoid concat(char *s, int len)\n{\n\tstatic int p = 0;\n\n\twhile (*s && len--)\n\t\tbuf[p++] = *(s++);\n\tbuf[p] = '\\0';\n}\n\nvoid itoa(char *dst, int num)\n{\n\tif (num < 0)\n\t{\n\t\tnum *= -1;\n\t\t*(dst++) = '-';\n\t}\n\tif (num == 0)\n\t\t*(dst++) = '0';\n\twhile (num != 0)\n\t{\n\t\t*(dst++) = (num % 10) + '0';\n\t\tif (num == 0)\n\t\t\tbreak;\n\t\tnum /= 10;\n\t}\n\t*dst = '\\0';\n}\n\nvoid display_code()\n{\n\tchar *c;\n\n\tc = code;\n\twhile (*c)\n\t{\n\t\tif (*c == '\"')\n\t\t{\n\t\t\tconcat(\"\\\\\\\"\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\n')\n\t\t{\n\t\t\tconcat(\"\\\\n\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\t')\n\t\t{\n\t\t\tconcat(\"\\\\t\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\\\')\n\t\t{\n\t\t\tconcat(\"\\\\\\\\\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tconcat(c, 1);\n\t\t\tc++;\n\t\t}\n\t}\n}\n\nvoid display(char *s, int gen, char *progname)\n{\n\tchar num[32];\n\n\twhile (*s)\n\t{\n\t\tif (*s == 64)\n\t\t\tdisplay_code();\n\t\telse if (*s == 36)\n\t\t{\n\t\t\titoa(num, gen - isnotroot);\n\t\t\tconcat(num, strlen(num));\n\t\t}\n\t\telse if (*s == 7)\n\t\t\tconcat(\"1\", 1);\n\t\telse\n\t\t\tconcat(s, 1);\n\t\ts++;\n\t}\n}\n\nvoid exec(char *filename)\n{\n\tchar command[512];\n\n\tcommand[0] = '\\0';\n\tstrcat(command, \"gcc \");\n\tstrcat(command, filename);\n\tstrcat(command, \" -o \");\n\tfilename[strlen(filename) - 2] = '\\0';\n\tstrcat(command, filename);\n\tstrcat(command, \"; ./\");\n\tstrcat(command, filename);\n\tsystem(command);\n}\n\nvoid exportexec(char *data, int gen, char *progname)\n{\n\tchar filename[256];\n\n\tfilename[0] = '\\0';\n\tstrcat(filename, \"Sully_\");\n\titoa(filename + 6, gen - isnotroot);\n\tstrcat(filename, \".c\");\n\tFILE *file = fopen(filename, \"w\");\n\tif (file == NULL)\n\t\treturn ;\n\tfprintf(file, \"%s\", data);\n\tfclose(file);\n\texec(filename);\n}\n\nFT();\n";
int isnotroot = 0;

char buf[12345];

void concat(char *s, int len)
{
	static int p = 0;

	while (*s && len--)
		buf[p++] = *(s++);
	buf[p] = '\0';
}

void itoa(char *dst, int num)
{
	if (num < 0)
	{
		num *= -1;
		*(dst++) = '-';
	}
	if (num == 0)
		*(dst++) = '0';
	while (num != 0)
	{
		*(dst++) = (num % 10) + '0';
		if (num == 0)
			break;
		num /= 10;
	}
	*dst = '\0';
}

void display_code()
{
	char *c;

	c = code;
	while (*c)
	{
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
	}
}

void display(char *s, int gen)
{
	char num[32];

	while (*s)
	{
		if (*s == 64)
			display_code();
		else if (*s == 36)
		{
			itoa(num, gen - isnotroot);
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

	command[0] = '\0';
	strcat(command, "gcc ");
	strcat(command, filename);
	strcat(command, " -o ");
	filename[strlen(filename) - 2] = '\0';
	strcat(command, filename);
	strcat(command, "; ./");
	strcat(command, filename);
	system(command);
}

void exportexec(char *data, int gen)
{
	char filename[256];

	filename[0] = '\0';
	strcat(filename, "Sully_");
	itoa(filename + 6, gen - isnotroot);
	strcat(filename, ".c");
	FILE *file = fopen(filename, "w");
	if (file == NULL)
		return ;
	fprintf(file, "%s", data);
	fclose(file);
	exec(filename);
}

FT();
