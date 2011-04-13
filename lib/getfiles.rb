class GetFiles

    def expand_dirs_to_files *path
      extensions = ['rb']#, 'erb', 'rhtml', 'haml', 'builder']

      path.flatten.map { |entry|
        next unless File.exist? entry
        if File.directory? entry
          Dir[File.join(entry, '**', "*.{#{extensions.join(',')}}")]
        else
          entry
        end
      }.flatten
#      File.join(File.dirname(__FILE__), path)

    end

  def get_rb_files_in_a_directory(path)
    files = expand_dirs_to_files(path)
    return files
#   files = file_sort(files)
  end

  def read_the_first_line_of_each_file_in_a_directory(path)
    files = get_rb_files_in_a_directory(path)
    first_line_of(files[0])
  end

  def first_line_of(file)
    return File.readlines(file)[0] #retornando a primeira linha.....
  end

end

