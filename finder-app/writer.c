#include <stdio.h>
#include <errno.h>
#include <syslog.h>
#include <string.h>

int main(int argc, char* argv[]) {
  
  openlog (NULL, 0, LOG_USER);

  if (argc != 3) {
    syslog (LOG_ERR, "ERROR: wrong number of arguments!");
    syslog (LOG_ERR, "Syntax:");
    syslog (LOG_ERR, "  ./writer <write_file> <write_str>");
    return 1;
  }
  
  FILE *file = fopen(argv[1], "wb");

  if(file == NULL) {
    syslog (LOG_ERR, "ERROR: Openning file %s failed: %s", argv[1], strerror(errno));
    return 1;
  }

  syslog (LOG_INFO, "Writing %s to %s", argv[2], argv[1]);
  fprintf(file, "%s", argv[2]);
  
  fclose(file);
  return 0;
}
