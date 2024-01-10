func solution(_ a:Int, _ b:Int) -> String {
    
    var days: Int = 0
    
    if a==1 {
        days += (b-1)
    }else if a == 2{
        days = 30 + b
    }else {
        days = 59 // 30 + 29
        for i in 3...a {
            if i%2 == 1 && i != a {
                if i<8 {
                    days += 31
                }else {
                    days += 30
                }
            }else if i%2 == 0 && i != a{
                if i<8 {
                    days += 30
                }else {
                    days += 31
                }
            }else {
                days += b
            }
        }
    }
    switch((days)%7){
    case 0: return "FRI"
    case 1: return "SAT"
    case 2: return "SUN"
    case 3: return "MON"
    case 4: return "TUE"
    case 5: return "WED"
    case 6: return "THU"
    default: return "FRI"
    }
}