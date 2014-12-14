module Refinery
  module Qa
    include ActiveSupport::Configurable
    config_accessor :post_path, :page_path_new, :page_path_thank_you

    self.post_path = "/contact"
    self.page_path_new = "/contact"
    self.page_path_thank_you = "/contact/thank_you"
  end
end
