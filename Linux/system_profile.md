# Workstation System Profile

| Component | Specification |
| :--- | :--- |
| **CPU Model & Cores** | [Paste CPU Model Name from lscpu] ([X] Cores) |
| **Memory (RAM)** | Total: [e.g., 16Gi] \| Available: [e.g., 9.4Gi] |
| **Primary Storage** | [e.g., 512GB NVMe SSD] |
| **Operating System & Kernel** | [e.g., Ubuntu 24.04.1 LTS] (`[Paste kernel version from uname -r]`) |

---

## Binary Number Representation

### 1. Decimal `75` to Binary Conversion (Repeated Division by 2)

Divide the decimal number by 2 repeatedly and record the remainder at each step until the quotient reaches 0:

* $75 \div 2 = 37$ remainder **1** (LSB - Least Significant Bit)
* $37 \div 2 = 18$ remainder **1**
* $18 \div 2 = 9$ remainder **0**
* $9 \div 2 = 4$ remainder **1**
* $4 \div 2 = 2$ remainder **0**
* $2 \div 2 = 1$ remainder **0**
* $1 \div 2 = 0$ remainder **1** (MSB - Most Significant Bit)

Reading the remainders from bottom to top (MSB to LSB):
**$75_{10} = 1001011_2$**

---

### 2. Binary `110101` to Decimal Conversion (Positional Weight Method)

Multiply each binary digit by $2^n$ (where $n$ is its zero-indexed position from right to left) and sum the results:

$$\begin{aligned}
110101_2 &= (1 \times 2^5) + (1 \times 2^4) + (0 \times 2^3) + (1 \times 2^2) + (0 \times 2^1) + (1 \times 2^0) \\
&= (1 \times 32) + (1 \times 16) + (0 \times 8) + (1 \times 4) + (0 \times 2) + (1 \times 1) \\
&= 32 + 16 + 0 + 4 + 0 + 1 \\
&= \mathbf{53_{10}}
\end{aligned}$$

---

### Why Computers Use Binary Internally
Computers use binary internally because digital circuits rely on transistors that operate reliably as simple two-state electrical switches—representing **ON (1)** with high voltage and **OFF (0)** with low voltage—which minimizes signal interference and hardware errors.
