#include <parm.h>
#include <stdio.h>

void run() {
    BEGIN();
    int square00 = ' ';
    int square01 = ' ';
    int square02 = ' ';
    int square10 = ' ';
    int square11 = ' ';
    int square12 = ' ';
    int square20 = ' ';
    int square21 = ' ';
    int square22 = ' ';
    int currentPlayer = 'X';
    int xPayerScore = 0;
    int oPlayerScore = 0;
    int readInt;
    int readChar;
    // print welcome message
    PUTCHAR('W', 'E', 'L', 'C', 'O', 'M', 'E', ' ', 'T', 'O', ' ', 'T', 'H', 'E', ' ', 'T', 'I', 'C', ' ', 'T', 'A',
            'C');
    PUTCHAR(' ', 'T', 'O', 'E', ' ', 'G', 'A', 'M', 'E', '\n');
    PUTCHAR('\n');
    // explain coordinate format
    PUTCHAR('T', 'H', 'E', ' ', 'C', 'O', 'O', 'R', 'D', 'I', 'N', 'A', 'T', 'E', 'S', ' ', 'A', 'R', 'E', ' ', 'I',
            'N');
    PUTCHAR(' ', 'T', 'H', 'E', ' ', 'F', 'O', 'L', 'L', 'O', 'W', 'I', 'N', 'G', ' ', 'F', 'O', 'R', 'M', 'A', 'T',
            ':', '\n');
    PUTCHAR('\n');
    PUTCHAR('1', '1', '|', '1', '2', '|', '1', '3', '\n');
    PUTCHAR('-', '-', '+', '-', '-', '+', '-', '-', '\n');
    PUTCHAR('2', '1', '|', '2', '2', '|', '2', '3', '\n');
    PUTCHAR('-', '-', '+', '-', '-', '+', '-', '-', '\n');
    PUTCHAR('3', '1', '|', '3', '2', '|', '3', '3', '\n');
    PUTCHAR('\n');


    turn:
    PUTCHAR('\n');
    PUTCHAR(square00, '|', square01, '|', square02, '\n');
    PUTCHAR('-', '+', '-', '+', '-', '\n');
    PUTCHAR(square10, '|', square11, '|', square12, '\n');
    PUTCHAR('-', '+', '-', '+', '-', '\n');
    PUTCHAR(square20, '|', square21, '|', square22, '\n');
    PUTCHAR('\n');

    if (square00 == 'X' && square01 == 'X' && square02 == 'X' ||
        square10 == 'X' && square11 == 'X' && square12 == 'X' ||
        square20 == 'X' && square21 == 'X' && square22 == 'X' ||
        square00 == 'X' && square10 == 'X' && square20 == 'X' ||
        square01 == 'X' && square11 == 'X' && square21 == 'X' ||
        square02 == 'X' && square12 == 'X' && square22 == 'X' ||
        square00 == 'X' && square11 == 'X' && square22 == 'X' ||
        square02 == 'X' && square11 == 'X' && square20 == 'X') {
        PUTCHAR('P', 'L', 'A', 'Y', 'E', 'R', ' ', 'X', ' ', 'W', 'I', 'N', 'S', '\n');
        xPayerScore++;
        goto end;
    }
    if (square00 == 'O' && square01 == 'O' && square02 == 'O' ||
        square10 == 'O' && square11 == 'O' && square12 == 'O' ||
        square20 == 'O' && square21 == 'O' && square22 == 'O' ||
        square00 == 'O' && square10 == 'O' && square20 == 'O' ||
        square01 == 'O' && square11 == 'O' && square21 == 'O' ||
        square02 == 'O' && square12 == 'O' && square22 == 'O' ||
        square00 == 'O' && square11 == 'O' && square22 == 'O' ||
        square02 == 'O' && square11 == 'O' && square20 == 'O') {
        PUTCHAR('P', 'L', 'A', 'Y', 'E', 'R', ' ', 'O', ' ', 'W', 'I', 'N', 'S', '\n');
        oPlayerScore++;
        goto end;
    }
    if (square00 != ' ' && square01 != ' ' && square02 != ' ' &&
        square10 != ' ' && square11 != ' ' && square12 != ' ' &&
        square20 != ' ' && square21 != ' ' && square22 != ' ') {
        PUTCHAR('D', 'R', 'A', 'W', '\n');
        goto end;
    }


    input_label:
    PUTCHAR('P', 'L', 'A', 'Y', 'E', 'R', ' ', currentPlayer, ' ', 'T', 'U', 'R', 'N', '\n');
    PUTCHAR('I', 'N', 'P', 'U', 'T', ' ', 'C', 'O', 'O', 'R', 'D', 'I', 'N', 'A', 'T', 'E', 'S', ':', '\n');

    readInt = READINT();
    switch (readInt) {
        case 11:
            square00 = currentPlayer;
            break;
        case 12:
            square01 = currentPlayer;
            break;
        case 13:
            square02 = currentPlayer;
            break;
    }
    switch (readInt) {
        case 21:
            square10 = currentPlayer;
            break;
        case 22:
            square11 = currentPlayer;
            break;
        case 23:
            square12 = currentPlayer;
            break;
    }
    switch (readInt) {
        case 31:
            square20 = currentPlayer;
            break;
        case 32:
            square21 = currentPlayer;
            break;
        case 33:
            square22 = currentPlayer;
            break;

    }
    if (currentPlayer == 'X') {
        currentPlayer = 'O';
    } else {
        currentPlayer = 'X';
    }
    goto turn;


    end:
    goto scoreboard;
    scoreboard_back:

    CLEAR();
    square00 = ' ';
    square01 = ' ';
    square02 = ' ';
    square10 = ' ';
    square11 = ' ';
    square12 = ' ';
    square20 = ' ';
    square21 = ' ';
    square22 = ' ';
    readInt = 'a';
    currentPlayer = 'X';

    goto turn;

    scoreboard:
    PUTCHAR('S', 'C', 'O', 'R', 'E', 'B', 'O', 'A', 'R', 'D', '\n');
    PUTCHAR('P', 'L', 'A', 'Y', 'E', 'R', ' ', 'X', ' ', 'S', 'C', 'O', 'R', 'E', ':', ' ', '0' + xPayerScore, '\n');
    PUTCHAR('P', 'L', 'A', 'Y', 'E', 'R', ' ', 'O', ' ', 'S', 'C', 'O', 'R', 'E', ':', ' ', '0' + oPlayerScore, '\n');
    // press enter to continue
    PUTCHAR('P', 'R', 'E', 'S', 'S', ' ', 'E', 'N', 'T', 'E', 'R', ' ', 'T', 'O', ' ', 'C', 'O', 'N', 'T', 'I', 'N',
            'U', 'E', '\n');
    READKEY();
    goto scoreboard_back;


}