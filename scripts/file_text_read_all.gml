// Reads all lines from a file specified by name.
// Returns a single string contining the content.
// Line breaks are included in the string.

file_name = argument0

text = "";
file = file_text_open_read(working_directory + "/" + file_name);
while(!file_text_eof(file)) {
    text += file_text_readln(file);
}
file_text_close(file);
return text;
