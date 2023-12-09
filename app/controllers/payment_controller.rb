class PaymentController < ApplicationController
  def show_payment_form
    render({ :template => "page_templates/payment" })
  end

  def payment_these
    @PV = params.fetch("form_PV_number").to_f
    @APR_percent = params.fetch("form_APR_number").to_f
    @APR_rate = @APR_percent/100
    @Years = params.fetch("form_Years_number").to_f
    @Months = @Years * -12
    @Numerator = @APR_rate * @PV
    @Denominator = 1 - ((1 + @APR_rate)**@Months)
    @result1 = @Numerator * @Denominator
    @PVshow = (@PV).to_fs(:currency)
    @APR_show = (@APR_percent).to_fs(:percentage, {:precision => 4})
    @result = (@result1).to_fs(:currency)

    render({ :template => "page_templates/payment_results" })
  end
end
