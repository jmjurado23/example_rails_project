class NotRepresentationDefined < StandardError; end

class BaseRepresentation
  # Clase básica de representación de objetos. Esta clase debe ser heredada para definir las
  # representaciones de los demás objetos. La clase define el método as_json para poder representar
  # los elementos. Actualmente requiere que se definan manualmente todos los métodos de acceso
  # a campos en cada representación
  attr_reader :result

  def initialize(entity)
    @entity = entity

    return false if @entity.blank?

    process
  end

  def to_s
    @result.as_json.to_s
  end

  def as_json
    @result.as_json
  end

  private

  def representation
    raise NotRepresentationDefined
  end

  def process
    if @entity.class.include? Enumerable
      @result = @entity.map do |elem|
        process_entity(elem)
      end
    else
      @result = process_entity(@entity)
    end
    @result
  end

  def process_entity(elem)
    hash_entity = Hash.new
    representation.each do |k, v|
      hash_entity[k] = send(v, elem)
    end
    hash_entity
  end
end
