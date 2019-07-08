import UIKit

//class Person {
//    var name: String?
//    var phone: String?
//
//    init(name: String?, phone: String?) {
//        self.name = name
//        self.phone = phone
//    }
//}
//
//
//
//class viewcontroller: UIViewController{
//    var people = [
//        Person(name: <#T##String?#>, phone: <#T##String?#>)
//    ]
//}
//--------------------STRUCT-------------//
//Kieu tham tri: gia tri cua no duoc copy khi duoc gan voi mot bien hoac 1 hang
struct Nguoi{
    var ten: String
    var diachi: String
    
    init(ten: String,diachi: String) {
        self.ten = ten
        self.diachi = diachi
    }
}


var nguoi1 = Nguoi(ten: "nguyen van nam", diachi: "Ha noi")
var nguoi2 = nguoi1


nguoi1.ten = "Nguyen dieu Linh"
print(nguoi1.ten)
print(nguoi2.ten)
//--------------------Class-----------------//
//Kue tham chieu: khi ma gia tri cua no duoc gan voi mot var hay 1 constant -> luc mot gia tri thay doi thi toan bo gia tri duoc no tham chieu den deu thay doi.
class Animal{
    var categrory: String
    var numberOffoot: Int
    
    
    init(categrory: String,numberOffoot: Int) {
        self.categrory = categrory
        self.numberOffoot = numberOffoot
    }
}

var dog = Animal(categrory: "Xuc vat", numberOffoot: 30)
var otherAnimal = dog

dog.categrory = "Xuc sinh"
print(dog.categrory)
print(otherAnimal.categrory)

//identical to: hoan toanbang nhau: hai bien or hang tham chieu toi chinh xac cung 1 truong hop of a class
class Xe{}

let xeDap = Xe()
let xeDu = xeDap

xeDap === xeDu

let xeTang = Xe()
xeTang === xeDap

//equal to: tuong duong nhau ve gia tri


10 == 10
"Nguyen dieu Linh" == "Nguyen dieu Linh"
"mot" == "1"
//DEINITIALIZER

class  someClass{
    deinit {
        print("giai phong bo nho")
    }
}

var cls: someClass? = someClass()
cls = nil
