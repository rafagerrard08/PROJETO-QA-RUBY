class AvengersHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put (avenger)
    self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do
    #desenvolvimento guiado por teste
    it 'deve adicionar um vingador ' do        
        hq = AvengersHeadQuarter.new

        hq.put('spiderman')
        expect(hq.list).to include [spiderman]
    
    end

    it 'deve adicionar uma lista de vingadores' do        
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('hulk')
        hq.put('spiderman')

        res = hq.list.size >0

        expect(res).to be true
        expect(hq.list.size).to be >0 
        #ou 
        include 'hulk' #verifica se foi add

    end
        it 'thor deve ser o primeiro da lista' do
            hq = AvengersHeadQuarter.new 

            hq.put('thor')
            
            expect(hq.list).to end_with('ironman')
        end
it 'deve conter o sobrenome' do
    avenger = 'peter parker'
    expect(avenger).to match(/pap/)
    
end
    end
