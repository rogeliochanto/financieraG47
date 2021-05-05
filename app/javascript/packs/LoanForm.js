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
    function calculo(monto, plazo, interes){
      console.log('el monto es: ', monto)
      console.log('el plazo es: ', plazo)
      console.log('el interes es:', interes)
      return monto + plazo + cuota
    }

    function createOptions(terms){
      $.each(terms,function(key,value){
        $('#term').append($('<option></option>').attr('value',value).text(key))
      })
    }

    $('#loanTypeInput').change(()=>{
      var selectedOption = $('#loanTypeInput').val()
      console.log(selectedOption) 
      $('#amount').val('500000')
      $('#term').empty()
      switch(selectedOption){
        case 'personal':
          createOptions(personalTerms) 
          $('#rate').val('0.05')
          $("#cuota").val(17)
          break;
        case 'car':
          createOptions(carTerms) 
          $('#rate').val('0.04')
          break;
        case 'house':
          createOptions(houseTerms)
          $('#rate').val('0.03')
          break;
      }
    })
    $("#amount").focusout(()=>{
      var rate = Number($("#rate").val())
      var monto = Number($("#amount").val())
      //$("#cuota").val(Math.pow(monto, 0.5))
      var denominador = (1-(Math.pow(1 + rate,-60)))
      console.log('DENOMINADOR', denominador)
      var cuota = calculo(monto,60,rate) 
      //$("#cuota").val(rate * monto / denominador)
      $("#cuota").val(cuota)
    })

    //$("#amount").change(()=>{
      
      //$("#cuota").val(Math.pow(monto, 0.5))
    //})
  }
}
$( document ).ready(function() {
  LoanForm.start()
});