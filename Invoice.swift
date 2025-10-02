//
//  Invoice.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import Foundation
import CoreData

@objc(Invoice)
public class Invoice: NSManagedObject {
    
}

extension Invoice {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Invoice> {
        return NSFetchRequest<Invoice>(entityName: "Invoice")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var invoiceNumber: String?
    @NSManaged public var amount: NSDecimalNumber?
    @NSManaged public var taxAmount: NSDecimalNumber?
    @NSManaged public var totalAmount: NSDecimalNumber?
    @NSManaged public var status: String?
    @NSManaged public var dueDate: Date?
    @NSManaged public var paidAt: Date?
    @NSManaged public var createdAt: Date?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var order: Order?
    @NSManaged public var customer: Customer?
}

extension Invoice: Identifiable {
    
}

// MARK: - Invoice Status Enum
extension Invoice {
    enum Status: String, CaseIterable {
        case draft = "下書き"
        case sent = "送信済み"
        case paid = "支払済み"
        case overdue = "期限切れ"
        case cancelled = "キャンセル"
        
        var color: String {
            switch self {
            case .draft: return "gray"
            case .sent: return "blue"
            case .paid: return "green"
            case .overdue: return "red"
            case .cancelled: return "red"
            }
        }
    }
}
