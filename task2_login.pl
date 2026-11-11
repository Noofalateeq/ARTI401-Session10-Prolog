% ===== TASK 2 - LOGIN SYSTEM =====

% Sample user dataset
user_account(student1, pass123).
user_account(student2, ai401).

% Start login
login :-
    login_attempt(3).

% Check username and password
login_attempt(AttemptsLeft) :-
    write('Username: '),
    read(Username),
    write('Password: '),
    read(Password),
    ( user_account(Username, Password)
    ->
        writeln('Login Successful')
    ;
        writeln('Login Unsuccessful'),
        Remaining is AttemptsLeft - 1,
        ( Remaining > 0
        ->
            login_attempt(Remaining)
        ;
            writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
	
% ==========================================
% TASK 2 - TEST QUERIES AND RESULTS
% ==========================================

% 101 ?- consult(['c:/Users/snoof/OneDrive/Desktop/لاب 10 Ai/task2_login.pl']).
% true.

% TEST 1 - CORRECT CREDENTIALS
% 102 ?- login.
% Username: student1.
% Password: pass123.
% Login Successful
% true.

% TEST 2 - INCORRECT THEN CORRECT
% 103 ?- login.
% Username: student1.
% Password: wrong.
% Login Unsuccessful
% Username: student2.
% Password: ai401.
% Login Successful
% true.

% TEST 3 - THREE INCORRECT ATTEMPTS
% 103 ?- login.
% Username: noof.
% Password: pass.
% Login Unsuccessful
% Username: sami.
% Password: 1234.
% Login Unsuccessful
% Username: modi.
% Password: 1223.
% Login Unsuccessful
% Sorry, you exceeded the maximum number of attempts, try again later.
% true.