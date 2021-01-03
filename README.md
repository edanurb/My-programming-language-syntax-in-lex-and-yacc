
  ## DESCRİPTİON OF SYNTAX THE RULES
  
  
**Sentence Structure:** each sentence is separated from each other by semicolon (;).Whitespaces are ignored


**Variable Types:** In my language there are 3 variable types that are num , letter and float. Num is used for integer numbers, float is used for float numbers and letter is used for single characters.The variable definition is made with an arrow as “->”.

```ruby
letter-> ab;
num ->b; # syntax error##
```
**Variable Name:** Variable names cannot start with a number, there cannot be spaces between them. '_' can be used. Reverse words cannot be used as variable names.

**Assigment Statement:** The variable can be assigned the appropriate value by using the '=' sign.

**Arithmetic Operators:** There are 4 operations: addition, subtraction, multiplication, division. Multiplication and division have precedence over addition and subtraction, and arithmetic operations are done from left to right. priority actions are enclosed in parentheses”()”. ‘+’ sign for adittion, ‘-‘ sign is used for substraction , ‘/’ sign is used for divison and ‘*’ sign is used for multiplication.

**Logic Operators:** There are 2 logic operations “or” and “and”. There is no precedence between them, and reading takes place from left to right.Logic Operators: There are 2 logic operations “or” and “and”. There is no precedence between them, and reading takes place from left to right.

```ruby
a and b;
a or b;
```
**Comparison Operators:** There are 3 comparison operators. One of them checks for equality and the remaining two checks for magnitude. ”equal?” keyword checks for equality between two expression. ”bigger?” and “smaller?” keyword checks for magnitude between two expression.

```ruby
5 bigger? 4; 
5 equal? 5; 
7 smaller? 6;
```
**Conditional Statement:** condition is satisfied with the keyword "if" and ":" is added to the end of the conditional statement. We understand that the condition ends with the keyword "end". If only one sentence is to be written after if, it is not necessary to use ": end". If ": end" is not used, only the first sentence will be included in if inside. example;

```ruby
if a bigger? b: 
c=a-b; 
end
```

**Loop Structure:** the keyword "loop" is used for the loops and adds ":" to the end of the loop sentence. We understand that the condition ends with the keyword "end" like in the conditional statement. As in the conditional statement, the ": end" rule applies here.


```ruby
loop a bigger? 10: 
a=a-1; 
end
```

**Print Statement:**
```ruby
print a; 
print “print string”; 
print “print string” + a;
```
**Input Statement:** input () is used for the values to be taken from the user.
```ruby
a=input();
```

## HOW TO RUN?

```
$ lex mpl.l
$ yacc mpl.y
$ gcc -o mpl y.tab.c -lfl
$ ./mpl< myprog.mpl
```
 If there is no syntax error in myprog.mpl, the program should give an “OK” message, otherwise, a “syntax error” message.
