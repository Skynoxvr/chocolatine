/*
** EPITECH PROJECT, 2023
** DOP
** File description:
** tests.c
*/

// make criterion test file

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(printf, should_print_string, .init = redirect_all_std)
{
    printf("Hello World\n");
    fflush(stdout);
    cr_assert_stdout_eq_str("Hello World\n");
}
