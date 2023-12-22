# Test file
from typing import Tuple, Any
from datetime import date

def add(a: int, b: int) -> int:
    return a + b

def swap(a: Any, b: Any) -> Tuple[Any, Any]:
    return b, a

if __name__ == '__main__':
    print(date.today())
    print(f'3 + 5 is {add(3, 5)}')
    print("Let's swap 'test' and 123")
    print(swap('test', 123))