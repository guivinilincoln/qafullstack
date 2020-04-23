class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do # Describe é um agrupador de cenários (it).
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end
end