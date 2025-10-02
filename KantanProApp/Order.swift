//
//  Order.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import Foundation
import CoreData

@objc(Order)
public class Order: NSManagedObject {
    
}

extension Order {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var orderDescription: String?  // description を orderDescription に変更
    @NSManaged public var status: String?
    @NSManaged public var amount: NSDecimalNumber?
    @NSManaged public var taxAmount: NSDecimalNumber?
    @NSManaged public var totalAmount: NSDecimalNumber?
    @NSManaged public var taxRate: NSDecimalNumber?
    @NSManaged public var isTaxInclusive: Bool
    @NSManaged public var dueDate: Date?
    @NSManaged public var completedAt: Date?
    @NSManaged public var createdAt: Date?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var customer: Customer?
    @NSManaged public var services: NSSet?
    @NSManaged public var invoices: NSSet?
}

// MARK: Generated accessors for services
extension Order {
    @objc(addServicesObject:)
    @NSManaged public func addToServices(_ value: Service)
    
    @objc(removeServicesObject:)
    @NSManaged public func removeFromServices(_ value: Service)
    
    @objc(addServices:)
    @NSManaged public func addToServices(_ values: NSSet)
    
    @objc(removeServices:)
    @NSManaged public func removeFromServices(_ values: NSSet)
}

// MARK: Generated accessors for invoices
extension Order {
    @objc(addInvoicesObject:)
    @NSManaged public func addToInvoices(_ value: Invoice)
    
    @objc(removeInvoicesObject:)
    @NSManaged public func removeFromInvoices(_ value: Invoice)
    
    @objc(addInvoices:)
    @NSManaged public func addToInvoices(_ values: NSSet)
    
    @objc(removeInvoices:)
    @NSManaged public func removeFromInvoices(_ values: NSSet)
}

extension Order: Identifiable {
    
}

// MARK: - Order Status Enum
extension Order {
    enum Status: String, CaseIterable {
        case estimate = "見積中"
        case ordered = "受注"
        case inProgress = "進行中"
        case completed = "完了"
        case invoiced = "請求"
        case paid = "支払い"
        case cancelled = "ボツ"
        
        var color: String {
            switch self {
            case .estimate: return "orange"
            case .ordered: return "blue"
            case .inProgress: return "purple"
            case .completed: return "green"
            case .invoiced: return "yellow"
            case .paid: return "green"
            case .cancelled: return "red"
            }
        }
    }
}
