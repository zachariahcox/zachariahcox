# Software Engineering Philosophy Topics 

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
Comments should precede logic and explain to the reader what the author is about to try to do in code.
High quality, reviewable code tends to have a structure like this: 
```cpp
// this function will add two numbers and return the result (say what you're going to try to do)
int add(int a, int b) {
    return a + b; // try to do it
}
```

The reviewer's job is made easier when they can primarily focus on whether the code does what the author said it was supposed to do.

```cpp
// if a function has unexpected behaviors, these should be documented with the source, not the unit test.
// EG: if the `add` function fails for negative numbers the documentation for the surprising behavior should be in the function source, not the test source.
void test_add_function () {
    assert_equal(3, add(1,2), "basic addition");
}
```
## Test-driven development
On my teams, I recommend that you write your tests _first_. 

Test-driven development helps you poke holes in your implementation before you've grown too attached to it. 
It's much more demoralizing to tear apart the work you just completed. 
Better to do it first!

## Feature flags

* New services must _support_ feature flags. 
* New features must _use_ feature flags. 
* Use exceptions sparingly and in coordination with your managers. 
* When rolling out any massive behavioral changes, consider implementing a _negative_ feature flag too. 
This would be used as a quick pressure release valve for customers who escalate due to an emergency. 
You can add them to the "temporary-opt-out" feature flag while they complete their migrations. 
* A feature is not complete until all feature flags have been removed from the product. 
