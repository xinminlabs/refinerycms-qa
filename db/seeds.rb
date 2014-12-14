::Refinery::User.all.each do |user|
  user.plugins.where(:name => 'refinery_qa').first_or_create!
end if defined?(::Refinery::User)

if defined?(::Refinery::Page)
  contact_us_page = Refinery::Page.where(:link_url => Refinery::Qa.page_path_new).first

  unless contact_us_page
    contact_us_page = ::Refinery::Page.create({
      :title => "问答",
      :link_url => Refinery::Qa.page_path_new,
      :menu_match => "^(/qa.*)|#{Refinery::Qa.page_path_new}$",
      :show_in_menu => false,
      :deletable => false
    })
    contact_us_page.parts.create({
      :title => "Body",
      :body => "<p>提问</p>",
      :position => 0
    })
    contact_us_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end

  unless Refinery::Page.where(:link_url => Refinery::Qa.page_path_thank_you).any?
    thank_you_page = contact_us_page.children.create({
      :title => "谢谢",
      :link_url => Refinery::Qa.page_path_thank_you,
      :menu_match => "^(/qa/thank_you)|#{Refinery::Qa.page_path_thank_you}$",
      :show_in_menu => false,
      :deletable => false
    })
    thank_you_page.parts.create({
      :title => "Body",
      :body => "<p>我们已经收到你的提问</p><p><a href='/'>返回首页</a></p>",
      :position => 0
    })
  end
end
