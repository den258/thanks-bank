
class GeneralUser::GivesController < ApplicationController

  def give_you_index

    @gives = build_gives(:give_you)

  end

  def give_you_account_no_index

    @account_no_set = build_account_no_set(:give_you)

  end

  def give_me_index

    @gives = build_gives(:give_me)

  end

  def give_me_account_no_index

    @account_no_set = build_account_no_set(:give_me)

  end

  private

  def build_gives(you_or_me)

    gives = ''

    User.all.each do | user |
      gives += ' ' + user.send(you_or_me)
    end

    gives.split(' ').uniq

  end

  def build_account_no_set(you_or_me)

    account_no_set = []

    User
      .where("#{you_or_me.to_s} like '%#{params[you_or_me]}%'")
      .each do | user |
      account_no_set << user.account_no
    end

    account_no_set

  end

end
