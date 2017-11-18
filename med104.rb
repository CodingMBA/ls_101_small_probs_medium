def initialize_lights(n)
  lights = {}
  1.upto(n) do |num|
    lights[num] = 'off'
  end
  lights  
end

def toggle_nth_light(lights, nth_pass)
  lights.each do |light, setting|
    if light % nth_pass == 0
      lights[light] = alternate_light(lights, light)
    end
  end
  lights
end

def alternate_light(lights, light)
  lights[light] == "off" ? "on" : "off"
end

def toggle_lights(n)
  lights = initialize_lights(n)
  1.upto(n) do |nth_pass|
    toggle_nth_light(lights, nth_pass)
  end
  lights.select { |k, v| v == "on" }.keys
end

toggle_lights(1000)
