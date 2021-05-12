const prestamo = {
  start(){
    function estaAprobado(){
     var fee = Number($('#fee').data('amount')) 
     console.log(fee)
     var difference = Number($('#source_of_income_difference').val())
     if (difference >= fee){$('#source_of_income_approval').prop('checked',true)}
     else {$('#source_of_income_approval').prop('checked',false)}
    }
    function ingresos(){
      var salary = Number($('#source_of_income_salary_income').val())
      var independent = Number($('#source_of_income_independent').val())
      return (salary + independent)
    }
    function updateMixed(){
      $('#source_of_income_mixed_income').val(ingresos())
    }
    function updateDifference(){
      var expences = Number($("#source_of_income_expenses").val())

      $('#source_of_income_difference').val(ingresos() - expences)
    }
    $("#source_of_income_independent").focusout(()=>{
      updateMixed()
      estaAprobado()
    })

    $("#source_of_income_salary_income").focusout(()=>{
      updateMixed()
      estaAprobado()
    })

    $("#source_of_income_expenses").focusout(()=>{
      updateMixed()
      updateDifference()
      estaAprobado()
    })
  }
}
$( document ).ready(function() {
  prestamo.start()
});
