import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var result: String = ""
    var cards1:[String] = cards1
    var cards2:[String] = cards2
    
    for i in goal.indices {
        if !cards1.isEmpty && goal[i] == cards1[0] {
            result = "Yes"
            cards1.removeFirst()
            
        } else if !cards2.isEmpty && goal[i] == cards2[0] {
            result = "Yes"
            cards2.removeFirst()
            
        } else {
            result =  "No"
            break
        }
    }
    
    return result
}