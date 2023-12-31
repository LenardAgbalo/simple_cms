module ApplicationHelper
    def error_messages_for(object)
        render(:partial => 'application/error_messages', :locals => { :object => object})
    end
    def status_tag(boolean, option={})
    option[:true_text] ||= ''
    option[:false_text] ||= ''

        if boolean
            content_tag(:span, option[:true_text], :class => 'status true')
        else
            content_tag(:span, option[:false_text], :class => 'status false')
        end
    end

end
