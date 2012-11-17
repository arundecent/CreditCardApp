<%@ page import="org.groovy.creditcard.Customer" %>
<!DOCTYPE html>
<html>
	<head>
	<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
	
		<meta name="layout" content="main">
	</head>
	
	<body>
		Welcome <%= session.username %>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/customer/customerhome')}"><g:message code="default.home.label"/></a></li>
				<g:if test="${session.usertype == 'banker'}">
					<li><g:link class="list" action="list">List Customers</g:link></li>
				</g:if>
				<li><g:link class="create" action="create">New Customer </g:link></li>
				
			</ul>
		</div>
		<br>
		
		<center>
			<g:pieChart title='Card Type' colors="${colors}"
      			labels="${new ArrayList(countByCardType.keySet())}" fill="${'bg,s,efefef'}" dataType='simple' data='${new ArrayList(countByCardType.values())}' />
      		
      		<g:pieChart title='Approvers' colors="${colors}"
      			labels="${new ArrayList(countByApproverID.keySet())}" fill="${'bg,s,efefef'}" dataType='simple' data='${new ArrayList(countByApproverID.values())}' />
      			
     	<br>
     		<g:pieChart title='Card overrides' colors="${colors}"
      			labels="${new ArrayList(countByOverride.keySet())}" fill="${'bg,s,efefef'}" dataType='simple' data='${new ArrayList(countByOverride.values())}' />
      			
     		<g:pieChart title='Accepted vs Rejected' colors="${colors}"
      			labels="${new ArrayList(countCardAcceptance.keySet())}" fill="${'bg,s,efefef'}" dataType='simple' data='${new ArrayList(countCardAcceptance.values())}' />
		<br>
		
		
		</center>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div id="chart_div" class="content scaffold-show" role="main">
		</div>
	</body>
	
	<script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
		
        
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Mushrooms', 3],
          ['Onions', 1],
          ['Olives', 1],
          ['Zucchini', 1],
          ['Pepperoni', 2]
        ]);

        // Set chart options
        var options = {'title':'Cards sold by Card Type',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
</html>