module Core
  class UserRepository < ::BaseRepository

    private

    def entity
      ::Core::User
    end
  end
end
