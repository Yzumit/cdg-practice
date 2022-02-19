require 'rspec'

require_relative 'Lab_1.rb'

RSpec.describe "Lab_1" do

	it "#test greeting_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Anton', 'Yaroshenko', '15')
		expect(greeting).to eq('Привет, Anton Yaroshenko. Тебе меньше 18 лет, но начать учиться программировать никогда не рано.')
	end
	
	it "#test greeting_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Anton', 'Yaroshenko', '22')
		expect(greeting).to eq('Привет, Anton Yaroshenko. Самое время заняться делом!')
	end
	
	it "#test foobar_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 33)
		expect(foobar).to eq(33)
	end
	
	it "#test foobar_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(15, 11)
		expect(foobar).to eq(26)
	end
	
	it "#test foobar_3" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(40, 20)
		expect(foobar).to eq(20)
	end
end