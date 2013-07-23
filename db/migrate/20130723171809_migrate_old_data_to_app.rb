class MigrateOldDataToApp < ActiveRecord::Migration
  Article.find_each do |article|
    category = Category.find_or_create_by_name(article.category)
    article.update_attribute("category_id", category.id)
    tags = article.tags.split(',').each {|tag| tag.strip!}
    tags.each do |tag|
      tag = Tag.find_or_create_by_name(tag)
      ArticlesTag.create(tag_id: tag.id, article_id: article.id)
    end
  end
end
