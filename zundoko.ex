defmodule Zundoko do
	def kiyoshi(['ズン', 'ズン', 'ズン', 'ズン', 'ドコ']) do
		IO.puts 'キ・ヨ・シ!'
	end

	def kiyoshi(list) do
		word = Enum.random(['ズン', 'ドコ'])
		IO.write word
		added_list = list ++ [word]
		if length(added_list) >= 6 do
			kiyoshi(List.delete_at(added_list, 0))
		else
			kiyoshi(added_list)
		end
	end
end

Zundoko.kiyoshi([])
