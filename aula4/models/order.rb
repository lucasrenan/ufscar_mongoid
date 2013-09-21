class Order
  include Mongoid::Document

  field :date, type: Date

  embeds_many :items

  def self.total_price
    map = %Q{
      function () {
        var id = this._id;
        this.items.forEach(function (item){
          emit(id, item.price);
        });
      }
    }

    reduce = %Q{
      function(key, values) {
        return Array.sum(values);
      }
    }

    map_reduce(map, reduce).out(inline: true)
  end
end
