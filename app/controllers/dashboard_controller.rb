class DashboardController < ApplicationController
	def index
    @chart = Fusioncharts::Chart.new({
      width: "100%",
      height: "88%",
      type: "mscolumn2d",
      renderAt: "chartContainer",
      dataSource: {
        chart: {
        caption: "Comparison of Quarterly Revenue",
        subCaption: "Harry's SuperMart",
        xAxisname: "Quarter",
        yAxisName: "Amount ($)",
        numberPrefix: "$",
        theme: "fint",
        exportEnabled: "1",
        },
        categories: [{
          category: [
            { label: "Q1" },
            { label: "Q2" },
            { label: "Q3" },
            { label: "Q4" },
            { label: "Q5" },
            { label: "Q6" },
            { label: "Q7" }
          ]
        }],
        dataset: [
          {
            seriesname: "Previous Year",
            data: [
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) }
            ]
          },
          {
            seriesname: "Current Year",
            data: [
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) },
              { value: Random.rand(99999) }
            ]
          }
      	]
      }
    })

  end

  def chart2
  	@chart =
      Fusioncharts::Chart.new(
        {
          width: '100%',
          height: '88%',
          type: 'msline',
          renderAt: 'chartContainer',
          dataSource: {
            :"chart" => {
              :"caption" => 'Reach of Social Media Platforms amoung youth',
              :"yaxisname" => '% of youth on this platform',
              :"subcaption" => '2015-2019',
              :"showhovereffect" => '1',
              :"numbersuffix" => '%',
              :"drawcrossline" => '1',
              :"plottooltext" =>
                '<b>$dataValue</b> of youth were on $seriesName',
              :"theme" => 'fusion'
            },
            :"categories" => [
              {
                :"category" => [
                  { :"label" => '2015' },
                  { :"label" => '2016' },
                  { :"label" => '2017' },
                  { :"label" => '2018' },
                  { :"label" => '2019' }
                ]
              }
            ],
            :"dataset" => [
              {
                :"seriesname" => 'Facebook',
                :"data" => [
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) }
                ]
              },
              {
                :"seriesname" => 'Instagram',
                :"data" => [
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) }
                ]
              },
              {
                :"seriesname" => 'LinkedIn',
                :"data" => [
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) }
                ]
              },
              {
                :"seriesname" => 'Twitter',
                :"data" => [
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) }
                ]
              }
            ]
          }
        }
      )
  end

  def chart3
  	@chart =
      Fusioncharts::Chart.new(
        {
          width: '100%',
          height: '88%',
          type: 'line',
          renderAt: 'chartContainer',
          dataSource: {
            :"chart" => {
              :"caption" => 'Average Fastball Velocity',
              :"yaxisname" => 'Velocity (in mph)',
              :"subcaption" => '[2008-2019]',
              :"numbersuffix" => ' mph',
              :"rotatelabels" => '1',
              :"setadaptiveymin" => '1',
              :"theme" => 'fusion'
            },
            :"data" => [
              { :"label" => '2008', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2009', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2010', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2011', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2012', :"value" => Random.rand(0.1...99.99)},
              { :"label" => '2013', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2014', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2015', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2016', :"value" => Random.rand(0.1...99.99)},
              { :"label" => '2017', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2018', :"value" => Random.rand(0.1...99.99) },
              { :"label" => '2019', :"value" => Random.rand(0.1...99.99) },
            ]
          }
        }
      )
  end
end
