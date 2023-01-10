
import Foundation

struct SortedSet{
  var arr1 : [Int] = []
  mutating func addElement(n:Int){
    if(arr1.contains(n)){
      return
    }
    arr1.append(n)
    arr1.sort()
  }
  mutating func addAll(elements:[Int]){
    for element in elements {
      addElement(n: element)
    }
  }
  func maxim() -> Int?{
    return arr1.last
  }
  func minim() -> Int?{
    return arr1.first
  }
  mutating func deleteElementFromIndex(n:Int){
    if(n >= arr1.count){
      return
      }
    arr1.remove(at: n)
  }
  func isExist(n:Int) -> Bool {
    if(arr1.contains(n)){
      return true
    }
    return false
  }
}
