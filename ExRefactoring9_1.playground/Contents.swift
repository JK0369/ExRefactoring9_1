import UIKit

// # ex. 어떻게의 의미만 들어난 조건문
struct Plan {
    let reservationDate: Date
    let summerStart = Date()
}

struct Person {
    let name: String
    let age: Int
    let plan: Plan
}

let jake = Person(name: "jake", age: 20, plan: .init(reservationDate: Date()))
let basePrice: UInt64 = 120
var charge: UInt64

if 20 < jake.age && jake.plan.summerStart < jake.plan.reservationDate {
    charge = basePrice * 2
} else {
    charge = basePrice
}

// # ex. 왜의 의미가 들어난 조건문

func adult() -> Bool {
    20 < jake.age
}
func summer() -> Bool {
    jake.plan.summerStart < jake.plan.reservationDate
}

if adult() && summer() {
    charge = basePrice * 2
} else {
    charge = basePrice
}


// # ex. 복잡한 조건문

let isUserLoggedIn = true
let hasSubscription = false
let isAdmin = false
let isTrialPeriodExpired = true

if isUserLoggedIn {
    if hasSubscription {
        if isAdmin {
            print("관리자로 로그인되었습니다.")
        } else {
            if isTrialPeriodExpired {
                print("로그인되었습니다. 구독이 만료되었습니다.")
            } else {
                print("로그인되었습니다. 구독이 활성화되었습니다.")
            }
        }
    } else {
        print("로그인되었습니다. 구독을 시작해주세요.")
    }
} else {
    print("로그인이 필요합니다.")
}


func checkSubscribing(isUserLoggedIn: Bool, hasSubscription: Bool, isAdmin: Bool, isTrialPeriodExpired: Bool) {
    if isUserLoggedIn {
        if hasSubscription {
            if isAdmin {
                print("관리자로 로그인되었습니다.")
            } else {
                if isTrialPeriodExpired {
                    print("로그인되었습니다. 구독이 만료되었습니다.")
                } else {
                    print("로그인되었습니다. 구독이 활성화되었습니다.")
                }
            }
        } else {
            print("로그인되었습니다. 구독을 시작해주세요.")
        }
    } else {
        print("로그인이 필요합니다.")
    }
}

checkSubscribing(isUserLoggedIn: true, hasSubscription: true, isAdmin: false, isTrialPeriodExpired: true)
