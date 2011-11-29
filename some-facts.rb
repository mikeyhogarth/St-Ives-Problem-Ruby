@people_and_where_they_were_going = {}
@people_i_met = []
@things_people_had = {}

@numbers = 
  { :one => 1,
  :two => 2,
  :three => 3,
  :four => 4,
  :five => 5,
  :six => 6,
  :seven => 7,
  :eight => 8,
  :nine => 9,
  :ten => 10 }

@plurals =
  { :cat => :cats,
  :sack => :sacks,
  :kit => :kits,
  :wife => :wives,
  :man => :men
}

def as_i_was_going_to(place)
  @people_and_where_they_were_going[:me] = place
end

def i_met_a(person, things_they_had)
  @people_i_met << person
  every(person ,things_they_had)
end

def so(*args)
  args.each do 
    |arg| #is just being considered here, no acutal operations to be done
  end
end

def with(num)
  had(num) 
end

def had(num)
  @numbers[num]
end

def every(thing_or_person, thing_they_had)
  @things_people_had[thing_or_person] = thing_they_had
end
  
def how_many_were_going_to(place)
  people = @people_and_where_they_were_going.select {|person, destination| destination == place}
  puts people.count
end
