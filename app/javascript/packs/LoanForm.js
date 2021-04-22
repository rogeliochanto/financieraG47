const LoanForm = {
  start(){
    
    $('#loanTypeInput').change(()=>{
      $('#amount').val('500.000')
      console.log($('#loanTypeInput').val())
    })
    
  }
}
$( document ).ready(function() {
  LoanForm.start()
});