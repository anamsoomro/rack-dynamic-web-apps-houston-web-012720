class Application

  def call(env)
    resp = Rack::Response.new
    # resp creates an instance with all the response methods from rack 

    # resp.write "Hello, World"
    # resp.finish


    # kernel is a module that holds alot of rubys useful bits
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)


    # prints three random numbers
 
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
 
    # prints if you lost or if you won
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end


end
