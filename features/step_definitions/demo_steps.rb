PAGES = {
  "新規記事" => "/articles/new"
}

前提(/^"(.*?)"ページを表示している$/) do |name|
  visit PAGES[name]
end

もし(/^"(.*?)"に"(.*?)"と入力する$/) do |name, value|
  fill_in name, with: value
end

もし(/^"(.*?)"ボタンをクリックする$/) do |name|
  click_button name
end

ならば(/^"(.*?)"と表示されていること$/) do |text|
  expect(page).to have_text(text)
end
