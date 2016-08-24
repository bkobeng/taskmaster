# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
community_category=Category.where(name: 'community').first_or_create(name: 'community')
house_category=Category.where(name: 'house').first_or_create(name: 'house')
errands_category=Category.where(name: 'errands').first_or_create(name: 'errands')
care_category=Category.where(name: 'care').first_or_create(name: 'care')
writing_category=Category.where(name: 'writing').first_or_create(name: 'writing')
graphic_category=Category.where(name: 'graphic').first_or_create(name: 'graphic')
music_category=Category.where(name: 'music').first_or_create(name: 'music')
style_category=Category.where(name: 'Lifestyle').first_or_create(name: 'style')





Subcategory.where(name: 'activities',category_id: community_category.id).first_or_create(name: 'activities',category_id: community_category.id)
Subcategory.where(name: 'classes',category_id: community_category.id).first_or_create(name: 'classes',category_id: community_category.id)
Subcategory.where(name: 'events',category_id: community_category.id).first_or_create(name: 'events',category_id: community_category.id)


Subcategory.where(name: 'kitchen cleaning',category_id: house_category.id).first_or_create(name: 'kitchen cleaning',category_id: house_category.id)
Subcategory.where(name: 'washing ',category_id: house_category.id).first_or_create(name: 'washing',category_id: house_category.id)
Subcategory.where(name: 'pest control',category_id: house_category.id).first_or_create(name: 'pest control',category_id: house_category.id)
Subcategory.where(name: 'fixing broken item',category_id: house_category.id).first_or_create(name: 'fixing broken item',category_id: house_category.id)
Subcategory.where(name: 'weeding',category_id: house_category.id).first_or_create(name: 'weeding',category_id: house_category.id)
Subcategory.where(name: 'Decoration',category_id: house_category.id).first_or_create(name: 'decoration',category_id: house_category.id)
Subcategory.where(name: 'cooking',category_id: house_category.id).first_or_create(name: 'cooking',category_id: house_category.id)
Subcategory.where(name: 'painting ',category_id: house_category.id).first_or_create(name: 'painting',category_id: house_category.id)
Subcategory.where(name: 'flower',category_id: house_category.id).first_or_create(name: 'flower',category_id: house_category.id)


Subcategory.where(name: 'delivery',category_id: errands_category.id).first_or_create(name: 'delivery',category_id: errands_category.id)
Subcategory.where(name: 'shopping',category_id: errands_category.id).first_or_create(name: 'shopping',category_id: errands_category.id)


Subcategory.where(name: 'school picking',category_id: care_category.id).first_or_create(name: 'school picking',category_id: care_category.id)
Subcategory.where(name: 'teaching',category_id: care_category.id).first_or_create(name: 'teaching',category_id: care_category.id)
Subcategory.where(name: 'family hangout',category_id: care_category.id).first_or_create(name: 'family hangout',category_id: care_category.id)

Subcategory.where(name: 'creative writing',category_id: writing_category.id).first_or_create(name: 'creative writing',category_id: writing_category.id)
Subcategory.where(name: 'project work',category_id: writing_category.id).first_or_create(name: 'project work',category_id: writing_category.id)
Subcategory.where(name: 'resumes & cover letters',category_id: writing_category.id).first_or_create(name: 'resumes & cover letters',category_id: writing_category.id)
Subcategory.where(name: 'press release',category_id: writing_category.id).first_or_create(name: 'press release',category_id: writing_category.id)
Subcategory.where(name: 'articles & blog',category_id: writing_category.id).first_or_create(name: 'articles & blog',category_id: writing_category.id)
Subcategory.where(name: 'presentation documents',category_id: writing_category.id).first_or_create(name: 'presentation documents',category_id: writing_category.id)

Subcategory.where(name: 'logo design',category_id: graphic_category.id).first_or_create(name: 'logo design',category_id: graphic_category.id)
Subcategory.where(name: 'book cover',category_id: graphic_category.id).first_or_create(name: 'book cover',category_id: graphic_category.id)
Subcategory.where(name: 'invitations',category_id: graphic_category.id).first_or_create(name: 'invitation',category_id: graphic_category.id)
Subcategory.where(name: 'T-shirt',category_id: graphic_category.id).first_or_create(name: 'T-shirt',category_id: graphic_category.id)
Subcategory.where(name: 'business',category_id: graphic_category.id).first_or_create(name: 'articles & blog',category_id: graphic_category.id)
Subcategory.where(name: 'presentation documents',category_id: graphic_category.id).first_or_create(name: 'presentation documents',category_id: graphic_category.id)
Subcategory.where(name: 'flyers & posters',category_id: graphic_category.id).first_or_create(name: 'flyers & posters',category_id: graphic_category.id)


Subcategory.where(name: 'jingles',category_id: music_category.id).first_or_create(name: 'kitchen cleaning',category_id: music_category.id)
Subcategory.where(name: 'voice over ',category_id: music_category.id).first_or_create(name: 'washing',category_id: music_category.id)
Subcategory.where(name: 'singer & song',category_id: music_category.id).first_or_create(name: 'singer & song',category_id: music_category.id)
Subcategory.where(name: 'sound effect',category_id: music_category.id).first_or_create(name: 'sound effect',category_id: music_category.id)
Subcategory.where(name: 'production',category_id: music_category.id).first_or_create(name: 'production',category_id: music_category.id)

Subcategory.where(name: 'animal care',category_id: style_category.id).first_or_create(name: 'animal care',category_id: style_category.id)
Subcategory.where(name: 'relationship ',category_id: style_category.id).first_or_create(name: 'relationship',category_id: style_category.id)
Subcategory.where(name: 'diet & weight loss',category_id: style_category.id).first_or_create(name: 'diet & weight loss',category_id: style_category.id)
Subcategory.where(name: 'cooking recipes',category_id: style_category.id).first_or_create(name: 'cooking recipes',category_id: style_category.id)
Subcategory.where(name: 'parenting tips',category_id: style_category.id).first_or_create(name: 'parenting tips',category_id: style_category.id)

