module PillTakenEventsHelper
  def t_boolean(expression)
    (expression) ? t("yes") : t("no")
  end
end
