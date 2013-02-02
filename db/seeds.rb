
Cpa.delete_all
Cpa.create(email: 'cpa1@gmail.com', password: 'cpa1', password_confirmation: 'cpa1', name: 'Valentine')
Cpa.create(email: 'cpa2@gmail.com', password: 'cpa2', password_confirmation: 'cpa2', name: 'Dan')

Client.delete_all
Client.create(cpa_id: Cpa.first.id, email: 'client1@gmail.com', password: 'client1', password_confirmation: 'client1', first: 'John', last: 'Kovalski')
Client.create(cpa_id: Cpa.last.id, email: 'client2@gmail.com', password: 'client2', password_confirmation: 'client2', first: 'Mark', last: 'Avreliy')

Bill.delete_all
Bill.create(amount_due: '100.00', amount_paid: '100.00', paid_mode: '1', status: '1', note: 'all paid')
Bill.create(amount_due: '1000.00', amount_paid: '100.00', paid_mode: '0', status: '0', note: 'partly paid')