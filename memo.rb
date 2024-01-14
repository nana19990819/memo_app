require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    p "メモしたい内容を記入してください"
    p "完了したらCtrl + Dをおします"
    input = STDIN.read
    
    CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts ["#{input}"]
    end

elsif memo_type == 2
    puts "拡張子を除いたファイルを入力してください"
    existing_file = gets.chomp
    p "編集内容を入力してください"
    p "完了したらCtrl + Dをおします"
    correct = STDIN.read
    
    CSV.open("#{existing_file}.csv","a") do |csv|
    csv.puts ["#{correct}"]
    end
else 
    puts "不正な値です"
end
