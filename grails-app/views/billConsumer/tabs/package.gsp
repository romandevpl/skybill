<div class="row">
    <div class="col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="panel-title">
                    Subscriptions
                </div>
            </div>

            <div class="panel-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Cost</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jsonData?.package?.subscriptions}">
                        <tr>
                            <td>${it?.type}</td>
                            <td>${it?.name}</td>
                            <td>${it?.cost}</td>
                        </tr>
                    </g:each>
                        <tr class="info">
                            <td>TOTAL</td>
                            <td></td>
                            <td>${jsonData?.package?.total}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>