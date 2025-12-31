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
    
    init(name: String, symbol: String, binary: String, element: String, direction: String, attribute: String) {
        this.name = name
        this.symbol = symbol
        this.binary = binary
        this.element = element
        this.direction = direction
        this.attribute = attribute
    }
}

func getTrigramInfo(trigram: Trigram): TrigramInfo {
    match (trigram) {
        case 乾 =>
            return TrigramInfo(
                "乾 (Qian)",
                "☰",
                "111",
                "天 (Heaven)",
                "西北 (Northwest)",
                "創造、剛健 (Creative, Strong)"
            )
        case 兌 =>
            return TrigramInfo(
                "兌 (Dui)",
                "☱",
                "110",
                "澤 (Lake)",
                "西 (West)",
                "喜悅 (Joyful)"
            )
        case 離 =>
            return TrigramInfo(
                "離 (Li)",
                "☲",
                "101",
                "火 (Fire)",
                "南 (South)",
                "依附、光明 (Clinging, Bright)"
            )
        case 震 =>
            return TrigramInfo(
                "震 (Zhen)",
                "☳",
                "100",
                "雷 (Thunder)",
                "東 (East)",
                "動、奮起 (Arousing, Moving)"
            )
        case 巽 =>
            return TrigramInfo(
                "巽 (Xun)",
                "☴",
                "011",
                "風 (Wind)",
                "東南 (Southeast)",
                "進入、柔順 (Gentle, Penetrating)"
            )
        case 坎 =>
            return TrigramInfo(
                "坎 (Kan)",
                "☵",
                "010",
                "水 (Water)",
                "北 (North)",
                "險陷 (Abysmal, Dangerous)"
            )
        case 艮 =>
            return TrigramInfo(
                "艮 (Gen)",
                "☶",
                "001",
                "山 (Mountain)",
                "東北 (Northeast)",
                "止、靜止 (Keeping Still)"
            )
        case 坤 =>
            return TrigramInfo(
                "坤 (Kun)",
                "☷",
                "000",
                "地 (Earth)",
                "西南 (Southwest)",
                "順從、接收 (Receptive, Yielding)"
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
