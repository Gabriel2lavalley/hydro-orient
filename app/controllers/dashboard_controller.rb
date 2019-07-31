class DashboardController < ApplicationController
	def index
    @chart = Fusioncharts::Chart.new({
      width: "100%",
      height: "88%",
      type: "mscolumn2d",
      renderAt: "chartContainer",
      dataSource: {
        chart: {
        caption: "Comparison between this year and last year",
        xAxisname: "Quarter",
        yAxisName: "m3",
        numberPrefix: "",
        theme: "fint",
        exportEnabled: "1",
        },
        categories: [{
          category: [
            { label: "Q1 2018" },
            { label: "Q2 2018" },
            { label: "Q3 2018" },
            { label: "Q4 2018" },
            { label: "Q1 2019" },
            { label: "Q2 2019" },
            { label: "Q3 2019" }
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
              :"caption" => 'Monthly water supply among four routers in m3/h',
              :"yaxisname" => 'Water Supply Speed in m3/h',
              :"subcaption" => 'Jan-Jul',
              :"showhovereffect" => '1',
              :"numbersuffix" => ' m3/h',
              :"drawcrossline" => '1',
              :"plottooltext" =>
                '<b>$dataValue</b> of water supply were on $seriesName',
              :"theme" => 'fusion'
            },
            :"categories" => [
              {
                :"category" => [
                  { :"label" => 'Jan' },
                  { :"label" => 'Feb' },
                  { :"label" => 'Mar' },
                  { :"label" => 'Apr' },
                  { :"label" => 'May' },
                  { :"label" => 'Jun' },
                  { :"label" => 'Jul' }
                ]
              }
            ],
            :"dataset" => [
              {
                :"seriesname" => 'Counter 1',
                :"data" => [
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) }
                ]
              },
              {
                :"seriesname" => 'Counter 2',
                :"data" => [
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) }
                ]
              },
              {
                :"seriesname" => 'Counter 3',
                :"data" => [
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) },
                  { :"value" => Random.rand(1000) }
                ]
              },
              {
                :"seriesname" => 'Counter 4',
                :"data" => [
                  { :"value" => Random.rand(100) },
                  { :"value" => Random.rand(100) },
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
              :"caption" => 'Average Speed Of Water Supply',
              :"yaxisname" => 'Speed (in m3/h)',
              :"subcaption" => '[2008-2019]',
              :"numbersuffix" => ' m3/h',
              :"rotatelabels" => '1',
              :"setadaptiveymin" => '1',
              :"theme" => 'fusion'
            },
            :"data" => [
              { :"label" => '2008', :"value" => Random.rand(300...1200) },
              { :"label" => '2009', :"value" => Random.rand(300...1200) },
              { :"label" => '2010', :"value" => Random.rand(300...1200) },
              { :"label" => '2011', :"value" => Random.rand(300...1200) },
              { :"label" => '2012', :"value" => Random.rand(300...1200)},
              { :"label" => '2013', :"value" => Random.rand(300...1200) },
              { :"label" => '2014', :"value" => Random.rand(300...1200) },
              { :"label" => '2015', :"value" => Random.rand(300...1200) },
              { :"label" => '2016', :"value" => Random.rand(300...1200)},
              { :"label" => '2017', :"value" => Random.rand(300...1200) },
              { :"label" => '2018', :"value" => Random.rand(300...1200) },
              { :"label" => '2019', :"value" => Random.rand(300...1200) },
            ]
          }
        }
      )
  end
end
