class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    sum = 0

    notes = subject_item_notes.where(subject_item: subject_item)

    notes.each do |note|
      sum += note.value.to_f
    end

    average = notes.length == 0 ? 0 : sum/notes.length

    return sprintf('%.2f', average)
  end
end
