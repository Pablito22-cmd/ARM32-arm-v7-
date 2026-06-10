    .data
fnt: .string "Il numero è %d\n"

    .global main
    .text

main:
    push {lr}
    mov r1, r0
    ldr r0, =fnt
    bl printf
    pop {pc}