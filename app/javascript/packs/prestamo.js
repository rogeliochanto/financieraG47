const prestamo = {
  start(){
    console.log('LISTO EL LISTADO DE PRESTAMOS')
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
      var denominador = (1-(Math.pow(1 + interes,-plazo)))
      return monto * interes / denominador
    }
    
    function createOptions(terms){
      $('#period').empty()
      $.each(terms,function(key,value){
        $('#period').append($('<option></option>').attr('value',value).text(key))
      })
    }
    
    function updatePayment(){
      var monto = Number($('#amount').val()) 
      var plazo = Number($('#period').val())
      var interes = Number($('#rate').val().replace('%', ''))/100
      var cuota = calculo(monto, plazo, interes)
      $("#cuota").val(Math.round(cuota))
    }

    $('#loanTypeInput').change(()=>{
      var selectedOption = $('#loanTypeInput').val()
      $('#amount').val('500000')
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
      updatePayment()
    })

    $("#amount").focusout(()=>{
      updatePayment()
    })

    $("#rate").focusout(()=>{
      updatePayment()
    })

    $("#period").change(()=>{
      updatePayment()
      //updateFormat()
    })
  }
}
$( document ).ready(function() {
  prestamo.start()
});
