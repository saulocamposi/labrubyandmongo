class Clientevo
  #attr_reader :processo_no, :cidade, :comarcadacapital, :reu, :datadearquivamento, :datadadigitacao, :datadaremessa
  attr_accessor :processo_no, :cidade, :comarcadacapital, :reu, :datadearquivamento, :datadadigitacao, :datadaremessa

  def initialize (processo_no, cidade, comarcadacapital, reu, datadearquivamento, datadadigitacao, datadaremessa )
    @processo_no = processo_no
    @cidade = cidade
    @comarcadacapital = comarcadacapital
    @reu = reu
    @datadearquivamento = datadearquivamento
    @datadadigitacao = datadadigitacao
    @datadaremessa = datadaremessa
  end

end

clientevo =  Clientevo.new("processo_no","cidade","comarcadacapital","reu","datadearquivamento","datadadigitacao","datadaremessa")

puts clientevo

puts clientevo.processo_no
puts clientevo.cidade
puts clientevo.comarcadacapital
puts clientevo.reu
puts clientevo.datadearquivamento
puts clientevo.datadadigitacao
puts clientevo.datadaremessa
