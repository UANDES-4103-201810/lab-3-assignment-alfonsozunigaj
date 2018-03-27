class User < ApplicationRecord

  def find_all_transactions()
    return Transaction.find_by_user_id(id)
  end

  def find_all_tickets_bought()
    all_transactions = find_all_transactions
    all_tickets = []
    all_transactions.all.each do |transaction|
      ticket = Ticket.find(transaction.id)
      all_tickets.append(ticket)
    end
    return all_tickets
  end

  def find_all_tickets_bought_between_dates(first_date, last_date)
    all_transactions = find_all_transactions
    all_tickets = []
    all_transactions.all.each do |transaction|
      if transaction.time_of_trans > first_date || transaction.time_of_trans < last_date
        ticket = Ticket.find(transaction.id)
        all_tickets.append(ticket)
      end
    end
    return all_tickets
  end

  def most_expensive_ticket_bought()
    all_tickets = find_all_tickets_bought
    maximum_found = null
    all_tickets.all.each do |ticket|
      if maximum_found == null || maximum_found < ticket.price
        maximum_found = ticket.price
      end
    end
    return maximum_found
  end


  def most_expensive_ticket_bought_between(first_date, last_date)
    all_tickets = find_all_tickets_bought_between_dates(first_date, last_date)
    maximum_found = null
    all_tickets.all.each do |ticket|
      if maximum_found == null || maximum_found < ticket.price
        maximum_found = ticket.price
      end
    end
    return maximum_found
  end


  def last_event()
    tickets = find_all_tickets_bought
    last_one = tickets.last

    return last_one.event.name
  end
end
