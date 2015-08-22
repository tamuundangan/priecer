class Api::StuffController

  before_filter do
    @response = {
      status: :error,
      products: [],
      message: ''
    }

    @filters = [:name, :categories, :places, :prices]
    @fields = [:name, :category, :place, :price]
  end
  
  def index #GET /stuff.json
    filtered = params.keys.map { |key| @filters.include? key }.all?

    unless filtered
      return
    end
  end

  def create #POST /stuff.json
    filtered = params.keys.map { |key| @fields.include? key }.all?
    if filtered
      options = params.select { |key| @fields.include? key }
      Data::Stuff.create(options)
    end
  end

  def update #PATCH /stuff/:id.json
  end
end
