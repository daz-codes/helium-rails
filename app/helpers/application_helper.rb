module ApplicationHelper
  def he(name, record)
    model = record.model_name.singular
    id    = record.id
    "#{name}_#{model}_#{id}"
  end
end
