class SearchTweetsService
  def self.search(search)
    search = "%#{search}%"
    Tweet.find_by_sql(["select * from tweets where text like ? ", search])
    else
      Tweet.all
    end
  end
end