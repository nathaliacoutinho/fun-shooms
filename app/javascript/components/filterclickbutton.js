function filterClickButton() {
  const resultContent = $('.result-content')
  const resultLoader = $('.result-loader')
  const filters = $('.filter input')

  // Register events
  filters.click(getResults)

    // Event handlers
    function getResults() {
      const filters = getFilters().join('|')
        $.ajax({
        url: '/filter',
        dataType: 'script',
        data: {
        'filter': filters
        },
          method: 'POST'
        })
    }

    function getFilters() {
      const checkedFilters = []
        $('.filter :checked').each(function() {
          checkedFilters.push($(this).val())
      })
      return checkedFilters
    }
}
export { filterClickButton };
