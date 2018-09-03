class Computer
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}

    @@users[username] = password
  end

  @@users = {}

  def create(filename)
    time = Time.now
    @files[filename] = time
  end

  def Computer.get_users
    return @@users
  end

  puts "A new file has been created"
end

my_computer = Computer.new("Dan", "s3cr3T")
