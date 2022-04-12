//
//  ViewController.swift
//  NotesApp
//
//  Created by Cihan Çallı on 12.04.2022.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var TableViewNote: UITableView!
    
    var noteList = [NotesModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Anote = NotesModel(note_id: 1, lesson_name: "Math", note1: 50, note2: 70)
        let Bnote = NotesModel(note_id: 2, lesson_name: "History", note1: 65, note2: 90)
        
        noteList.append(Anote)
        noteList.append(Bnote)
        TableViewNote.delegate = self
        TableViewNote.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    //Kaç bölümden oluşucak
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //Kaç tane veri olucak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = noteList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as! NoteCellTableViewCell
        
        cell.labelLessonName.text = note.lesson_name
        cell.labelNote1.text = String(note.note1!)
        cell.LabelNote2.text = String(note.note2!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toNoteDetail", sender: indexPath.row)
    }
    
}
