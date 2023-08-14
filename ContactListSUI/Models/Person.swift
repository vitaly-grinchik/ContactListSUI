//
//  Person.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let country: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Contact] {
        return []
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
        
    private func generatePhoneNumber() -> String{
        let countryCode = DataStore.shared.countryCodes.randomElement()?.value ?? "1"
        let operatorCode = String(Int.random(in: 10...99))
        let subscriberNumber = "XYY-YY-YY".map { char in
            switch char {
            case "X": return String(Int.random(in: 1...9))
            case "Y": return String(Int.random(in: 0...9))
            default: return "-"
            }
        }.joined(separator: " ")
        
        return countryCode + operatorCode + subscriberNumber
    }

}
