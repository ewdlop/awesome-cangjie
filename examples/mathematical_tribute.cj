// 數學與物理致敬 (Tribute to Mathematics and Physics)
// Honoring great mathematicians and physicists who bridged Chinese and Western mathematics
//
// 張益唐 (Zhang Yitang) - Breakthrough on prime gaps
// Chern-Class - 陳省身 (Shiing-Shen Chern) - Differential geometry
// Yang-Mills Theory - 楊振寧 (Chen-Ning Yang) - Gauge theory
// Calabi-Yau Manifolds - 丘成桐 (Shing-Tung Yau) - String theory

main() {
    println("數學與物理學的中國貢獻")
    println("Chinese Contributions to Mathematics and Physics")
    println("================================================")
    println("")
    
    // Zhang Yitang (張益唐)
    println("1. 張益唐 (Zhang Yitang, 1955-)")
    println("   ---------------------------")
    println("   領域: 解析數論 (Analytic Number Theory)")
    println("   成就: 2013年證明存在無窮多對素數，其間隔小於7000萬")
    println("   Proved bounded gaps between primes (< 70 million)")
    println("   This was a major breakthrough toward the twin prime conjecture")
    println("")
    println("   雙素數猜想 (Twin Prime Conjecture):")
    println("   There are infinitely many primes p such that p+2 is also prime")
    println("   Examples: (3,5), (5,7), (11,13), (17,19), (29,31)...")
    println("")
    
    // Example of twin primes
    let twinPrimes: Array<(Int64, Int64)> = [
        (3, 5), (5, 7), (11, 13), (17, 19), (29, 31),
        (41, 43), (59, 61), (71, 73)
    ]
    
    print("   Twin Primes: ")
    for (pair in twinPrimes) {
        print("(${pair.0},${pair.1}) ")
    }
    println("\n")
    
    // Chern Class (陳省身)
    println("2. 陳省身 (Shiing-Shen Chern, 1911-2004)")
    println("   ------------------------------------")
    println("   領域: 微分幾何 (Differential Geometry)")
    println("   成就: 陳示性類 (Chern Classes)")
    println("   Chern classes are characteristic classes associated with")
    println("   complex vector bundles, fundamental in:")
    println("   - 拓撲學 (Topology)")
    println("   - 微分幾何 (Differential Geometry)")
    println("   - 代數幾何 (Algebraic Geometry)")
    println("   - 弦論 (String Theory)")
    println("")
    
    // Yang-Mills Theory (楊振寧)
    println("3. 楊振寧 (Chen-Ning Yang, 1922-)")
    println("   ------------------------------")
    println("   領域: 理論物理 (Theoretical Physics)")
    println("   成就: 楊-米爾斯理論 (Yang-Mills Theory)")
    println("   與Robert Mills共同發展的規範場論")
    println("   Foundation of the Standard Model of particle physics")
    println("   Applications:")
    println("   - 量子色動力學 (Quantum Chromodynamics)")
    println("   - 電弱理論 (Electroweak Theory)")
    println("   - 統一場論 (Unified Field Theory)")
    println("")
    println("   Yang-Mills Lagrangian:")
    println("   ℒ = -¼ F^μν F_μν")
    println("   where F_μν = ∂_μ A_ν - ∂_ν A_μ + g[A_μ, A_ν]")
    println("")
    
    // Calabi-Yau Manifolds (丘成桐)
    println("4. 丘成桐 (Shing-Tung Yau, 1949-)")
    println("   -----------------------------")
    println("   領域: 微分幾何與弦論 (Differential Geometry & String Theory)")
    println("   成就: 證明卡拉比猜想 (Proved Calabi Conjecture)")
    println("   Calabi-Yau manifolds are central to:")
    println("   - 弦論 (String Theory)")
    println("   - M-理論 (M-Theory)")
    println("   - 鏡像對稱 (Mirror Symmetry)")
    println("")
    println("   Properties of Calabi-Yau manifolds:")
    println("   - Ricci-flat Kähler manifolds")
    println("   - Vanishing first Chern class: c₁ = 0")
    println("   - Used to compactify extra dimensions in string theory")
    println("")
    
    // Chinese cultural connection
    println("5. 印刷術與知識傳播 (Printing Press & Knowledge Dissemination)")
    println("   ----------------------------------------------------------")
    println("   畢昇 (Bi Sheng, 990-1051) - 活字印刷術發明者")
    println("   Invented movable type printing around 1040 AD")
    println("   Impact on mathematics and science:")
    println("   - 數學典籍的廣泛傳播 (Wide dissemination of mathematical texts)")
    println("   - 《九章算術》《孫子算經》等古籍的保存與傳承")
    println("   - 促進東西方數學交流 (Facilitated East-West mathematical exchange)")
    println("")
    
    println("這些傑出數學家和物理學家展示了中國在現代科學的重要貢獻")
    println("These outstanding mathematicians and physicists demonstrate")
    println("China's significant contributions to modern science")
}
