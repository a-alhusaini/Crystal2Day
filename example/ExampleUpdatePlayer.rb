puts "Player Test: #{entity.get_state("test")}, Magic number: #{entity.magic_number}, Position: #{entity.position}"

each_frame do
  entity.accelerate(Crystal2Day.xy(0, 1))

  x_input = false

  if Crystal2Day.im.key_down?("left")
    x_input = true
    entity.velocity.x = -2
  end
  if Crystal2Day.im.key_down?("right")
    x_input = true
    entity.velocity.x = 2
  end
  if Crystal2Day.im.key_down?("up")
    entity.velocity.y = -2
  end
  if Crystal2Day.im.key_down?("down")
    entity.velocity.y = 2
  end

  entity.velocity.x = 0 unless x_input

  entity.change_hook_page_to("fast") if Crystal2Day.im.key_down?("fast_mode")
end