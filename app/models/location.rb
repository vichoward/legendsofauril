class Location < ActiveRecord::Base
  has_many :links
  
  def upload(upload)
     
     self.display_name =  upload[:datafile].original_filename
     self.directory = "/images/"
     directory = "public" + self.directory
     # create the file path
     self.save
     self.name = self.id.to_s + '_' + self.display_name
     self.save
     path = File.join(directory, self.name)
     # write the file
     unless File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
       DataFile.delete(self.id)
     end
  end
  def download
    #type = File.extname(self.name)
    url = self.directory + CGI.escape(self.name)
    url = url.gsub(/\+/, ' ')
    return url
  end
end
