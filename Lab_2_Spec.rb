require 'rspec'

require_relative 'Lab_2.rb'

RSpec. describe"Lab_2" do

	it "#test script1_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("Yaroshenko")
		expect(script1).to eq('oknehsoraY')
	end
	
	it "#test script1_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("AntonCS")
		expect(script1).to eq(128)
	end
	
	it "#test script2_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(3, "demi", "yellow", "bomj", "red", "igrem", "blue")
		expect(script2).to eq([[{"name: "=>"demi", "color: "=>"yellow"}], [{"name: "=>"bomj", "color: "=>"red"}], [{"name: "=>"igrem", "color: "=>"blue"}]])
	end
end