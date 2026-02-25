# freeCodeCamp JavaScript Algorithms & Data Structures

> Five certification projects demonstrating core JavaScript skills — from string algorithms to cash register simulations — built from scratch for the freeCodeCamp JavaScript Algorithms and Data Structures certification.

[![freeCodeCamp](https://img.shields.io/badge/freeCodeCamp-Certified-0A0A23?logo=freecodecamp&logoColor=white)](https://www.freecodecamp.org/certification/IsmailSadykov/javascript-algorithms-and-data-structures-v8)
![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-F7DF1E?logo=javascript&logoColor=black)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![GitHub Pages](https://img.shields.io/badge/Live_Demos-GitHub_Pages-222222?logo=github&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-22c55e)

---

## Overview

This repository contains the **five build-from-scratch certification projects** from freeCodeCamp's [JavaScript Algorithms and Data Structures](https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures-v8/) curriculum. Each project was built entirely from scratch, demonstrating algorithm design, DOM manipulation, and JavaScript problem-solving.

**[View Certification](https://www.freecodecamp.org/certification/IsmailSadykov/javascript-algorithms-and-data-structures-v8)**

---

## Projects

### 01 — Palindrome Checker

> Determine whether a string reads the same forwards and backwards.

**What it does:**
- Accepts any string input
- Strips non-alphanumeric characters and normalizes case
- Returns `true` if palindrome, `false` otherwise
- Edge cases: numbers, mixed punctuation, Unicode-safe

**Live Demo:** [sadykovismail.github.io/fcc-javascript-algorithms/01-palindrome-checker/](https://sadykovismail.github.io/fcc-javascript-algorithms/01-palindrome-checker/)

```javascript
// Core logic example
function isPalindrome(str) {
  const cleaned = str.toLowerCase().replace(/[^a-z0-9]/g, '');
  return cleaned === cleaned.split('').reverse().join('');
}
```

---

### 02 — Roman Numeral Converter

> Convert any integer from 1 to 3999 into its Roman numeral representation.

**What it does:**
- Maps integers to Roman numeral symbols (I, V, X, L, C, D, M)
- Handles subtractive notation (IV, IX, XL, XC, CD, CM)
- Validates input range (1–3999)
- Real-time conversion as you type

**Live Demo:** [sadykovismail.github.io/fcc-javascript-algorithms/02-roman-numeral-converter/](https://sadykovismail.github.io/fcc-javascript-algorithms/02-roman-numeral-converter/)

```javascript
// Example conversions
// 4    → "IV"
// 9    → "IX"
// 40   → "XL"
// 1994 → "MCMXCIV"
// 3999 → "MMMCMXCIX"
```

---

### 03 — Telephone Number Validator

> Validate US phone numbers against all accepted formatting patterns.

**What it does:**
- Accepts input in multiple formats:
  - `555-555-5555`
  - `(555)555-5555`
  - `1 555 555 5555`
  - `+1 (555) 555-5555`
- Uses regex to match valid patterns
- Clearly indicates valid / invalid with visual feedback

**Live Demo:** [sadykovismail.github.io/fcc-javascript-algorithms/03-telephone-validator/](https://sadykovismail.github.io/fcc-javascript-algorithms/03-telephone-validator/)

```javascript
// Accepted patterns (examples)
// ✓ 555-555-5555
// ✓ (555)555-5555
// ✓ (555) 555-5555
// ✓ 555 555 5555
// ✓ 5555555555
// ✓ 1 555 555 5555
// ✗ 555-5555       → too short
// ✗ (555 555-5555  → mismatched parenthesis
```

---

### 04 — Cash Register

> Simulate a point-of-sale cash register that calculates exact change.

**What it does:**
- Accepts item price, payment amount, and current cash drawer contents
- Calculates exact change using the minimum number of bills/coins
- Returns three possible statuses:
  - `OPEN` — sufficient change available
  - `CLOSED` — exact change equals remaining drawer amount
  - `INSUFFICIENT_FUNDS` — cannot make exact change
- Handles edge cases: pennies, large bills, mixed denominations

**Live Demo:** [sadykovismail.github.io/fcc-javascript-algorithms/04-cash-register/](https://sadykovismail.github.io/fcc-javascript-algorithms/04-cash-register/)

```javascript
// Example
checkCashRegister(19.5, 20, [
  ["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1],
  ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55],
  ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]
]);
// → { status: "OPEN", change: [["QUARTER", 0.5]] }
```

---

### 05 — RPG Creature Searcher

> Search and filter a role-playing game creature database.

**What it does:**
- Fetches and displays a list of RPG creatures
- Implements real-time search/filter by creature name
- Displays creature stats and attributes
- Demonstrates DOM manipulation and array filtering

**Live Demo:** [sadykovismail.github.io/fcc-javascript-algorithms/05-rpg-creature-search-app/](https://sadykovismail.github.io/fcc-javascript-algorithms/05-rpg-creature-search-app/)

---

## Repository Structure

```
fcc-javascript-algorithms/
├── 01-palindrome-checker/
│   ├── index.html
│   ├── style.css
│   └── script.js
├── 02-roman-numeral-converter/
│   ├── index.html
│   ├── style.css
│   └── script.js
├── 03-telephone-validator/
│   ├── index.html
│   ├── style.css
│   └── script.js
├── 04-cash-register/
│   ├── index.html
│   ├── style.css
│   └── script.js
├── 05-rpg-creature-search-app/
│   ├── index.html
│   ├── style.css
│   └── script.js
└── README.md
```

---

## Getting Started

```bash
# Clone the repository
git clone https://github.com/sadykovIsmail/fcc-javascript-algorithms.git
cd fcc-javascript-algorithms

# Open any project in your browser
cd 02-roman-numeral-converter
open index.html        # macOS
# Or: right-click → Open With → Browser
```

No dependencies or build tools required.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| JavaScript ES6+ | Core logic and algorithms |
| HTML5 | Structure and input elements |
| CSS3 | Styling and visual feedback |
| DOM API | Dynamic rendering and events |
| Regex | Pattern matching (telephone validator) |
| GitHub Pages | Live deployment |

---

## Concepts Demonstrated

- String manipulation and normalization
- Greedy algorithms (cash register change)
- Regular expressions for input validation
- Array methods: `filter`, `reduce`, `map`, `reverse`
- DOM manipulation and event handling
- Edge case handling and input validation
- Algorithmic problem solving

---

## Related

- More JavaScript practice projects: [Java-script repo](https://github.com/sadykovIsmail/Java-script)
- React projects: [frontend-projects-collection](https://github.com/sadykovIsmail/frontend-projects-collection)

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a> for the <a href="https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures-v8/">freeCodeCamp JS Algorithms & Data Structures Certification</a></p>
