import UIKit

/*
- Array
데이터 타입의 값들을 순서대로 저정하는 리스트

- Dictionary
순서없이 키(key)와 값(Value) 한 쌍으로 데이터를 저장하는 컬렉션 타입

- Set
같은 데이터 타입의 값을 순서없이 저장하는 리스트 (집합)
*/

//-------------------------------------------------------

// Array

var numbers: Array<Int> = Array<Int>()

numbers.append(1) // append() 를 사용하여 Array에 추가 할 수 있다.
numbers.append(3)
// 1, 3

numbers.insert(2, at: 1) // insert()를 사용하여 추가 첫번째 인자에는 insert할 값을, at에는 인덱스를 사용
// 1, 2, 3

numbers.remove(at: 0) // remove()를 사용하여 삭제 배열의 삭제할 인덱스를 입력
// 2, 3

//-------------------------------------------------------

// Dictionary

// var dictionary : Dictionary<String, Int> = Dictionary<String, Int>()
var dictionary : [String : Int] = ["HELLO" : 1]

dictionary["java"] = 2
dictionary["swift"] = 4
// ["HELLO": 1, "swift": 4, "java": 2]

dictionary["swift"] = 10
// ["HELLO": 1, "swift": 10, "java": 2]

//-------------------------------------------------------

// Set

var set : Set = Set<Int>()

set.insert(1)
set.insert(2)
set.insert(2)
set.insert(3)
// 1, 2, 3

set.remove(2)
// 1, 3
