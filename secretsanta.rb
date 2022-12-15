def secret_santa(participants)
  empty_list = []
  participants_list = empty_list << participants
  randomised_participants = participants_list.flatten.shuffle!
  split_list = randomised_participants.each_slice( randomised_participants.size/2.round ).to_a
  pairs = split_list.map do |two_lists|
    p two_lists.first
  end
end

participants = "1. rob", "2. adam", "3. selina", "4. ollie",
"5. emma", "6. james", "7. ben", "8. sara, 9. isa"

secret_santa(participants)
