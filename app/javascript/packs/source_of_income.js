const prestamo = {
  start(){
    console.log('hola LISTO EL LISTADO DE PRESTAMOS')
    function estaAprobado(){
     var fee = Number($('#fee').html()) 
     var difference = Number($('#source_of_income_difference').val())
     return (diference >= fee)
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
    })

    $("#source_of_income_salary_income").focusout(()=>{
      updateMixed()
    })

    $("#source_of_income_expenses").focusout(()=>{
      updateMixed()
      updateDifference()
    })
  }
}
$( document ).ready(function() {
  prestamo.start()
});
