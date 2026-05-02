
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void display(char *buf)
{
	int i;

	printf("\t.align 32\n");
	printf("\t.type\tcode, @object\n");
	printf("\t.size\tcode, %zu\n", strlen(buf));
	printf("code:\n");
	i = 0;
	while (*buf)
	{
		if (i % 50 == 0)
		{
			if (i != 0)
				printf("\"\n");
			if (strlen(buf) < 50)
				printf("\t.string \"");
			else
				printf("\t.ascii \"");
		}
		if (*buf == '"')
			printf("\\\"");
		else if (*buf == '\\')
			printf("\\\\");
		else if (*buf == '\t')
			printf("\\t");
		else if (*buf == '\n')
			printf("\\n");
		else
			printf("%c", *buf);
		buf++;
		i++;
	}
	printf("\"\n");
}

int main(int argc, char **argv) {
    FILE *file;
    long fileSize;
    char *buffer;

    if (argc != 2)
	    return (printf("Usage: file.c"));
    file = fopen(argv[1], "rb");
    if (file == NULL) {
	printf("Open error\n");
        return EXIT_FAILURE;
    }
    fseek(file, 0, SEEK_END);
    fileSize = ftell(file);
    fseek(file, 0, SEEK_SET); // Revenir au début du fichier
    buffer = (char *)malloc(fileSize + 1); // +1 pour le caractère nul
    if (buffer == NULL) {
	printf("Error\n");
        fclose(file);
        return EXIT_FAILURE;
    }
    fread(buffer, 1, fileSize, file);
    buffer[fileSize] = '\0'; // Ajouter le caractère nul à la fin
    fclose(file);

    display(buffer);
    free(buffer);
    return EXIT_SUCCESS;
}
