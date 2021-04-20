require "csv"

class ImportCsv
  def self.import(path)
     CSV.foreach(path, headers: true) do |row|
       Post.create!(
         title: row["title"],
         aroma: row["aroma"],
         content: row["content"],
         user_id: row["user_id"],
       )
     end
  end
end