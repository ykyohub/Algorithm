func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    let strLower = Array("abcdefghijklmnopqrstuvwxyz")
    let strUpper = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    
    for i in s {
        if i == " " { result.append(" ") }
        else {
            if strLower.contains(i) {
                result.append(String(strLower[(strLower.firstIndex(of: i)! + n) % 26])) }
            else {
                result.append(String(strUpper[(strUpper.firstIndex(of: i)! + n) % 26])) }
        }
    }
    return result
}