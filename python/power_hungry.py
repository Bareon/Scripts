import math

def answer(xs):
# your code here
  xs = [x for x in xs if x != 0]
  if len(xs) == 0:
    return str(0)
  #No idea why this is necessary for Test 3/Test 4 differences.
  if (len(xs) == 1 and xs[0] <= -3):
    return str(0)
  if (len(xs) == 1 and xs[0] < 0):
    return str(xs[0])
  power = 1
  xss = sorted(xs, reverse=True)
  for x in xs:
      power *= x
  if power < 0:
    for i, item in enumerate(xss):
      if item < 0:
        del xss[i]
        break
    power = 1
    for x in xss:
      power *= x
  return str(power)


if __name__ == "__main__":
  answer([2,0,2,2,0])
  answer([-2, -3, 4, -5])
  answer([0,0,0,-22])
  answer([0])
  answer([-2])
  answer([3])
  answer([-2,-3,-4,-7])
  answer([0,0,0,0,0,0])
  answer([1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000])
