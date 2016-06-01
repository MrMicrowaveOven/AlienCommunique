wave1 = 16368191637088910834159098202685440.0
wave2 = 11677159761321922952849403009790256654968431476473856.0

alien1 = 60479561273104168652304174731493376.0
alien2 = 42037775140758923161949049149211273119409177427443712.0

antena1 = 2468553521351190513386359178720371015680.0
antena2 = 2335431952264384665006648365913340213606881670994067456.0

planets1 = 948909505053876287754040784031183263414353920.0
planets2 = 1401259171358630776572575392119740616658474880694279974420480.0

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
