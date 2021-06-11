require "csv"

class ImportCsv
  path = File.join Rails.root, "db/csv_data/tip_data.csv"
  list = []
  CSV.foreach(path, headers: true) do |row|
    list << {
      image: File.open("#{Rails.root}/#{row['image']}"),
      title: row["title"],
      article: row["article"]
    }
  end
  puts "インポート処理を開始"
  Tip.create!(list)
  puts "インポート完了!!"
end
