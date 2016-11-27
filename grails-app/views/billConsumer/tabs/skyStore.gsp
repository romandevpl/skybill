<div class="col-sm-4">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="panel-title">
                Rentals
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Cost</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${jsonData?.skyStore?.rentals}">
                <tr>
                    <td>${it?.title}</td>
                    <td>${it?.cost}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="panel-title">
                Buy and keep
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Cost</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${jsonData?.skyStore?.buyAndKeep}">
                <tr>
                    <td>${it?.title}</td>
                    <td>${it?.cost}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>