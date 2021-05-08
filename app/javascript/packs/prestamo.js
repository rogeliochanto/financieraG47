const prestamo = {
  start(){
    console.log('hola LISTO EL LISTADO DE PRESTAMOS')
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
      console.log('calculando')
      var denominador = (1-(Math.pow(1 + interes,-plazo)))
      return monto * interes / denominador
    }
    
    function createOptions(terms){
      $('#loan_term').empty()
      $.each(terms,function(key,value){
        $('#loan_term').append($('<option></option>').attr('value',value).text(key))
      })
    }
    
    function updatePayment(){
      var monto = Number($('#loan_amount').val()) 
      var plazo = Number($('#loan_term').val())
      var interes = Number($('#loan_interest').val().replace('%', ''))/100
      var loan_fee = calculo(monto, plazo, interes)
      $("#loan_fee").val(Math.round(loan_fee))
    }
    
    $('#loan_kind').change(()=>{
      var selectedOption = $('#loan_kind').val()
      console.log(selectedOption)
      $('#loan_amount').val('500000')
      switch(selectedOption){
        case 'personal':
          createOptions(personalTerms) 
          $('#loan_interest').val('5%')
          break;
        case 'vehicle':
          createOptions(carTerms) 
          $('#loan_interest').val('4%')
          break;
        case 'real_state':
          createOptions(houseTerms)
          $('#loan_interest').val('3%')
          break;
      }
      updatePayment()
    })
    $("#loan_amount").focusout(()=>{
      updatePayment()
    })

    $("#loan_interest").focusout(()=>{
      updatePayment()
    })

    $("#loan_term").change(()=>{
      updatePayment()
      //updateFormat()
    })
  }
}
$( document ).ready(function() {
  prestamo.start()
});
