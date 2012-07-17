class Search
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  validates :query, presence: {message: "Please fill out a search query"}

  attr_reader :query

  def initialize(params = {})
    @query = params[:query]
  end

  def persisted?
    false
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
