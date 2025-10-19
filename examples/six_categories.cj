// 六書 (Liù Shū - Six Categories of Chinese Characters)
// Classical classification system from 說文解字 (Shuōwén Jiězì)
// The six principles of Chinese character formation

enum CharacterCategory {
    | 象形  // Pictographs - visual representation
    | 指事  // Ideographs - abstract concepts
    | 會意  // Compound ideographs - combined meanings
    | 形聲  // Phono-semantic compounds - semantic + phonetic components
    | 轉注  // Derivative cognates - extended meanings
    | 假借  // Phonetic loan characters - borrowed for sound
}

struct CharacterExample {
    let character: String
    let category: CharacterCategory
    let explanation: String
    let components: String
    let evolution: String
}

func getCategoryName(category: CharacterCategory): String {
    match (category) {
        case 象形 => return "象形 (Xiàngxíng) - Pictographs"
        case 指事 => return "指事 (Zhǐshì) - Ideographs"
        case 會意 => return "會意 (Huìyì) - Compound Ideographs"
        case 形聲 => return "形聲 (Xíngshēng) - Phono-semantic Compounds"
        case 轉注 => return "轉注 (Zhuǎnzhù) - Derivative Cognates"
        case 假借 => return "假借 (Jiǎjiè) - Phonetic Loan Characters"
    }
}

func getCategoryDescription(category: CharacterCategory): String {
    match (category) {
        case 象形 => 
            return "Characters that visually depict physical objects or phenomena"
        case 指事 => 
            return "Characters that represent abstract concepts through symbolic marks"
        case 會意 => 
            return "Characters formed by combining meanings of multiple components"
        case 形聲 => 
            return "Characters with one component indicating meaning and another indicating sound"
        case 轉注 => 
            return "Characters that extend or transfer meanings to related concepts"
        case 假借 => 
            return "Characters borrowed to represent homophones with different meanings"
    }
}

main() {
    println("六書 - Six Categories of Chinese Characters")
    println("===========================================")
    println("Classical theory from 說文解字 (Shuōwén Jiězì)")
    println("By 許慎 (Xǔ Shèn), Eastern Han Dynasty (121 CE)")
    println("")
    
    // Category 1: 象形 (Pictographs)
    println("1. ${getCategoryName(CharacterCategory.象形)}")
    println("   ${getCategoryDescription(CharacterCategory.象形)}")
    println("")
    
    let pictographs: Array<CharacterExample> = [
        CharacterExample(
            character: "日",
            category: CharacterCategory.象形,
            explanation: "Circle with a dot = Sun",
            components: "⊙ → 日",
            evolution: "Ancient oracle bone form depicted the sun as a circle with a center dot"
        ),
        CharacterExample(
            character: "月",
            category: CharacterCategory.象形,
            explanation: "Crescent shape = Moon",
            components: "🌙 → 月",
            evolution: "Ancient form showed the crescent moon shape"
        ),
        CharacterExample(
            character: "山",
            category: CharacterCategory.象形,
            explanation: "Three peaks = Mountain",
            components: "⛰️ → 山",
            evolution: "Oracle bone script depicted three mountain peaks"
        ),
        CharacterExample(
            character: "水",
            category: CharacterCategory.象形,
            explanation: "Flowing stream = Water",
            components: "〜〜 → 水",
            evolution: "Ancient form showed flowing water with ripples"
        )
    ]
    
    for (ex in pictographs) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      演變: ${ex.evolution}")
    }
    println("")
    
    // Category 2: 指事 (Ideographs)
    println("2. ${getCategoryName(CharacterCategory.指事)}")
    println("   ${getCategoryDescription(CharacterCategory.指事)}")
    println("")
    
    let ideographs: Array<CharacterExample> = [
        CharacterExample(
            character: "上",
            category: CharacterCategory.指事,
            explanation: "Line above baseline = Above/Up",
            components: "— + 丨 → 上",
            evolution: "Indicator line above a reference point"
        ),
        CharacterExample(
            character: "下",
            category: CharacterCategory.指事,
            explanation: "Line below baseline = Below/Down",
            components: "丨 + — → 下",
            evolution: "Indicator line below a reference point"
        ),
        CharacterExample(
            character: "本",
            category: CharacterCategory.指事,
            explanation: "Mark at tree root = Root/Origin",
            components: "木 + — → 本",
            evolution: "Horizontal line marking the base of a tree"
        ),
        CharacterExample(
            character: "刃",
            category: CharacterCategory.指事,
            explanation: "Dot on blade = Blade edge",
            components: "刀 + • → 刃",
            evolution: "Dot indicating the sharp edge of a knife"
        )
    ]
    
    for (ex in ideographs) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      構成: ${ex.components}")
    }
    println("")
    
    // Category 3: 會意 (Compound Ideographs)
    println("3. ${getCategoryName(CharacterCategory.會意)}")
    println("   ${getCategoryDescription(CharacterCategory.會意)}")
    println("")
    
    let compoundIdeographs: Array<CharacterExample> = [
        CharacterExample(
            character: "明",
            category: CharacterCategory.會意,
            explanation: "Sun + Moon = Bright",
            components: "日 + 月 = 明",
            evolution: "Sun and moon together represent brightness and illumination"
        ),
        CharacterExample(
            character: "休",
            category: CharacterCategory.會意,
            explanation: "Person + Tree = Rest",
            components: "人 + 木 = 休",
            evolution: "A person leaning against a tree, resting"
        ),
        CharacterExample(
            character: "信",
            category: CharacterCategory.會意,
            explanation: "Person + Words = Trust/Faith",
            components: "人 + 言 = 信",
            evolution: "A person standing by their words"
        ),
        CharacterExample(
            character: "好",
            category: CharacterCategory.會意,
            explanation: "Woman + Child = Good",
            components: "女 + 子 = 好",
            evolution: "A mother with child represents goodness and harmony"
        )
    ]
    
    for (ex in compoundIdeographs) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      組合: ${ex.components}")
    }
    println("")
    
    // Category 4: 形聲 (Phono-semantic Compounds)
    println("4. ${getCategoryName(CharacterCategory.形聲)}")
    println("   ${getCategoryDescription(CharacterCategory.形聲)}")
    println("   (Most common category: ~90% of Chinese characters)")
    println("")
    
    let phonoSemanticCompounds: Array<CharacterExample> = [
        CharacterExample(
            character: "江",
            category: CharacterCategory.形聲,
            explanation: "Water radical + 工 (gōng) sound",
            components: "氵(water) + 工(sound) = 江(jiāng - river)",
            evolution: "Water semantic + phonetic component for pronunciation"
        ),
        CharacterExample(
            character: "清",
            category: CharacterCategory.形聲,
            explanation: "Water radical + 青 (qīng) sound",
            components: "氵(water) + 青(sound) = 清(qīng - clear)",
            evolution: "Water semantic + phonetic for 'clear water'"
        ),
        CharacterExample(
            character: "媽",
            category: CharacterCategory.形聲,
            explanation: "Woman radical + 馬 (mǎ) sound",
            components: "女(woman) + 馬(sound) = 媽(mā - mother)",
            evolution: "Woman semantic + phonetic component"
        ),
        CharacterExample(
            character: "銅",
            category: CharacterCategory.形聲,
            explanation: "Metal radical + 同 (tóng) sound",
            components: "金(metal) + 同(sound) = 銅(tóng - copper)",
            evolution: "Metal semantic + phonetic for copper"
        )
    ]
    
    for (ex in phonoSemanticCompounds) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      結構: ${ex.components}")
    }
    println("")
    
    // Category 5: 轉注 (Derivative Cognates)
    println("5. ${getCategoryName(CharacterCategory.轉注)}")
    println("   ${getCategoryDescription(CharacterCategory.轉注)}")
    println("   (Most debated category among scholars)")
    println("")
    
    let derivativeCognates: Array<CharacterExample> = [
        CharacterExample(
            character: "老",
            category: CharacterCategory.轉注,
            explanation: "Extended from 'elderly' to 'experienced'",
            components: "老 (old) ⟷ 考 (examine/aged)",
            evolution: "Related characters sharing semantic field of age"
        ),
        CharacterExample(
            character: "長",
            category: CharacterCategory.轉注,
            explanation: "Long/Length extended to Elder/Growth",
            components: "長 (cháng - long) ⟷ 長 (zhǎng - grow)",
            evolution: "Same character with extended meanings"
        )
    ]
    
    for (ex in derivativeCognates) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      關聯: ${ex.components}")
    }
    println("")
    
    // Category 6: 假借 (Phonetic Loan Characters)
    println("6. ${getCategoryName(CharacterCategory.假借)}")
    println("   ${getCategoryDescription(CharacterCategory.假借)}")
    println("")
    
    let phoneticLoans: Array<CharacterExample> = [
        CharacterExample(
            character: "來",
            category: CharacterCategory.假借,
            explanation: "Originally 'wheat', borrowed for 'come'",
            components: "來 (wheat pictograph) → 來 (lái - come)",
            evolution: "Phonetic borrowing due to similar pronunciation"
        ),
        CharacterExample(
            character: "萬",
            category: CharacterCategory.假借,
            explanation: "Originally 'scorpion', borrowed for '10,000'",
            components: "萬 (scorpion) → 萬 (wàn - ten thousand)",
            evolution: "Character borrowed for abstract number concept"
        ),
        CharacterExample(
            character: "自",
            category: CharacterCategory.假借,
            explanation: "Originally 'nose', borrowed for 'self'",
            components: "自 (nose) → 自 (zì - self)",
            evolution: "Ancient Chinese used 'nose' gesture to point to oneself"
        )
    ]
    
    for (ex in phoneticLoans) {
        println("   ${ex.character} - ${ex.explanation}")
        println("      借用: ${ex.components}")
    }
    println("")
    
    // Summary and cultural significance
    println("═══════════════════════════════════════════")
    println("文化意義 (Cultural Significance):")
    println("═══════════════════════════════════════════")
    println("")
    println("📚 Historical Context:")
    println("   The six categories theory was systematized by Xu Shen (許慎)")
    println("   in the Shuowen Jiezi (說文解字) dictionary, circa 121 CE")
    println("")
    println("🏛️ Linguistic Impact:")
    println("   - Foundation for understanding Chinese character formation")
    println("   - Essential for etymology and historical linguistics")
    println("   - Influences modern Chinese education")
    println("")
    println("📊 Character Distribution:")
    println("   形聲 (Phono-semantic): ~90% of all characters")
    println("   會意 (Compound ideographs): ~5%")
    println("   象形 (Pictographs): ~4%")
    println("   指事 (Ideographs): ~1%")
    println("   轉注 & 假借: <1%")
    println("")
    println("🔤 Modern Relevance:")
    println("   - Character learning and mnemonics")
    println("   - Input method design (like Cangjie 倉頡輸入法)")
    println("   - Font design and typography")
    println("   - Computational linguistics and NLP")
    println("")
    println("六書理論體現了漢字造字的智慧與規律")
    println("The Six Categories theory embodies the wisdom and patterns")
    println("of Chinese character formation")
}
