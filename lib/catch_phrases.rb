def mario
  status = 'Thank You Mario! But Our Princess Is In Another Castle!'
  puts phrase
end

def toadstool
  puts status
end
describe "mario" do
  it "puts out 'It's-a me, Mario!'" do
    expect{mario}.to output("It's-a me, Mario!\n").to_stdout
  end
end

describe "toadstool" do
  it "puts out 'Thank You Mario! But Our Princess Is In Another Castle'" do
    expect{toadstool}.to output("Thank You Mario! But Our Princess Is In Another Castle!\n").to_stdout
  end
end

describe "any_phrase" do
  it "takes in an argument and puts out the catch phrase" do
    phrase = "Do A Barrel Roll!"
    expect{any_phrase(phrase)}.to output("Do A Barrel Roll!")