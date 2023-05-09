# software 

## Incident response
* incident severity should be rated in terms of customer impact
* https://how.complexsystems.fail
* The review process should optimize for creative solutions.
* These ideas should be written down even though they may be rough -- the goal is to capture ideas worth considering. 
* It is the job of engineering managers to make decisions about the captured "repair items." 
* If a repair item is worth funding, it should be treated with high priority by the entire organization. 
* The best repair items are tactical and will make a difference in the short term -- think 1 or 2 weeks of investment. 
* There are other kinds of repair items that represent larger projects. These may still be worth doing, but should be calibrated against other competing business goals for the team. 

## Optimize for the reader and code reviewer
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
