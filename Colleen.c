#include <stdio.h>

char code[] = "#include <stdio.h>\n\nchar code[] = \"@\";\n\nchar buf[12345];\n\nvoid concat(char *s, int len)\n{\n\tstatic int p = 0;\n\n\twhile (*s && len--)\n\t\tbuf[p++] = *(s++);\n\tbuf[p] = '\\0';\n}\n\nvoid display_code()\n{\n\tchar *c;\n\n\tc = code;\n\twhile (*c)\n\t{\n\t\tif (*c == '\"')\n\t\t{\n\t\t\tconcat(\"\\\\\\\"\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\n')\n\t\t{\n\t\t\tconcat(\"\\\\n\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\t')\n\t\t{\n\t\t\tconcat(\"\\\\t\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse if (*c == '\\\\')\n\t\t{\n\t\t\tconcat(\"\\\\\\\\\", 2);\n\t\t\tc++;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tconcat(c, 1);\n\t\t\tc++;\n\t\t}\n\t}\n}\n\nvoid display(char *s)\n{\n\twhile (*s)\n\t{\n\t\tif (*s == 64)\n\t\t\tdisplay_code();\n\t\telse\n\t\t\tconcat(s, 1);\n\t\ts++;\n\t}\n}\n\nint main()\n{\n\t/*\n\t * First comment\n\t*/\n\tdisplay(code);\n\tprintf(\"%s\", buf);\n\treturn (0);\n}\n/*\n * Second comment\n*/";

char buf[12345];

void concat(char *s, int len)
{
	static int p = 0;

	while (*s && len--)
		buf[p++] = *(s++);
	buf[p] = '\0';
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

void display(char *s)
{
	while (*s)
	{
		if (*s == 64)
			display_code();
		else
			concat(s, 1);
		s++;
	}
}

int main()
{
	/*
	 * First comment
	*/
	display(code);
	printf("%s", buf);
	return (0);
}
/*
 * Second comment
*/