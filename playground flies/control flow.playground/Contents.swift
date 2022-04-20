import UIKit


func fibonacci(n: Int) {
    
    var answer = [Int]()
    var num = 0
    while num < n {
        if num == 0 {
            answer.append(0)
        } else if num == 1 {
            answer.append(1)
        } else {
            answer.append(answer[num-1] + answer[num-2])
        }
        num += 1
    }
        
    print(answer)

    
}


fibonacci(n:10)
