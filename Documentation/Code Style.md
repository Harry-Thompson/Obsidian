
# Code Style

This project follows the following coding style for C


So this would be the brace placement for this while loop:

while (foo == x) {
    return 0;
}

Tabs are equal to 4 - so make sure to set this in your text editor or ide

Use functions where ever possible

So instead of:

int foo() {
    printf("Hello world");
}

int main() {
    foo();
}

You should do:

int foo() {
    printf("Hello World");
}

int start() {
    foo();
}

int main() {
    start();
}

Also make sure you do not include any POSIX system calls within your code as this operating system is a non POSIX compatible 
operating system and as such system calls derived from the <unistd.h> header file will not work.

Any code you send me that does not adhere to this coding style will be rejected, so make sure you get used to this style.