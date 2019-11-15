module Breadcrumb
  extend ActiveSupport::Concern
  included do
     helper Helpers
     helper_method :html_msg
     before_action :set_breadcrumbs
  end

  protected

  def set_breadcrumbs
    #Rails.logger.info I18n.locale
    @breadcrumbs = ["#{I18n.t('common.index_icon')}#{helpers.link_to(I18n.t('common.home'), root_path)}".html_safe]
  end

  def drop_breadcrumb(title=nil, url=nil)
    title ||= @page_title
    if title
      if url
        @breadcrumbs.push("<a href=\"#{url}\">#{title}</a>".html_safe)
      else
        @breadcrumbs.push("<a><cite>#{title}</cite></a>")
      end
    end
  end

  def drop_page_title(title)
    @page_title = title
    return @page_title
  end

  def no_breadcrumbs
    @breadcrumbs = []
  end

  def html_msg(msg, cls='alert-box')
    "<div class=\'layui-anim-fadein #{cls}\'>#{msg}</div>".html_safe
  end


  module Helpers
    def yield_or_default(message, default_message = "")
      message.nil? ? default_message : message
    end
    # set SITE_NAME in enviroment.rb
    # set @page_title in controller respectively
    # add<%= render_page_title %> in head
    def render_page_title
      @page_title ? "#{@page_title}_#{SiteName}" : SiteName rescue "SITE_NAME"
    end

    def body_class
      ["#{controller_name}_controller","#{action_name}_action"].join(" ")
      #class_attribute = ["#{controller_name}-controller","#{action_name}-action"].join(" ")
      #id_attribute = (@body_id)? " id=\"#{@body_id}-page\"" : ""
      #raw(%Q[ <body#{id_attribute} class="#{class_attribute}"> ])
    end


    # display the flash messages using foundation
    def notice_message(cls: 'alert-box')
      flash_messages = []
      _type = 'notice'
      flash.each do |type, message|
        next if message.nil?
        _type = type
        flash_messages << html_msg(message, cls) if message
      end
      "<div class='#{_type}' id='notice'><div class='layui-container'>#{flash_messages.join("\n")}</div></div>".html_safe
      #flash_messages.join("\n").html_safe
    end



    def s(html)
      sanitize( html, :tags => %w(table thead tbody tr td th ol ul li div span font img sup sub br hr a pre p h1 h2 h3 h4 h5 h6), :attributes => %w(id class style src href size color) )
    end

    def render_breadcrumb
      return "" if @breadcrumbs.nil? || @breadcrumbs.size <= 0
      prefix = "".html_safe
      #crumb = []#.html_safe

      #@breadcrumbs.each_with_index do |c, i|
      #  breadcrumb_class = []
      #  breadcrumb_class << "current" if i == (@breadcrumbs.length - 1)

      #  crumb.push content_tag(:a, c ,:class => breadcrumb_class )
      #end
      return prefix + content_tag(:span, @breadcrumbs.join("").html_safe, :class => "layui-breadcrumb")
    end

    def link_to_add_fields(name, f, association,new_object=nil,options={})
      new_object ||= f.object.class.reflect_on_association(association).klass.new()
      fields = f.fields_for(association, new_object, child_index: "new_#{association}") do |builder|
        render(association.to_s.singularize + "_fields", :f => builder)
      end
      options.merge!(data: {association: association,content: escape_javascript(fields.html_safe)},class: "add_fields")
      link_to(name,"#",options)
    end


    #set head description,keywords etc
    def head(head_identity=nil)
      content_for(:head) do
        case head_identity
        when "description"
          "<meta name=\"description\" content=\"#{yield}\" />\n"
        when "keywords"
          "<meta name=\"keywords\"  content=\"#{yield}\" />\n"
        else
          yield
        end.html_safe
      end
    end
    #add javascript to foot
    def foot
      content_for(:foot) do
        yield.html_safe
      end
    end
    #format time
    def format_timestamp(ts,format='%Y-%m-%d %H:%M')
      ts.strftime(format)
    end
  end

end
