feature 'Link list' do
  scenario 'diplay the list on homepage' do
    Link.create(url: 'https://www.google.com', name: 'First Link')
    visit('/')
    within 'ul#links' do
      expect(page).to have_content(Link.first(name: 'First Link'))
    end
  end
end
