//
//  SongController.swift
//  PlaylistCoreData27
//
//  Created by Drew Seeholzer on 6/19/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
    //Singleton
    //Shared Instance
    static let shared = SongController()
    
    //CRUD
    //Create
    func createNewSongWith(title: String, artist: String, playlist: Playlist) {
        Song(name: title, artist: artist, playlist: playlist)
        PlaylistController.shared.saveToPersistentStore()
    }
    //Delete
    func delete(song: Song) {
        if let moc = song.managedObjectContext {
            moc.delete(song)
            PlaylistController.shared.saveToPersistentStore()
        }
    }
    
}
