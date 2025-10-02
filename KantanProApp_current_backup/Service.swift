//
//  Service.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import Foundation
import CoreData

@objc(Service)
public class Service: NSManagedObject {
    
}

extension Service {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Service> {
        return NSFetchRequest<Service>(entityName: "Service")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var serviceDescription: String?  // description を serviceDescription に変更
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var unit: String?
    @NSManaged public var category: String?
    @NSManaged public var taxRate: NSDecimalNumber?
    @NSManaged public var isActive: Bool
    @NSManaged public var createdAt: Date?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var orders: NSSet?
}

// MARK: Generated accessors for orders
extension Service {
    @objc(addOrdersObject:)
    @NSManaged public func addToOrders(_ value: Order)
    
    @objc(removeOrdersObject:)
    @NSManaged public func removeFromOrders(_ value: Order)
    
    @objc(addOrders:)
    @NSManaged public func addToOrders(_ values: NSSet)
    
    @objc(removeOrders:)
    @NSManaged public func removeFromOrders(_ values: NSSet)
}

extension Service: Identifiable {
    
}
