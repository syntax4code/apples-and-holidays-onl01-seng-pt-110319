require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
   holiday_supplies = {
     :WINTER => {
       :CHRISTMAS => ["LIGHTS", "WREATH"],
       :NEW_YEARS => ["PARTY HATS"]
     },
     :SUMMER => {
       :FOURTH_OF_JULY => ["FIREWORKS", "BBQ"]
     },
     :FALL => {
       :THANKSGIVING => ["TURKEY"]
     },
     :SPRING => {
       :MEMORIAL_DAY => ["BBQ"]
     }
   }
   #return the second element in the 4th of July array

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  ["pumpkins", "costumes"] = supply_array
  holiday_hash[:fall][:halloween]<<supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

    holiday_hash[:winter].map do |holiday, supplies|
      supplies
    end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
      end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
      holidays.map do |holiday, supplies|
        holiday if supplies.include?("BBQ")
      end
    end.flatten.compact
end
