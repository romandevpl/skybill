<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Your bill</title>
</head>

<body>
<div class="container-fluid">
    <g:if test="${!error}">
        <div class="alert alert-success">${message}</div>
    </g:if>
    <g:else>
        <div class="alert alert-danger">${message}</div>
    </g:else>


    <g:if test="${jsonData}">
        <div class="page-header">
            <div class="row">
                <div class="col-md-12">
                    <img src="${resource(dir: 'images', file: "Sky_logo.jpg")}" alt="Sky logo" class="img-responsive"/>

                    <h1>Bill</h1>
                </div>
            </div>
        </div>

        <ul class="nav nav-pills">
            <li class="active"><a data-toggle="tab" href="#statement">Statement</a></li>
            <li><a data-toggle="tab" href="#package">Package</a> </li>
            <li><a data-toggle="tab" href="#calls">Call charges</a></li>
            <li><a data-toggle="tab" href="#skyStore">SkyStore</a></li>
        </ul>

        <div class="tab-content">
            <div id="statement" class="tab-pane fade in active">
                <g:include view="billConsumer/tabs/statement.gsp"/>
            </div>

            <div id="package" class="tab-pane fade">
                <g:include view="billConsumer/tabs/package.gsp"/>
            </div>

            <div id="calls" class="tab-pane fade">
                <g:include view="billConsumer/tabs/calls.gsp"/>
            </div>

            <div id="skyStore" class="tab-pane fade">
                <g:include view="billConsumer/tabs/skyStore.gsp"/>
            </div>

        </div>
    </g:if>
</div>
</body>
</html>