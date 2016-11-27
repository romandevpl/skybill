<div class="col-sm-4">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="panel-title">
                Calls
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th>Called</th>
                <th>Duration</th>
                <th>Cost</th>
            </tr>
            </thead>

            <tbody>
            <g:each in="${jsonData?.callCharges?.calls}">
                <tr>
                    <td>${it?.called}</td>
                    <td>${it?.duration}</td>
                    <td>${it?.cost}</td>
                </tr>
            </g:each>
                <tr class="info">
                    <td>TOTAL</td>
                    <td></td>
                    <td>${jsonData?.callCharges?.total}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>