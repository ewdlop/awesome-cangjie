// 雞兔同籠問題 (Chicken and Rabbit Problem)
// Classic Chinese mathematical problem from "The Mathematical Classic of Master Sun"
// 今有雞兔同籠，上有三十五頭，下有九十四足，問雞兔各幾何？
// "There are chickens and rabbits in a cage. There are 35 heads and 94 feet. How many chickens and rabbits are there?"

main() {
    println("雞兔同籠問題 - Chicken and Rabbit Problem")
    println("==========================================")
    
    // Given: total heads and total feet
    let totalHeads = 35
    let totalFeet = 94
    
    // Solution using algebra:
    // Let c = chickens, r = rabbits
    // c + r = totalHeads
    // 2c + 4r = totalFeet
    // Solving: r = (totalFeet - 2*totalHeads) / 2
    //          c = totalHeads - r
    
    let rabbits = (totalFeet - 2 * totalHeads) / 2
    let chickens = totalHeads - rabbits
    
    println("總頭數 (Total heads): ${totalHeads}")
    println("總腳數 (Total feet): ${totalFeet}")
    println("")
    println("解答 (Solution):")
    println("  雞 (Chickens): ${chickens}")
    println("  兔 (Rabbits): ${rabbits}")
    println("")
    
    // Verification
    let calculatedHeads = chickens + rabbits
    let calculatedFeet = chickens * 2 + rabbits * 4
    
    println("驗證 (Verification):")
    println("  計算頭數: ${calculatedHeads} (應為 ${totalHeads})")
    println("  計算腳數: ${calculatedFeet} (應為 ${totalFeet})")
    
    if (calculatedHeads == totalHeads && calculatedFeet == totalFeet) {
        println("  ✓ 答案正確！")
    } else {
        println("  ✗ 答案錯誤！")
    }
}
