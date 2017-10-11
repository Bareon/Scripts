import math

def answer(area):
# your code here
    ans = []
    rem = area
    panel2 = math.trunc(math.sqrt(rem))**2
    while rem != 0:
        panel = math.trunc(math.sqrt(rem))**2
        rem -= panel
        ans.append(panel)
    return ans

if __name__ == "__main__":
  answer(15324)