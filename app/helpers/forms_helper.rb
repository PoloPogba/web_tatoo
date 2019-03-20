module FormsHelper
  def personal
    @arr1 = []
    @pers = Activity.where(category: 1)
    @comp_pers = Activity.where(category: 4)
    @asso_pers = Activity.where(category: 6)
    @pers_comp_asso = Activity.where(category: 7)
    @arr1 << @pers
    @arr1 << @comp_pers
    @arr1 << @asso_pers
    @arr1 << @pers_comp_asso
    return @arr1
  end


  def company
    @arr2 = []
    @comp = Activity.where(category: 2)
    @comp_pers = Activity.where(category: 4)
    @asso_comp = Activity.where(category: 5)
    @pers_comp_asso = Activity.where(category: 7)
    @arr2 << @comp
    @arr2 << @comp_pers
    @arr2 << @asso_comp
    @arr2 << @pers_comp_asso
    return @arr2
  end

  def association
    @arr3 = []
    @asso = Activity.where(category: 3)
    @comp_asso = Activity.where(category: 5)
    @asso_pers = Activity.where(category: 6)
    @pers_comp_asso = Activity.where(category: 7)
    @arr3 << @asso
    @arr3 << @comp_asso
    @arr3 << @asso_pers
    @arr3 << @pers_comp_asso
    return @arr3
  end

  def activity_show
    if Form.last == Form.find_by(who_id: 1)
      return personal
    elsif Form.last == Form.find_by(who_id: 2)
      return company
    elsif Form.last == Form.find_by(who_id: 3)
      return association
    end
  end
end
