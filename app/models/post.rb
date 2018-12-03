# class MyValidator < ActiveModel::Validator
#     def validate(record)
#         phr = ["Won't Believe", "Secret", "Top", "Guess"]
#         if record.title
#             unless phr.any? { |p| record.title.include?(p)} 
#                 record.errors[:name] << 'Need a clickbait title please'
#             end
#         end
#     end
# end

class Post < ActiveRecord::Base
    # include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
    # validates_with MyValidator
end
