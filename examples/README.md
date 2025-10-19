# Cangjie Example Programs (倉頡示例程序)

This directory contains example programs written in Cangjie (仓颉) programming language, demonstrating various mathematical concepts, algorithms, and Chinese cultural elements.

## Examples (示例)

### 1. Chicken and Rabbit Problem (雞兔同籠問題)
**File:** `chicken_rabbit.cj`

Classic Chinese mathematical problem from "The Mathematical Classic of Master Sun" (孫子算經).

Problem: Given the total number of heads and feet in a cage containing chickens and rabbits, determine how many chickens and rabbits there are.

### 2. Chinese Remainder Theorem (中國剩餘定理)
**File:** `chinese_remainder_theorem.cj`

Implementation of the Chinese Remainder Theorem (孫子定理 - Sun Tzu's Theorem), an ancient Chinese mathematical algorithm for solving systems of congruences.

Example: Find a number that leaves remainder 2 when divided by 3, remainder 3 when divided by 5, and remainder 2 when divided by 7.

### 3. Eight Trigrams (八卦)
**File:** `eight_trigram.cj`

Representation of the Eight Trigrams (Ba Gua) from the I Ching (易經 - Book of Changes), fundamental concepts in Taoist cosmology.

The eight trigrams represent:
- 乾 ☰ Heaven
- 兌 ☱ Lake
- 離 ☲ Fire
- 震 ☳ Thunder
- 巽 ☴ Wind
- 坎 ☵ Water
- 艮 ☶ Mountain
- 坤 ☷ Earth

### 4. Commutativity (交換律)
**File:** `commutativity.cj`

Demonstrates the commutative property in mathematics using Chinese characters and various operations. Shows both commutative and non-commutative operations.

### 5. Mathematical Tribute (數學與物理致敬)
**File:** `mathematical_tribute.cj`

Tribute to great Chinese mathematicians and physicists:
- **張益唐 (Zhang Yitang)** - Breakthrough in prime number theory
- **陳省身 (Shiing-Shen Chern)** - Chern classes in differential geometry
- **楊振寧 (Chen-Ning Yang)** - Yang-Mills gauge theory
- **丘成桐 (Shing-Tung Yau)** - Calabi-Yau manifolds in string theory

Also discusses the historical impact of the printing press (印刷術) on mathematical knowledge dissemination.

### 6. Chinese Character Token System (中文字符標記系統)
**File:** `chinese_token.cj`

Demonstrates tokenization and processing of Chinese characters in the Cangjie programming language, including:
- Unicode representation
- Character radicals (部首)
- Stroke counts
- Cangjie input method decomposition
- Text processing and semantic analysis

### 7. Chinese Encryption Algorithms (中文加密算法)
**File:** `chinese_encryption.cj`

Demonstrates various encryption methods and cryptographic concepts with Chinese character support, including:
- **Eight Trigrams Substitution Cipher (八卦替換密碼)** - Classical substitution cipher based on I Ching
- **Position Substitution (字位替換法)** - Ancient method using classic Chinese texts
- **Reverse Encryption (反序加密)** - Simple text obfuscation technique
- **Character Frequency Analysis** - Cryptanalysis of Chinese text
- Historical context of Chinese cryptography (Spring-Autumn period through Qing dynasty)
- Modern applications in Unicode security and blockchain

Note: These are educational demonstrations of cryptographic concepts, not production-grade implementations.

### 8. Six Categories of Chinese Characters (六書)
**File:** `six_categories.cj`

Comprehensive demonstration of the classical Six Categories (六書 - Liù Shū) classification system for Chinese character formation, as systematized in the Shuowen Jiezi (說文解字) by Xu Shen (許慎) in 121 CE:

1. **象形 (Xiàngxíng) - Pictographs**: Characters that visually represent objects (日 sun, 月 moon, 山 mountain)
2. **指事 (Zhǐshì) - Ideographs**: Characters representing abstract concepts through symbolic marks (上 above, 下 below, 本 root)
3. **會意 (Huìyì) - Compound Ideographs**: Characters combining meanings of multiple components (明 = 日+月 bright, 休 = 人+木 rest)
4. **形聲 (Xíngshēng) - Phono-semantic Compounds**: Characters with semantic and phonetic components (~90% of all characters)
5. **轉注 (Zhuǎnzhù) - Derivative Cognates**: Characters that extend meanings to related concepts
6. **假借 (Jiǎjiè) - Phonetic Loan Characters**: Characters borrowed for their sound (來 originally wheat → come)

This example illustrates the fundamental principles of Chinese character formation and their cultural significance in linguistics, education, and modern applications like input methods and NLP.

## Running the Examples

To run these examples, you need to have the Cangjie compiler installed. Visit [Cangjie Official Website](https://cangjie-lang.cn/) for installation instructions.

```bash
# Compile and run an example
cjc example_name.cj
./example_name
```

## About Cangjie Language (關於倉頡語言)

Cangjie (仓颉) is a modern programming language developed by Huawei. It is named after the legendary inventor of Chinese characters, Cangjie (倉頡).

## Cultural and Mathematical Context

These examples bridge Chinese cultural heritage with modern programming:
- Ancient Chinese mathematics (雞兔同籠, 孫子定理)
- Traditional philosophy (八卦, 易經)
- Modern mathematical contributions by Chinese scholars
- Chinese character processing and tokenization

## Contributing

Contributions are welcome! Please see the main [contributing guide](../contributing.md).
