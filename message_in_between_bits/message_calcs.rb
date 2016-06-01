require_relative '../helper_methods/number_system.rb'

wave1 = convert_binary_from_file(2272).to_f
wave2 = convert_binary_from_file(2273).to_f

alien1 = convert_binary_from_file(3029).to_f
alien2 = convert_binary_from_file(3030).to_f

antena1 = convert_binary_from_file(3786).to_f
antena2 = convert_binary_from_file(3787).to_f

planets1 = convert_binary_from_file(4543).to_f
planets2 = convert_binary_from_file(4544).to_f

frequency = 452129190.0
wavelength = 0.6630681332474906
travel_time = 50.000000351748156

def analysis(info)

  alien_height = info[:alien_size] / info[:wave_size] * info[:size_constant]
  alien_life = info[:alien_time] / info[:wave_time] * info[:time_constant]
  antena_size = info[:antena_size] / info[:wave_size] * info[:size_constant]
  antena_time = info[:antena_time] / info[:wave_time] * info[:time_constant]
  system_age_b_years = info[:planet_time] / info[:wave_time] * info[:time_constant] / 1000000000
  transmitting_time = info[:antena_time] / info[:wave_time] * info[:time_constant]

  return_info = {}
  return_info[:test_params] = (alien_life * alien_height * antena_size * system_age_b_years) / transmitting_time
  return_info[:alien_height] = alien_height.to_s + " meters"
  return_info[:life_expectancy] = alien_life.to_s + " years"
  return_info[:antena_size] = antena_size.to_s + " meters"
  return_info[:transmitting_time] = transmitting_time.to_s + " years"
  return_info[:system_age] = system_age_b_years.to_s + " billion years"


  return return_info
end


test1 = {
  wave_size: wave1,
  wave_time: wave2,
  alien_size: alien1,
  alien_time: alien2,
  antena_size: antena1,
  antena_time: antena2,
  planet_time: planets2,
  size_constant: wavelength,
  time_constant: travel_time
}

puts analysis(test1)
