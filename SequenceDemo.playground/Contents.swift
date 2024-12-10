import UIKit

/*
var greeting = "Hello, playground"

struct Countdown: Sequence {
    let from: Int
    let to: Int
    
    struct Iterator: IteratorProtocol {
        var current = from
        let end = to
        
        mutating func next() -> Int? {
            guard current >= end else { return nil }
            defer { current -= 1 }
            return current
        }
    }
    
    func makeIterator() -> Iterator {
        return Iterator()
    }
}

// 使用自定义的 Countdown 序列
for count in Countdown(from: 5, to: 0) {
    print(count)
}
// 输出:
// 5
// 4
// 3
// 2
// 1
// 0

*/

//https://www.jianshu.com/p/f60db45cbf1f
struct LGSequence: Sequence {
    
    // 指定Element类型为Int
    typealias Element = Int

    var arrayCount: Int

    init(_ count: Int) {
        self.arrayCount = count
    }

    // 为Sequence创建一个迭代器，来遍历Seq中的元素
    func makeIterator() -> LGIterator{
        return LGIterator(self)
    }
}


/// 迭代器，遵循 IteratorProtocol 协议
struct LGIterator: IteratorProtocol {
    
    // 指定Element类型为Int
    typealias Element = Int

    let seq: LGSequence

    var count = 0

    // 提供一个构造方法，方便初始化迭代器
    init(_ sequence: LGSequence) {
        self.seq = sequence
    }

    // next 方法以count作为自增的操作
    mutating func next() -> Int? {

        guard count < self.seq.arrayCount else {
            return nil
        }

        count += 1
        return count
    }
}

let seq = LGSequence.init(10)

for element in seq {
    print(element)
}

