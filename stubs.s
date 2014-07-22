/* Copyright 2004-present Facebook. All Rights Reserved. */
        .macro bin_data sym, file
        .global \sym
\sym\():
        .incbin "\file"
\sym\()_end:
        .balign 4
        .global \sym\()sz
\sym\()sz:
        .int \sym\()_end - \sym
.endm

bin_data arm_stub, "stub-arm/fb-adb"
bin_data x86_stub, "stub-x86/fb-adb"