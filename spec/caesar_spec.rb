require_relative '../test_1_caesar.rb'

describe 'caesar_cipher' do 
	it '0 shift does not change' do
		expect(caesar('asdf', 0)).to eq('asdf')
	end

	it 'changes lowercase letters to lowercase letters' do
		expect(caesar('asdf', 3)).to eq('dvgi')
	end

	it 'changes uppercase letters to uppercase letters' do
		expect(caesar('ASDF', 3)).to eq('DVGI')
	end

	it 'wraps lowercase letters to the beginning of the alphabet' do
		expect(caesar('xyz', 10)).to eq('hij')
	end

	it 'wraps uppercase letters to the beginning of the alphabet' do
		expect(caesar('XYZ', 10)).to eq('HIJ')
	end

	it 'doesn\'t change non-alphabet characters' do
		expect(caesar("What's that smell?!", 3)). to eq("Zkdw'v wkdw vphoo?!")
	end

	it 'changes letters backwards with a negative number' do
		expect(caesar('ABCXYZ + abcxyz', -3)). to eq("XYZUVW + xyzuvw")
	end
end