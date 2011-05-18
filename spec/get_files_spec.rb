require ("getfiles")

describe "GetFiles" do

  it "should return a array of all archives in a directory" do
    dir = File.dirname(__FILE__)
    files = GetFiles.new
    files.get_rb_files_in_a_directory(dir).should have(3).files
  end

  it "should read the first line of one file" do
    dir = File.dirname(__FILE__)
    files = GetFiles.new
    files.get_rb_files_in_a_directory(dir)
    files.read_the_first_line_of_each_file_in_a_directory(dir).should == "require (\"getfiles\")\n"
  end

end

