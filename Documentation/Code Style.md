
# Code Style

#### Obsidian's code follows the following coding style for C


So this would be the brace placement for this while loop:

```c
while (foo == x) {
    return 0;
}

```

Tabs are equal to 4 - so make sure to set this in your text editor or ide

Use functions where ever possible

So instead of:

```c

int foo() {
    printf("Hello world");
}

int main() {
    foo();
}

```

You should do:

```c

int foo() {
    printf("Hello World");
}

int start() {
    foo();
}

int main() {
    start();
}

```

# Other stuff
Tab length = 4


Any code you send me that does not adhere to this coding style will be rejected, so make sure you get used to this style.
