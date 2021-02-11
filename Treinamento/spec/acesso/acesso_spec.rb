describe "Meu primeiro script"do
    it "Visitar a página"do
        visit "https://www.dimepkairos.com.br/"
        expect(page.title).to eql "kairos"
        puts ""
        puts "O nome da página é:" 
        puts page.title
    end
end