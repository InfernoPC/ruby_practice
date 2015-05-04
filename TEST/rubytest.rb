def def_d1(&block)
  puts "def_d1===start"
  puts "def_d1===got : #{block.call("yoo_def_d1")}"
  puts "def_d1===end"
end
def def_d2
  puts "def_d2[[GOGOGO!!]]"

  puts "def_d2[[lamb no return]]"
  lam_1 = lambda {|x| "**lamb no return (#{x})**"}
  def_d1(&lam_1)
  #=>def_d1===start
  #=>def_d1===got : **lamb no return (yoo_def_d1)**
  #=>def_d1===end

  puts "def_d2[[proc no return]]"
  proc_1 = Proc.new{|x| "**proc no return (#{x})**"}
  def_d1 &proc_1
  #=>def_d1===start
  #=>def_d1===got : **proc no return (yoo_def_d1)**
  #=>def_d1===end

  puts "def_d2[[lamb has return]]"
  lam_2 = lambda do |x|
    puts "<<lamb return : start (#{x})>>"
    return "**lamb has return**"
  end
  def_d1 &lam_2
  #=>def_d1===start
  #=><<lamb return : start (yoo_def_d1)>>
  #=>def_d1===got : **lamb has return**
  #=>def_d1===end

  puts "def_d2[[proc has return]]"
  proc_1 = Proc.new do |x|
    puts "<<proc return : start (#{x})>>"
    return "**proc has return**"
  end
  def_d1 &proc_1
  #=>def_d1===start
  #=><<proc return : start (yoo_def_d1)>>

  puts "def_d2[[BYEBYE!!]]"
end

#執行
def_d2