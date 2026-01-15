# Convenient whenever running into an infinite loop
Signal.trap("TERM") do
  exit
end
