//
//  Customer.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import Foundation
import CoreData

@objc(Customer)
public class Customer: NSManagedObject {
    
}

extension Customer {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var email: String?
    @NSManaged public var phone: String?
    @NSManaged public var address: String?
    @NSManaged public var company: String?
    @NSManaged public var department: String?
    @NSManaged public var contactPerson: String?
    @NSManaged public var postalCode: String?
    @NSManaged public var city: String?
    @NSManaged public var prefecture: String?
    @NSManaged public var notes: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var createdAt: Date?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var orders: NSSet?
}

// MARK: Generated accessors for orders
extension Customer {
    @objc(addOrdersObject:)
    @NSManaged public func addToOrders(_ value: Order)
    
    @objc(removeOrdersObject:)
    @NSManaged public func removeFromOrders(_ value: Order)
    
    @objc(addOrders:)
    @NSManaged public func addToOrders(_ values: NSSet)
    
    @objc(removeOrders:)
    @NSManaged public func removeFromOrders(_ values: NSSet)
}

extension Customer: Identifiable {
    
}
