// 交換律 (Commutativity)
// Demonstrating commutative property with Chinese characters and operations
// 交換律：a + b = b + a, a × b = b × a

main() {
    println("中文的交換律 - Commutativity in Chinese")
    println("=======================================")
    println("")
    
    // Numeric commutativity
    println("1. 數字交換律 (Numeric Commutativity)")
    println("   --------------------------------")
    let a = 5
    let b = 3
    
    println("   加法交換律 (Addition):")
    println("   ${a} + ${b} = ${a + b}")
    println("   ${b} + ${a} = ${b + a}")
    println("   ${a + b} = ${b + a} ✓")
    println("")
    
    println("   乘法交換律 (Multiplication):")
    println("   ${a} × ${b} = ${a * b}")
    println("   ${b} × ${a} = ${b * a}")
    println("   ${a * b} = ${b * a} ✓")
    println("")
    
    // String concatenation (not commutative)
    println("2. 字串運算 (String Operations)")
    println("   ---------------------------")
    let str1 = "倉"
    let str2 = "頡"
    
    println("   字串連接 NOT 交換:")
    println("   \"${str1}\" + \"${str2}\" = \"${str1}${str2}\"")
    println("   \"${str2}\" + \"${str1}\" = \"${str2}${str1}\"")
    println("   \"${str1}${str2}\" ≠ \"${str2}${str1}\" ✗")
    println("")
    
    // Chinese character tokens demonstrating meaning
    println("3. 中文字符標記 (Chinese Character Tokens)")
    println("   ---------------------------------------")
    println("   漢字組合的順序影響意義:")
    println("   \"黑\" + \"白\" = \"黑白\" (black and white)")
    println("   \"白\" + \"黑\" = \"白黑\" (white and black)")
    println("   語意不同但概念相關")
    println("")
    
    // Set operations (commutative)
    println("4. 集合運算 (Set Operations)")
    println("   -------------------------")
    println("   集合交集是交換的:")
    println("   {天, 地, 人} ∩ {人, 和} = {人}")
    println("   {人, 和} ∩ {天, 地, 人} = {人}")
    println("")
    
    println("5. 向量點積 (Dot Product)")
    println("   ----------------------")
    let vec1 = [1, 2, 3]
    let vec2 = [4, 5, 6]
    
    var dotProduct1 = 0
    var dotProduct2 = 0
    
    for (i in 0..vec1.size) {
        dotProduct1 += vec1[i] * vec2[i]
        dotProduct2 += vec2[i] * vec1[i]
    }
    
    println("   [1,2,3] · [4,5,6] = ${dotProduct1}")
    println("   [4,5,6] · [1,2,3] = ${dotProduct2}")
    println("   點積滿足交換律 ✓")
    println("")
    
    // Chinese philosophical concepts
    println("6. 中國哲學概念 (Chinese Philosophical Concepts)")
    println("   ---------------------------------------------")
    println("   陰陽調和 (Yin-Yang Balance):")
    println("   陰 + 陽 = 太極")
    println("   陽 + 陰 = 太極")
    println("   平衡與和諧不分先後")
}
