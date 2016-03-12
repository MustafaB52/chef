directory "#{node['hello_world']['dir_path']}" do
action :create
end

file "#{node['hello_world']['dir_path']}/Test_file.txt" do
	content "Hello World, This is the test file"
	only_if do Dir.exists?("#{node['hello_world']['dir_path']}") end
end