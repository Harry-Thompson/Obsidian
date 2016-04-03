# The kernel

The Kernel is the main part of any operating system and therefore should have the most work put into it

The Kernel design that we are aiming to develop is the monolithic kernel design. The monolithic kernel design includes almost all of it's services inside the kernel itself. This I feel is the best way of designing a kernel. But we are also aiming for a modular design here, for added security. The modular design means that unnecessary bits of code (normally device drivers) can be unloaded and then loaded at a later date.

The kernel is also written in C as this is probably the best language to write a kernel with (assembly would take far to long)
