require 'spec_helper'

feature "Site Navigation" do
  let!(:category) {Category.create(name: "Sports")}

  let!(:article)  {Article.create(category_id: category.id, title: "sports stuff", description: "This is an article about sports and stuff", )}

  let!(:tag) {Tag.create(name: "Soccer")}

  let!(:articles_tag) { ArticlesTag.create(article_id: article.id, tag_id: tag.id)}

  
  scenario "User visits categories page" do
    visit categories_path

    click_link category.name
    expect(current_path).to eq category_path(name: category.name)
    expect(page).to have_text(category.name)
    expect(page).to have_text(article.title)

  end

  scenario "User visits article show page from category show page" do
    visit category_path(name: category.name)
    click_link "sports stuff"
  end

  scenario "User visits tag page" do
    visit tags_path

    click_link tag.name
    expect(current_path).to eq tag_path(name: tag.name)
    expect(page).to have_text(tag.name)
    expect(page).to have_text(article.title)
  end

  scenario "User visits article show page from tag show page" do
    visit tag_path(name: tag.name)
    click_link "sports stuff"
  end
end
