import UIKit

let family = ["salah","manal","danah","dema","dalia","daniah"]
print(family.count)
var evenNumbers = [2,4,6,8,10,12]
evenNumbers.remove(at: 1)
evenNumbers += [16,18,20,22]
print(evenNumbers.randomElement()!)
evenNumbers.removeAll()
var Numbers = [1,2,3,4,5]
for i in Numbers{
    print(i)
}
for i in 6...10{
    Numbers.append(i)
}
for i in Numbers{
    print(i)
}

for i in Numbers{
    if i%2==0 {
        print(i)
    }
}
