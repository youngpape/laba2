.section __TEXT,__text
.global _main
.align 2

_main:
    // Сохраняем регистры
    stp x29, x30, [sp, #-16]!

    // Выводим приглашение для ввода
    adrp x0, prompt@PAGE
    add x0, x0, prompt@PAGEOFF
    mov x1, #18             // Длина приглашения
    bl _print_string

    // Читаем ввод с терминала
    sub sp, sp, #1024       // Выделяем буфер на стеке (1024 байта)
    mov x0, #0              // stdin
    mov x1, sp              // Указатель на буфер
    mov x2, #1024           // Максимальная длина
    mov x16, #3             // sys_read
    svc #0

    // Удаляем символ новой строки из ввода
    mov x1, sp
find_newline:
    ldrb w2, [x1], #1
    cmp w2, #'\n'
    b.ne find_newline
    mov w2, #0
    strb w2, [x1, #-1]      // Заменяем '\n' на '\0'

    // Проверяем панграмму
    mov x0, sp
    bl _is_pangram

    // Выводим результат
    adrp x1, true_str@PAGE
    add x1, x1, true_str@PAGEOFF
    adrp x2, false_str@PAGE
    add x2, x2, false_str@PAGEOFF
    cmp w0, #1
    csel x1, x1, x2, eq
    
    // Вычисляем длину строки результата
    mov x2, #5              // Длина "false"
    cmp w0, #1
    csel x2, x2, x2, ne
    mov x3, #4              // Длина "true"
    csel x2, x3, x2, eq
    
    // Выводим результат
    mov x0, #1              // stdout
    mov x16, #4             // sys_write
    svc #0
    
    // Выводим перевод строки
    adrp x1, newline@PAGE
    add x1, x1, newline@PAGEOFF
    mov x2, #1
    mov x0, #1
    mov x16, #4
    svc #0
    
    // Освобождаем буфер и выходим
    add sp, sp, #1024
    mov x0, #0
    ldp x29, x30, [sp], #16
    ret

// Функция печати строки (x0 - строка, x1 - длина)
_print_string:
    mov x2, x1              // Длина
    mov x1, x0              // Строка
    mov x0, #1              // stdout
    mov x16, #4             // sys_write
    svc #0
    ret

// Функция проверки панграммы
_is_pangram:
    // Вход: x0 - указатель на строку
    // Выход: w0 - 1 (true), если панграмма; 0 (false) иначе
    stp x29, x30, [sp, #-16]!
    
    mov w1, #0              // Битовая маска для букв
    mov x2, x0              // Сохраняем указатель на строку
    
check_loop:
    ldrb w0, [x2], #1      // Загружаем символ
    cbz w0, check_result    // Если 0 - конец строки
    
    // Проверяем что символ в 'a'-'z'
    sub w3, w0, #'a'
    cmp w3, #25
    b.hi check_loop
    
    // Устанавливаем соответствующий бит
    mov w4, #1
    lsl w4, w4, w3
    orr w1, w1, w4
    b check_loop
    
check_result:
    // Проверяем все 26 бит (0x03FFFFFF)
    mov w0, #0x03FFFFFF
    cmp w1, w0
    cset w0, eq
    
    ldp x29, x30, [sp], #16
    ret

.section __TEXT,__cstring
prompt:     .asciz "Enter a sentence: "
true_str:   .asciz "true"
false_str:  .asciz "false"
newline:    .asciz "\n"
