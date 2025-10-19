// 中文大写数字 (Chinese Formal Numbers)
// Traditional Chinese numerical system used in financial and legal documents
// to prevent fraudulent alterations of written amounts
//
// The formal numbers:
// 壹 (yī) = 1    貳 (èr) = 2    叄 (sān) = 3    肆 (sì) = 4    伍 (wǔ) = 5
// 陸 (liù) = 6   柒 (qī) = 7    捌 (bā) = 8     玖 (jiǔ) = 9   拾 (shí) = 10
//
// Also includes larger units:
// 佰 (bǎi) = 100   仟 (qiān) = 1000   萬 (wàn) = 10,000   億 (yì) = 100,000,000

func getFormalDigit(digit: Int64): String {
    match (digit) {
        case 0 => return "零"
        case 1 => return "壹"
        case 2 => return "貳"
        case 3 => return "叄"
        case 4 => return "肆"
        case 5 => return "伍"
        case 6 => return "陸"
        case 7 => return "柒"
        case 8 => return "捌"
        case 9 => return "玖"
        case _ => return ""
    }
}

func convertToFormalNumber(num: Int64): String {
    if (num < 0 || num > 99999999) {
        return "數值超出範圍"
    }
    
    if (num == 0) {
        return "零"
    }
    
    var result = ""
    var needZero = false
    var tempNum = num
    
    // Handle 万 (ten thousands)
    if (tempNum >= 10000) {
        let wan = tempNum / 10000
        let hasThousand = wan >= 1000
        let hasHundred = (wan % 1000) >= 100
        let hasTen = (wan % 100) >= 10
        let hasOne = (wan % 10) > 0
        
        if (hasThousand) {
            result += getFormalDigit(wan / 1000)
            result += "仟"
            needZero = false
        } else {
            needZero = true
        }
        
        if (hasHundred) {
            if (needZero && !hasThousand) {
                result += "零"
            }
            result += getFormalDigit((wan % 1000) / 100)
            result += "佰"
            needZero = false
        } else if (hasThousand && (hasTen || hasOne)) {
            needZero = true
        }
        
        if (hasTen) {
            if (needZero && (!hasThousand || !hasHundred)) {
                result += "零"
            }
            result += getFormalDigit((wan % 100) / 10)
            result += "拾"
            needZero = false
        } else if ((hasThousand || hasHundred) && hasOne) {
            needZero = true
        }
        
        if (hasOne) {
            if (needZero) {
                result += "零"
            }
            result += getFormalDigit(wan % 10)
            needZero = false
        }
        
        result += "萬"
        tempNum = num % 10000
        needZero = tempNum > 0 && tempNum < 1000
    }
    
    // Handle thousands
    if (tempNum >= 1000) {
        if (needZero && num >= 10000) {
            result += "零"
        }
        result += getFormalDigit(tempNum / 1000)
        result += "仟"
        tempNum = tempNum % 1000
        needZero = tempNum > 0 && tempNum < 100
    }
    
    // Handle hundreds
    if (tempNum >= 100) {
        if (needZero && (num >= 1000 || num >= 10000)) {
            result += "零"
        }
        result += getFormalDigit(tempNum / 100)
        result += "佰"
        tempNum = tempNum % 100
        needZero = tempNum > 0 && tempNum < 10
    }
    
    // Handle tens
    if (tempNum >= 10) {
        if (needZero && (num >= 100 || num >= 1000 || num >= 10000)) {
            result += "零"
        }
        result += getFormalDigit(tempNum / 10)
        result += "拾"
        tempNum = tempNum % 10
        needZero = false
    }
    
    // Handle ones
    if (tempNum > 0) {
        if (needZero && num > 10) {
            result += "零"
        }
        result += getFormalDigit(tempNum)
    }
    
    return result
}

main() {
    println("中文大写数字 - Chinese Formal Numbers")
    println("======================================")
    println("大写数字用於金融和法律文件，以防止數字篡改")
    println("(Formal numbers used in financial and legal documents to prevent fraud)")
    println("")
    
    // Display the basic formal numbers
    println("基本大写数字 (Basic Formal Numbers 1-10):")
    println("  1 → 壹")
    println("  2 → 貳")
    println("  3 → 叄")
    println("  4 → 肆")
    println("  5 → 伍")
    println("  6 → 陸")
    println("  7 → 柒")
    println("  8 → 捌")
    println("  9 → 玖")
    println("  10 → 拾")
    println("")
    
    // Conversion examples
    println("数字转换示例 (Number Conversion Examples):")
    
    let num1: Int64 = 23
    println("  ${num1} → ${convertToFormalNumber(num1)}")
    
    let num2: Int64 = 108
    println("  ${num2} → ${convertToFormalNumber(num2)}")
    
    let num3: Int64 = 567
    println("  ${num3} → ${convertToFormalNumber(num3)}")
    
    let num4: Int64 = 1234
    println("  ${num4} → ${convertToFormalNumber(num4)}")
    
    let num5: Int64 = 10000
    println("  ${num5} → ${convertToFormalNumber(num5)}")
    
    let num6: Int64 = 50000
    println("  ${num6} → ${convertToFormalNumber(num6)}")
    
    let num7: Int64 = 12345678
    println("  ${num7} → ${convertToFormalNumber(num7)}")
    println("")
    
    // Real-world usage examples
    println("实际应用示例 (Real-world Usage Examples):")
    println("")
    
    // Bank check example
    println("1. 银行支票 (Bank Check):")
    let checkAmount: Int64 = 12580
    let formalAmount = convertToFormalNumber(checkAmount)
    println("   金额 (Amount): ￥${checkAmount}")
    println("   大写 (Formal): 人民币${formalAmount}元整")
    println("")
    
    // Contract example
    println("2. 合同金额 (Contract Amount):")
    let contractAmount: Int64 = 98765
    let formalContract = convertToFormalNumber(contractAmount)
    println("   金额 (Amount): ￥${contractAmount}")
    println("   大写 (Formal): 人民币${formalContract}元整")
    println("")
    
    // Invoice example
    println("3. 发票金额 (Invoice Amount):")
    let invoiceAmount: Int64 = 45678
    let formalInvoice = convertToFormalNumber(invoiceAmount)
    println("   金额 (Amount): ￥${invoiceAmount}")
    println("   大写 (Formal): 人民币${formalInvoice}元整")
    println("")
    
    // Historical context
    println("历史背景 (Historical Background):")
    println("大写数字起源于明朝，由朱元璋推广使用，用于防止账目篡改。")
    println("(Formal numbers originated in the Ming Dynasty, promoted by Emperor Zhu Yuanzhang")
    println(" to prevent fraudulent alterations in accounting records.)")
    println("")
    
    // Comparison with simple numbers
    println("简体数字与大写数字对比 (Simple vs Formal Numbers):")
    println("简体数字: 一二三四五六七八九十 - 容易被篡改")
    println("大写数字: 壹貳叄肆伍陸柒捌玖拾 - 笔画复杂，不易篡改")
    println("")
    println("例如 (Examples):")
    println("  '一' 可以改为 '二' 或 '七'")
    println("  但 '壹' 无法轻易改为其他数字")
    println("")
    
    // Modern usage
    println("现代应用 (Modern Usage):")
    println("✓ 银行支票和汇票 (Bank checks and drafts)")
    println("✓ 商业合同和协议 (Business contracts and agreements)")
    println("✓ 法律文件 (Legal documents)")
    println("✓ 发票和收据 (Invoices and receipts)")
    println("✓ 财务报表 (Financial statements)")
}
