module ConfessionsHelper
  def confession_gender_border_css_class(gender)
    @gender_css_border_class = (gender == 0) ? 'border-primary' : 'border-warning'
  end

  def confession_gender_text_css_class(gender)
    @gender_css_border_class = (gender == 0) ? 'text-primary' : 'text-warning'
  end

  def title_hover_style(gender)
    @gender_css_title_class = (gender == 0) ? 'confession-0' : 'confession-1'
  end

  def gender_symbol(gender)
    @gender_symbol = (gender == 0) ? '♂️' : '♀️'
  end

end
