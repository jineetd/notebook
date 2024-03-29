class NoteStore
  class << self
  	def get_notes
      PluginStore.get('notebook', 'notes') || {}
    end
  	
    def add_note(note_id, note)
      notes = PluginStore.get('notebook', 'notes') || {}
      notes[note_id] = note
      PluginStore.set('notebook', 'notes', notes)

      note
    end
  end
end