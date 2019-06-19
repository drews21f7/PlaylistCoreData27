//
//  Playlist+Convenience.swift
//  PlaylistCoreData27
//
//  Created by Drew Seeholzer on 6/19/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation
import CoreData


extension Playlist {
    @discardableResult
    convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.managedObjectContext) {
        self.init(context: context)
        self.name = name
    }
}
