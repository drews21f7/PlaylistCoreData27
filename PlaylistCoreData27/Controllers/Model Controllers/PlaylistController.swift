//
//  PlaylistController.swift
//  PlaylistCoreData27
//
//  Created by Drew Seeholzer on 6/19/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    //Singleton
    //Shared Instances
    static let shared = PlaylistController()
    
    //Source of Truth
    var playlist: [Playlist] = []
    
    //CRUD Functions
    //Create
    func createPlaylistWith(name: String) {
        Playlist(name: name)
        saveToPersistentStore()
        
    }
    
    //Delete
    func delete(playlist: Playlist) {
        //moc = managed object context
        if let moc = playlist.managedObjectContext {
            moc.delete(playlist)
            saveToPersistentStore()
        }
    }
    //Save
    func saveToPersistentStore() {
        let moc = CoreDataStack.managedObjectContext
        do {
            try moc.save()
        } catch {
            print("Error saving to moc: \(error.localizedDescription)")
        }
    }
}
