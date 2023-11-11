module ApplicationHelper

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
