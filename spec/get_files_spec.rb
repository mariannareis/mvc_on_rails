require ("getfiles")

describe "Get files" do

  it "should return a array of all archives in a directory" do
    files = GetFiles.new
    files.get_rb_files_in_a_directory("exemplo_site").should have(36).files
  end

  it "should read the first line of one file" do
    files = GetFiles.new
    files.get_rb_files_in_a_directory("exemplo_site")
    files.read_the_first_line_of_each_file_in_a_directory("exemplo_site").should == "class ApplicationController < ActionController::Base\n"
  end

end

