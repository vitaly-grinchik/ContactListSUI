//
//  Contact.swift
//  Contacts
//
//  Created by Виталий Гринчик on 14.08.23.
//

struct Contact: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: (country: String, number: String)
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Contact] {
        var contacts = [Contact]()
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let listLength = min(names.count, surnames.count)
        
        for index in 0..<listLength {
            let name = names[index]
            let surname = surnames[index]
            let contact = Contact(
                id: Int.random(in: 0...100),
                name: name,
                surname: surname,
                phone: Contact.getRandomPhone(),
                email: Contact.getRandomEmail(
                    forName: name,
                    andSurname: surname
                )
            )
            contacts.append(contact)
        }
        
        return contacts
    }
    
    static func getRandomEmail(forName name: String, andSurname surname: String) -> String {
        let service = DataStore.shared.mailServices.randomElement() ?? "mail.ru"
        return "\(name).\(surname)@\(service)".lowercased()
    }
    
    static func getRandomPhone() -> (country: String, number: String) {
        // Default values
        var countryName = "USA"
        var countryCode = "1"
        
        if let index = DataStore.shared.countryCodes.indices.randomElement() {
            countryName = DataStore.shared.countryCodes[index].key
            countryCode = DataStore.shared.countryCodes[index].value
        }
        
        let operatorCode = String(Int.random(in: 10...99))
        let subscriberNumber = "XYY-YY-YY".map { char in
            switch char {
            // Subscriber's number first digit shouldn't be 0
            case "X": return String(Int.random(in: 1...9))
            case "Y": return String(Int.random(in: 0...9))
            default: return "-"
            }
        }.joined()
        
        let phone = "+" + [countryCode, operatorCode, subscriberNumber].joined(separator: " ")
        
        return (countryName, phone)
    }

}
