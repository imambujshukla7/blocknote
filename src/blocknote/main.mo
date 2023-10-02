import BlockNote "blocknote/note";

actor BlockNote {
  var notes : [BlockNote.Note] = [];

  public func createNote(content : Text) : async BlockNote.Note {
    let note = BlockNote.Note{ id = Array.length(notes) + 1, content = content };
    notes := notes ++ [note];
    note
  };

  public func getNotes() : async [BlockNote.Note] {
    notes
  };
};

