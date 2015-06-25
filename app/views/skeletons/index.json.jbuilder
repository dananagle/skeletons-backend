json.array! @skeletons do |skeleton|

 json.id skeleton.id
 json.content skeleton.content
 json.user do
    json.id skeleton.user.id
    json.user_name skeleton.user.user_name
  end
end


#json.array! @skeletons, :id, :content, :user
