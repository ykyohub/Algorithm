import Foundation

func solution(_ s:String) -> Int {
    var answer: String = ""
    var temp: String = ""
    var number: [String: String] = ["zero": "0",
                                    "one": "1",
                                    "two": "2",
                                    "three": "3",
                                    "four": "4",
                                    "five": "5",
                                    "six": "6",
                                    "seven": "7",
                                    "eight": "8",
                                    "nine": "9",
                                   ]
    
    for i in s{
        if i.isNumber{
            answer.append(i)
        }else{
            temp.append(i)
            if number[temp] != nil{
                answer.append(number[temp]!)
                temp = ""
            }
        }
    }
    return Int(answer) ?? 0
}