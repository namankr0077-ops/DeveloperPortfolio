# Workstation System Profile

## Hardware & OS Specifications

| Component | Specification |
| :--- | :--- |
| **CPU Model & Cores** | [Paste Model Name from lscpu, e.g., Intel Core i5-1235U] ([Paste Core Count] cores) |
| **Total & Available RAM** | Total: [e.g., 8.0Gi] / Available: [e.g., 4.2Gi] |
| **Primary Storage** | [e.g., 512G] ([SSD or HDD]) |
| **OS & Kernel Version** | [e.g., Ubuntu 24.04.1 LTS — Linux 6.8.0-45-generic] |

---

## Binary Number Representation

### 1. Decimal `75` to Binary (Repeated Division by 2)

| Division Step | Quotient | Remainder |
| :--- | :---: | :---: |
| `75 ÷ 2` | `37` | **1** (LSB) |
| `37 ÷ 2` | `18` | **1** |
| `18 ÷ 2` | `9` | **0** |
| `9 ÷ 2` | `4` | **1** |
| `4 ÷ 2` | `2` | **0** |
| `2 ÷ 2` | `1` | **0** |
| `1 ÷ 2` | `0` | **1** (MSB) |

Reading the remainders from bottom (MSB) to top (LSB):  
$$75_{10} = 1001011_2$$

### 2. Binary `110101` to Decimal (Positional Weight Method)

Each bit is multiplied by $2^n$ from right ($n = 0$) to left ($n = 5$):

$$\begin{aligned}
110101_2 &= (1 \times 2^5) + (1 \times 2^4) + (0 \times 2^3) + (1 \times 2^2) + (0 \times 2^1) + (1 \times 2^0) \\
&= (1 \times 32) + (1 \times 16) + (0 \times 8) + (1 \times 4) + (0 \times 2) + (1 \times 1) \\
&= 32 + 16 + 0 + 4 + 0 + 1 \\
&= 53_{10}
\end{aligned}$$

### 3. Why Computers Use Binary Internally
Computers use binary internally because digital circuits rely on millions of microscopic transistors that reliably distinguish between two stable physical voltage states—ON (`1`) and OFF (`0`)—minimizing electrical noise and signal errors.
