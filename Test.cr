require "./src/Crystal2Day.cr"

alias C2D = Crystal2Day

class CustomScene < C2D::Scene
  def init
    C2D::Window.new(title: "Hello", w: 800, h: 600)
    
    box = C2D::ShapeBox.new(C2D.xy(200, 200), position: C2D.xy(150, 150))
    box.color = C2D::Color.green
    box.filled = true
    box.z = 10
    box.pin
  end

  def handle_event(event)
    if event.type == C2D::Event::WINDOW
      if event.as_window_event.event == C2D::WindowEvent::CLOSE
        C2D.next_scene = nil
      end
    end
  end

  def exit
    C2D.current_window = nil
  end
end

C2D.run(CustomScene.new)
