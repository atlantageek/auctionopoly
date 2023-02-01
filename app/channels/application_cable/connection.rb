module ApplicationCable
  class Connection < ActionCable::Connection::Base

    def connect
      Rails.logger.debug(find_verified_user.to_s)
      self.currentx_user = find_verified_user
    end

    private
      # def find_verified_user
      #   logger.debug(self.current_user)
      #   if verified_user = User.find_by(id: cookies.encrypted[:user_id])
      #     verified_user
      #   else
      #     reject_unauthorized_connection
      #   end
      # end
      def find_verified_user
        current_user = User.find_by(id: cookies.signed[:user_id])
        Rails.logger.debug(cookies.signed[:user_id])
        if current_user
          current_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
