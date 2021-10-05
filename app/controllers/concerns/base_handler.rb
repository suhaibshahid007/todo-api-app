module BaseHandler
  extend ActiveSupport::Concern

  def model
    controller_name.camelize.singularize.constantize
  end
end
