def caesar_cipher(string, number)
  # convert string to ascii array
  ascii_array_from_string = string.split('').map { |char| char.ord }
  # add number to the asciii values
  new_ascii_values_array = ascii_array_from_string.map { |char|
    # keep capital letters
    if char.between?(65, 90)
      char + number > 90 ? char + number - 90 + 64 : char + number
    
    # keep downcase letters
    elsif char.between?(97, 122)
      char + number > 122 ? char + number - 122 + 96 : char + number

    # keep special characters
    else 
      char
    end
  }

  # convert new ascii values to letters
  new_ascii_values_array.map { |char| char.chr }.join()
end