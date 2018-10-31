
json.data do 
  json.character do 
  
    json.call(
      @character, 
      :name,
      :rank,
      :gender,
      :squad,
      :image_url
    )
      json.skills @character.skills do |skills|
        json.stat skills.stat
      end
          json.powers @character.powers do |powers|
            json.magic powers.magic
            end
              json.videos @character.videos do |videos|
                json.title videos.title
                json.video_url videos.video_url 
                end

    end
end



