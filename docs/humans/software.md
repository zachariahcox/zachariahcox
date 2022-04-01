# software 

High quality, reviewable code tends to have a structure like this: 
```cpp
// "this function will add two numbers and return the result"
int add(int a, int b) {
    return a + b;
}
```

comments should precede logic and explain to the reader what the author is about to try to do in code.

the reviewer's job is made easier when they can primarily focus on whether the code does what the author said it was supposed to do.

```cpp
// unit tests should not contain the motivation for why functions behave like they do
// if a function has unexpected behaviors, it should be detailed inline with the logic. 
void test_add_function () {
    assert_equal(3, add(1,2), "basic addition");
}
```