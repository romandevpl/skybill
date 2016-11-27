<div class="row">
    <div class="col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="panel-title">
                    Statement
                </div>
            </div>

            <div class="panel-body">
                <table class="table">
                    <g:set var="statement" value="${jsonData?.statement}"/>
                    <thead>
                    <tr>
                        <th>Generated</th>
                        <td>${statement?.generated}</td>
                    </tr>
                    <tr>
                        <th>Due</th>
                        <td>${statement?.due}</td>
                    </tr>
                    <tr>
                        <th>Period</th>
                        <th>${statement?.period?.from} - ${statement?.period?.to}</th>
                    </tr>
                    <tr class="info">
                        <th>TOTAL</th>
                        <th>${jsonData.total}</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>