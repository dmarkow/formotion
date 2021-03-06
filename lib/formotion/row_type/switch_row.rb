module Formotion
  module RowType
    class SwitchRow < Base

      def build_cell(cell)
        cell.selectionStyle = UITableViewCellSelectionStyleNone
        switchView = UISwitch.alloc.initWithFrame(CGRectZero)
        switchView.accessibilityLabel = row.title + " Switch"
        cell.accessoryView = switchView
        switchView.setOn(row.value || false, animated:false)
        switchView.when(UIControlEventValueChanged) do
          row.value = switchView.isOn
        end
        nil
      end

    end
  end
end