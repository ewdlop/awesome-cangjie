// 中國剩餘定理 (Chinese Remainder Theorem)
// 孫子定理 - Sun Tzu's Theorem
// From "The Mathematical Classic of Master Sun" (孫子算經)
//
// Example problem:
// 今有物不知其數，三三數之剩二，五五數之剩三，七七數之剩二。問物幾何？
// "We have things of unknown number. 
//  When divided by 3, the remainder is 2.
//  When divided by 5, the remainder is 3.
//  When divided by 7, the remainder is 2.
//  What is the number?"

func extendedGCD(a: Int64, b: Int64): (Int64, Int64, Int64) {
    if (b == 0) {
        return (a, 1, 0)
    }
    let (gcd, x1, y1) = extendedGCD(b, a % b)
    let x = y1
    let y = x1 - (a / b) * y1
    return (gcd, x, y)
}

func modInverse(a: Int64, m: Int64): Int64 {
    let (gcd, x, _) = extendedGCD(a, m)
    if (gcd != 1) {
        throw Exception("Modular inverse does not exist")
    }
    return (x % m + m) % m
}

func chineseRemainderTheorem(remainders: Array<Int64>, moduli: Array<Int64>): Int64 {
    if (remainders.size != moduli.size) {
        throw Exception("Arrays must have same length")
    }
    
    // Calculate product of all moduli
    var product: Int64 = 1
    for (m in moduli) {
        product *= m
    }
    
    // Apply Chinese Remainder Theorem
    var result: Int64 = 0
    for (i in 0..remainders.size) {
        let ni = product / moduli[i]
        let mi = modInverse(ni, moduli[i])
        result += remainders[i] * ni * mi
    }
    
    return result % product
}

main() {
    println("中國剩餘定理 - Chinese Remainder Theorem")
    println("=========================================")
    println("孫子定理 - Sun Tzu's Theorem")
    println("")
    
    // Classic problem from Sun Tzu's Mathematical Manual
    println("問題 (Problem):")
    println("今有物不知其數")
    println("三三數之剩二 (mod 3 = 2)")
    println("五五數之剩三 (mod 5 = 3)")
    println("七七數之剩二 (mod 7 = 2)")
    println("")
    
    let remainders: Array<Int64> = [2, 3, 2]
    let moduli: Array<Int64> = [3, 5, 7]
    
    try {
        let answer = chineseRemainderTheorem(remainders, moduli)
        println("解答 (Solution): ${answer}")
        println("")
        
        // Verification
        println("驗證 (Verification):")
        println("  ${answer} mod 3 = ${answer % 3} (應為 2)")
        println("  ${answer} mod 5 = ${answer % 5} (應為 3)")
        println("  ${answer} mod 7 = ${answer % 7} (應為 2)")
        
        if (answer % 3 == 2 && answer % 5 == 3 && answer % 7 == 2) {
            println("  ✓ 答案正確！")
        }
    } catch (e: Exception) {
        println("錯誤: ${e}")
    }
}
