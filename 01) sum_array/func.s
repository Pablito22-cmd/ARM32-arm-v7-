    .global add_numbers
    .type add_numbers, %function

add_numbers:
    @ Arguments:
    @ r0 = pointer to vec
    @ r1 = dim vec
    @ r2 = sum
    @ r3 = cur num

    mov r2, #0       @ sum init

loop:
    cmp r1, #0
    ble end

    ldr r3, [r0], #4
    add r2, r2, r3
    sub r1, r1, #1
    b loop

end:
    mov r0, r2
    bx lr           @ return