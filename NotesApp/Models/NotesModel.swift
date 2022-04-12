//
//  NotesModel.swift
//  NotesApp
//
//  Created by Cihan Çallı on 12.04.2022.
//

import Foundation

class NotesModel {
    var note_id:Int?
    var lesson_name:String?
    var note1:Int?
    var note2:Int?
    
    init(){
        
    }
    
    init(note_id:Int,lesson_name:String, note1:Int, note2:Int){
        self.note_id = note_id
        self.lesson_name = lesson_name
        self.note1 = note1
        self.note2 = note2
    }
}
