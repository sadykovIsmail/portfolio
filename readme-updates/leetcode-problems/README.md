# LeetCode Problems

> Personal workspace for solving LeetCode algorithm and data structure problems — solutions in Python and JavaScript with 116+ commits of consistent practice.

![Python](https://img.shields.io/badge/Python-82%25-3776AB?logo=python&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-18%25-F7DF1E?logo=javascript&logoColor=black)
![LeetCode](https://img.shields.io/badge/LeetCode-Practice-FFA116?logo=leetcode&logoColor=black)
![Commits](https://img.shields.io/badge/Commits-116+-orange)
![License](https://img.shields.io/badge/License-MIT-22c55e)

---

## Overview

This repository is my personal LeetCode practice log. It contains solutions to algorithm and data structure problems organized by topic, written in both **Python** and **JavaScript**. I use this as a daily coding practice space to build problem-solving muscle and prepare for technical interviews.

---

## Repository Structure

```
leetcode-problems/
├── Python/
│   ├── 1. arrays/           # Array manipulation problems
│   ├── 2. linked list/      # Linked list problems
│   ├── 3. array and string/ # Combined array & string challenges
│   └── 4. hash table/       # Hash map/dict-based problems
├── Java Script/
│   └── [JS solutions]       # JavaScript problem solutions
├── insight.py               # Utility/helper functions
└── README.md
```

---

## Topics Covered

### Data Structures

| Topic | Language | Examples |
|-------|----------|---------|
| Arrays | Python, JS | Two Sum, Maximum Subarray, Rotate Array |
| Linked Lists | Python | Reverse List, Merge Sorted Lists, Detect Cycle |
| Hash Tables | Python | Two Sum (optimized), Group Anagrams, Top K Frequent |
| Strings | Python | Valid Palindrome, Longest Substring, Anagram Check |

### Algorithmic Patterns

- **Sliding Window** — subarray/substring optimization
- **Two Pointers** — in-place array operations
- **Hash Maps** — O(1) lookup optimizations
- **Fast & Slow Pointers** — cycle detection in linked lists
- **Prefix Sums** — range query optimization

---

## Problem-Solving Approach

Each solution follows this structure:

```python
# Problem: Two Sum
# Difficulty: Easy
# Topic: Arrays, Hash Tables
# Time: O(n) | Space: O(n)

def twoSum(nums: list[int], target: int) -> list[int]:
    seen = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in seen:
            return [seen[complement], i]
        seen[num] = i
```

---

## Difficulty Breakdown

| Difficulty | Focus |
|------------|-------|
| Easy | Fundamentals, pattern recognition |
| Medium | Core interview topics, optimization |
| Hard | Advanced algorithms, edge cases |

---

## Getting Started

```bash
# Clone the repository
git clone https://github.com/sadykovIsmail/leetcode-problems.git
cd leetcode-problems

# Run a Python solution
cd Python
python3 "1. arrays/two_sum.py"

# Run a JavaScript solution
cd "Java Script"
node solution.js
```

---

## Practice Goals

- Solve 2-3 problems per day consistently
- Cover all core data structure types
- Master the most common interview patterns
- Build fluency in both Python and JavaScript
- Progress from Easy → Medium → Hard

---

## Resources

- [LeetCode Profile](https://leetcode.com/) — @IsmailSadykov
- [NeetCode Roadmap](https://neetcode.io/) — study plan reference
- [Blind 75](https://leetcode.com/discuss/general-discussion/460599/blind-75-leetcode-questions) — essential problem list

---

## Related

- Python learning materials: [python-course](https://github.com/sadykovIsmail/python-course)
- JavaScript projects: [Java-script](https://github.com/sadykovIsmail/Java-script)

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a> — consistent daily practice</p>
