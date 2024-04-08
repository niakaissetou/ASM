/*
** EPITECH PROJECT, 2024
** test
** File description:
** main_asm_funct
*/
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

extern int strcmp(const char *s1, const char *s2);
extern size_t strlen(const char *str);
extern char *strchr(const char *s, int c);
extern char *strrchr(const char *s, int c);
extern void *memset( void *pointer, int value, size_t count );
extern int strncmp( const char * first, const char * second, size_t length );
extern void *memcpy( void * restrict destination, const void * restrict source, size_t size );
int main(void)
{
    char *str = "Epitech";
    char *str2 = "Taoyota";
    char *str3 = "Epitodoo";
    char *str4 = "Epot";
    
    printf("ncmp val %d\n", strncmp(str, str3, 3));
    return 0;
}
/*int test_basic(void)
{
    char *str = malloc(100);
    char *ret;

    ret = memset(str, 0, 100);
    for (uint8_t i = 0; i < 100; i++) {
        if (str[i] != 0) {
            printf("Basic test failed at index %d\n", i);
            free(str);
            return 1; // Test failed
        }
    }
    free(str);
    return 0; // Test passed
}

// Test function for size zero test case
int test_size_zero(void)
{
    char *str = malloc(100);
    char *ret = NULL;

    ret = memset(str, 'a', 0);
    free(str);
    if (ret == str) {
        return 0; // Test passed
    } else {
        printf("nul\n");
        return 1; // Test failed
    }
}


// Test function for multiple use test case
int test_multiple_use(void)
{
    char *str = malloc(100);

    memset(str, 'A', 100);
    if (memcmp(str, memset(str, 'A', 100), 100) != 0) {
        free(str);
        printf("fail 1\n");
        return 1; // Test failed
    }
    memset(str, 'B', 80);
    if (memcmp(str, memset(str, 'B', 80), 80) != 0) {
        free(str);
        printf("fail 2\n");
        return 1; // Test failed
    }
    memset(str, 'C', 60);
    if (memcmp(str, memset(str, 'C', 60), 60) != 0) {
        free(str);
        printf("fail 3\n");
        return 1; // Test failed
    }
    memset(str, 'D', 40);
    if (memcmp(str, memset(str, 'D', 40), 40) != 0) {
        free(str);
        printf("fail 4\n");
        return 1; // Test failed
    }
    memset(str, 'E', 20);
    if (memcmp(str, memset(str, 'E', 20), 20) != 0) {
        free(str);
        printf("fail 5\n");
        return 1; // Test failed
    }
    free(str);
    return 0; // Test passed
}

// Test function for bigger test case
int test_bigger(void)
{
    char *str = malloc(100);

    if (memcmp(memset(str, 'B', 101), memset(str, 'B', 101), 101) != 0) {
        free(str);
        printf("fail b 1\n");
        return 1; // Test failed
    }
    free(str);
    return 0; // Test passed
}

// Entry point
int main(void)
{
    int result = 0;

    printf("Running tests...\n");

    // Run each test and print result
    result += test_basic();
    result += test_size_zero();
    result += test_multiple_use();
    result += test_bigger();

    if (result == 0) {
        printf("All tests passed!\n");
    } else {
        printf("%d test(s) failed!\n", result);
    }

    return result;
}
*/
/*int main(void)
{
    int array [] = {};
    int * copy = NULL;
    int length = sizeof( int ) * 5;

    copy = (int *) malloc( length );
    memcpy( copy, array, length );

    for( length=0; length<5; length++ ) {
        printf( "%d ", copy[ length ] );
    }
    printf( "\n" );
    free( copy );
    return EXIT_SUCCESS;*/
    //const char *one = "hello wolrd";
    //const char *two = "hello";
    //int val = 8;
    //printf("%d de cmp\n", strncmp(one,two, val));
    //char *one = "Hello ";
    //char *two =  "Hello";
    //int val = -1;
    //printf("%d de cmp\n", strcmp(one,two));
    /*int array [] = {};
    size_t size = sizeof( int ) * 0;
    int length;

    for( length=0; length<5; length++) {
        printf( "%d ", array[ length ] );
    }
    printf( "\n" );

    memset( array, 0, size );

    for( length=0; length<5; length++) {
        printf( "%d ", array[ length ] );
    }
    printf( "\n" );*/
    //printf("%d de cmp\n", strcmp("Hello world", "Hello"));
    ////printf("Expected: %s\n", strchr("Epitech", 'p'));
    //const char *str = "okpp";
    //char c = '\0';
    //printf("strlen: %zu\n", strlen(str));
    //printf("STRRCHR : %s\n", strchr(str, c));
    ////printf("Actual: %s\n", strchr(str, '\0'));
//    return 0;
//}


//make
//export LD_LIBRARY_PATH=/home/naisse/delivery/second_year/sem4/miniLib/:$LD_LIBRARY_PATH useless je crois
//LD_PRELOAD=/home/naisse/delivery/second_year/sem4/miniLib/libasm.so ./a.out tu peux mettre . pour le path je crois
//./a.out
//gcc -fno-builtin main.c
//gdb ./a.out, break main, run, ni