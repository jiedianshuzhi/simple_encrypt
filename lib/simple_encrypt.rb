# frozen_string_literal: true

require_relative "simple_encrypt/version"

module SimpleEncrypt
  RULE = ['F', 'T', 'X', 'K', 'L', 'E', 'R', 'B', 'G', 'J']

  def self.encrypt data
    data.to_i.to_s.split('').map{|f| RULE[f.to_i]}.join('')
  end

  def self.decrypt data
    data.to_s.upcase.split('').map{|f| RULE.index(f) || '!'}.join('')
  end

  class Error < StandardError; end

end
