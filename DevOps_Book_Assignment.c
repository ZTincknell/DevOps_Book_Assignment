#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
  FILE *fp;
  char *line = NULL;
  size_t len = 0;
  ssize_t read;
  
  fp = fopen("catalog.xml", "r");
  if (fp == NULL)
    exit(EXIT_FAILURE);
    
   while ((read = getline(&line, &len, fp)) != -1) {
    if (strstr(line, "title") != NULL) {
      char *start = strstr(line, ">") + 1;
      char *end = strstr(line, "<");
      int length = end - start;
      char title[length + 1];
      strncpy(title, start, length);
      title[length] = '\0';
      
      printf("Title: %s\n", title);
     }
    }
    
    fclose(fp);
    if (line)
      free(line);
    exit(EXIT_SUCCESS);
}

/* testing */
