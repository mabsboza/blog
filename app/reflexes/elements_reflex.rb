class ElementsReflex < ApplicationReflex

  def sort
    elements = JSON.parse(element.dataset.elements)
    elements.each do |element|
      element_record = Element.where(id: element['id'])
      element_record.update(position_integer: element['position'])
    end
  end
end