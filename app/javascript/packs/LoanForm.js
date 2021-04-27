const LoanForm = {
  start(){
    var personalTerms = {
      "12 meses":12,
      "24 meses":24,
      "36 meses":36,
    }

    var carTerms = {
      "12 meses":12,
      "24 meses":24,
      "36 meses":36,
      "48 meses":48,
      "60 meses":60,
    }

    var houseTerms = {
      "1 año":12,
      "2 años":24,
      "3 años":36,
      "4 años":48,
      "5 años":60,
      "6 años":72,
      "7 años":84,
      "8 años":96,
    }

    function createOptions(terms){
      $.each(terms,function(key,value){
        $('#term').append($('<option></option>').attr('value',value).text(key))
      })
    }

    $('#loanTypeInput').change(()=>{
      var selectedOption = $('#loanTypeInput').val()
      console.log(selectedOption) 
      $('#amount').val('500.000')
      $('#term').empty()
      switch(selectedOption){
        case 'personal':
          createOptions(personalTerms) 
          $('#rate').val('5%')
          break;
        case 'car':
          createOptions(carTerms) 
          $('#rate').val('4%')
          break;
        case 'house':
          createOptions(houseTerms)
          $('#rate').val('3%')
          break;
      }
    })
  }
}
$( document ).ready(function() {
  LoanForm.start()
});