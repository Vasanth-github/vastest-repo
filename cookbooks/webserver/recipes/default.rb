file "/home/centos/chef-repo/test.txt" do
     action :create
     content "This is my first program"

end

package "git"
file "/home/centos/chef-repo/test1.txt" do
     group "adm"
end

directory "src"

file "/home/centos/chef-repo/test1.txt" do
      action :delete
end
package "httpd"

service "httpd" do
        action :start
end
service "firewalld" do
        action [:disable,:stop]
end
file "/var/www/html/index.html" do
content "Hello Everyone"
end 
