# Recursion Practice

Work through these questions with your partner.

Consider this recursive method:

```ruby
def mystery(x, y)
  return x if x < y
  return y + mystery(x - y, y)
end
```

1. Walk through the evaluation of the method call: `mystery(37, 10)`
1. What is the final value of `mystery(37, 10)`?
1. Including the initial invocation, how many times was `mystery` put on the stack in the previous question?
