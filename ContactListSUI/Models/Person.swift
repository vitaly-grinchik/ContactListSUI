//
//  Person.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
// TODO: Make person info randomizator
//    static func getRandomListFor(numberOfPersons: Int) -> [Person] {
//        let dataSource = DataStore()
//        var contacts: [Person] = []
//        for _ in 1...numberOfPersons {
//            let person = dataSource.createRandomPerson()
//            contacts.append(person)
//        }
//        return contacts
//    }
//
//    private func createRandomEmailFor(_ name: String, _ surname: String) -> String {
//        var email = name.lowercased()
//        email.append(".")
//        email.append(surname.lowercased())
//        email.append("@")
//        email.append(mailServers.randomElement() ?? "gmail.com")
//        return email
//    }
//
//    private func createRandomPhone() -> String {
//        let countryCode = String(Int.random(in: 1...375))
//        let operatorCode = String(Int.random(in: 11...100))
//        var subscriberNumber = "xxx-xx-xx"
//
//        let numbers = subscriberNumber.map { (element) -> String in
//            if element != "-" {
//                return "\(Int.random(in: 0...9))"
//            } else {
//                return "-"
//            }
//        }
//        subscriberNumber = numbers.joined()
//
//        return "+\(countryCode) \(operatorCode) \(subscriberNumber)"
//    }
//
//    func createRandomPerson() -> Person {
//            let randomNameIndex = Int.random(in: 0..<names.count)
//            let randomSurnameIndex = Int.random(in: 0..<surnames.count)
//            let randomName = names[randomNameIndex]
//            let randomSurname = surnames[randomSurnameIndex]
//
//            let person = Person(
//                name: randomName,
//                surname: randomSurname,
//                phone: createRandomPhone(),
//                email: createRandomEmailFor(randomName, randomSurname)
//            )
//        return person
//    }
}
