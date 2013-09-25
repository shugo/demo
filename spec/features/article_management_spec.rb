require "spec_helper"

feature "記事管理" do
  scenario "新規記事を作成する" do
    visit "/articles/new"

    fill_in "Title", with: "テスト"
    fill_in "Body", with: "これはテストです。"
    click_button "Create Article"

    expect(page).to have_text("Article was successfully created")
    
    article = Article.all.order("id desc").first
    expect(article.title).to eq "テスト"
    expect(article.body).to eq "これはテストです。"
  end
end
