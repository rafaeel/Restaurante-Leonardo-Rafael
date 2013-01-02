require 'java'
module Swing
   include_package 'java.awt'
   include_package 'javax.swing'
end
module AwtEvent
   include_package 'java.awt.event'
end

class ListenerDoBotao
   def action_performed(evento)
    Swing::JOptionPane.showMessageDialog(
      nil, "ActionListener feito em ruby")
   end
end

frame = Swing::JFrame.new
painel = Swing::JPanel.new
frame.add painel
label = Swing::JLabel.new

label.text = "Testando o JRuby!"
painel.add label
botao = Swing::JButton.new 'clique aqui'
botao.add_action_listener ListenerDoBotao.new
painel.add botao
frame.set_bounds(350,150,50,50)  x  d
frame.pack
frame.set_size(500, 500)
frame.visible = true
