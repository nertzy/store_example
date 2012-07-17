class Search
  attr_reader :query

  def initialize(params)
    @query = params[:query]
  end

  def results
    return [] if missing_query?
    Product.where("name LIKE ?", "%#{@query}%")
  end

  def count
    results.count
  end

  def missing_query?
    @query.blank?
  end
end
