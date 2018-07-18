require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    idx = 0
    len = 0
    cnt = 0
    while idx < self.size()
      if ["!","?","."].include?(self[idx])
        if len > 0
          cnt+=1
        end
        len = 0
      else
        len+=1
      end
      idx+=1
    end
    return cnt
  end
end
