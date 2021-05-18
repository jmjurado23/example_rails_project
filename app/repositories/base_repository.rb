class NotDefinedEntity < StandardError; end
class BaseRepository
  # El repositorio base se encarga de definir el comportamiento del acceso a base de datos
  # de los elementos definidos. La ventaja de tener un repositorio centralizado es que
  # todas las operaciones sobre la base de datos se centralizan en él. Se pueden crear
  # varios repositorios base para poder operar con diferentes bases de datos. Este repositorio
  # deberá ser inicializado y completado por cada modelo que tenga un acceso a base de datos.

  # SCOPES Y FINDERS
  def find(id)
    dataset.find(id)
  end

  def all
    dataset
  end

  # MODIFICADORES
  def create(attributes)
    entity.create(**attributes)
  end

  def update(id:, attributes:)
    find(id).update(**attributes)
  end

  def destroy(id)
    find(id).destroy
  end

  private

  def entity
    raise NotDefinedEntity
  end

  def dataset
    entity.all
  end
end
