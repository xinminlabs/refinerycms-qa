module Refinery
  module Qa
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery::Qa

      initializer "init plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinerycms_qa"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.qa_admin_questions_path }
          plugin.menu_match = %r{refinery/qa(/.+?)?$}
        end
      end

      config.after_initialize do
        Refinery.register_engine(Refinery::Qa)
      end
    end
  end
end
