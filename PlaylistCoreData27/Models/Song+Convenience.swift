//
//  Song+Convenience.swift
//  PlaylistCoreData27
//
//  Created by Drew Seeholzer on 6/19/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    @discardableResult
    convenience init(name: String, artist: String, playlist: Playlist, context: NSManagedObjectContext = CoreDataStack.managedObjectContext) {
        self.init(context: context)
        self.title = name
        self.artist = artist
        self.playlist = playlist
    }
}
