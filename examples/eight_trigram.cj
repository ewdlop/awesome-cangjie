// 八卦 (Eight Trigrams / Ba Gua)
// The eight fundamental principles in Taoist cosmology
// Used in I Ching (易經), Feng Shui, and traditional Chinese philosophy

enum Trigram {
    | 乾  // ☰ Heaven (Qian) - 111
    | 兌  // ☱ Lake (Dui) - 110
    | 離  // ☲ Fire (Li) - 101
    | 震  // ☳ Thunder (Zhen) - 100
    | 巽  // ☴ Wind (Xun) - 011
    | 坎  // ☵ Water (Kan) - 010
    | 艮  // ☶ Mountain (Gen) - 001
    | 坤  // ☷ Earth (Kun) - 000
}

struct TrigramInfo {
    let name: String
    let symbol: String
    let binary: String
    let element: String
    let direction: String
    let attribute: String
}

func getTrigramInfo(trigram: Trigram): TrigramInfo {
    match (trigram) {
        case 乾 =>
            return TrigramInfo(
                name: "乾 (Qian)",
                symbol: "☰",
                binary: "111",
                element: "天 (Heaven)",
                direction: "西北 (Northwest)",
                attribute: "創造、剛健 (Creative, Strong)"
            )
        case 兌 =>
            return TrigramInfo(
                name: "兌 (Dui)",
                symbol: "☱",
                binary: "110",
                element: "澤 (Lake)",
                direction: "西 (West)",
                attribute: "喜悅 (Joyful)"
            )
        case 離 =>
            return TrigramInfo(
                name: "離 (Li)",
                symbol: "☲",
                binary: "101",
                element: "火 (Fire)",
                direction: "南 (South)",
                attribute: "依附、光明 (Clinging, Bright)"
            )
        case 震 =>
            return TrigramInfo(
                name: "震 (Zhen)",
                symbol: "☳",
                binary: "100",
                element: "雷 (Thunder)",
                direction: "東 (East)",
                attribute: "動、奮起 (Arousing, Moving)"
            )
        case 巽 =>
            return TrigramInfo(
                name: "巽 (Xun)",
                symbol: "☴",
                binary: "011",
                element: "風 (Wind)",
                direction: "東南 (Southeast)",
                attribute: "進入、柔順 (Gentle, Penetrating)"
            )
        case 坎 =>
            return TrigramInfo(
                name: "坎 (Kan)",
                symbol: "☵",
                binary: "010",
                element: "水 (Water)",
                direction: "北 (North)",
                attribute: "險陷 (Abysmal, Dangerous)"
            )
        case 艮 =>
            return TrigramInfo(
                name: "艮 (Gen)",
                symbol: "☶",
                binary: "001",
                element: "山 (Mountain)",
                direction: "東北 (Northeast)",
                attribute: "止、靜止 (Keeping Still)"
            )
        case 坤 =>
            return TrigramInfo(
                name: "坤 (Kun)",
                symbol: "☷",
                binary: "000",
                element: "地 (Earth)",
                direction: "西南 (Southwest)",
                attribute: "順從、接收 (Receptive, Yielding)"
            )
    }
}

main() {
    println("八卦 - Eight Trigrams (Ba Gua)")
    println("================================")
    println("From I Ching (易經) - The Book of Changes")
    println("")
    
    let trigrams: Array<Trigram> = [
        Trigram.乾, Trigram.兌, Trigram.離, Trigram.震,
        Trigram.巽, Trigram.坎, Trigram.艮, Trigram.坤
    ]
    
    for (trigram in trigrams) {
        let info = getTrigramInfo(trigram)
        println("${info.symbol} ${info.name}")
        println("   二進制 (Binary): ${info.binary}")
        println("   象徵 (Element): ${info.element}")
        println("   方位 (Direction): ${info.direction}")
        println("   屬性 (Attribute): ${info.attribute}")
        println("")
    }
    
    println("太極生兩儀，兩儀生四象，四象生八卦")
    println("The Supreme Ultimate produces the Two Modes,")
    println("The Two Modes produce the Four Forms,")
    println("The Four Forms produce the Eight Trigrams.")
}
