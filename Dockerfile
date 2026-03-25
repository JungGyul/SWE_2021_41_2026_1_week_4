FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "def isHappy(n):\n    v = set()\n    while n != 1:\n        if n in v:\n            return False\n        v.add(n)\n        next_n = 0\n        while n > 0:\n            digit = n % 10\n            next_n += digit ** 2\n            n //= 10\n        n = next_n\n    return True\n\nprint(isHappy(19))\nprint(isHappy(2))"]