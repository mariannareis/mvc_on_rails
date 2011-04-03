require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe MvcOnRails do

  it "is a module" do
    subject.should be_a(Module)
  end

  it "should start" do
    subject.should respond_to(:start).with(2)
  end

end

