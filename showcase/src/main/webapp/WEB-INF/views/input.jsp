<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tb" uri="http://chkal.de/mvc/toolbox" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>MVC Toolbox - HTML Input</title>
    <link href="${mvc.contextPath}/webjars/bootstrap/3.3.6/dist/css/bootstrap.css" rel="stylesheet">
    <style>
      input.invalid {
        background-color: #f2dede !important;
      }
    </style>
  </head>
  <body>
    <div class="container">

      <h1>HTML Input</h1>

      <tb:messages grouping="true" class="list-unstyled alert" infoClass="alert-success"
                   warningClass="alert-warning" errorClass="alert-danger"/>

      <tb:form action="/input" method="POST" class="form-horizontal">

        <div class="form-group">
          <label for="text1" class="col-sm-2 control-label">Text #1</label>
          <div class="col-sm-10">
            <tb:input id="text1" name="text1" type="text" value="${form.text1}"
                      class="form-control" errorClass="invalid" placeholder="Text #1"/>
            <span id="helpBlock" class="help-block">
              Minimum length: 5
            </span>
          </div>
        </div>

        <div class="form-group">
          <label for="text2" class="col-sm-2 control-label">Text #2</label>
          <div class="col-sm-10">
            <tb:input id="text2" name="text2" type="text" value="${form.text2}"
                      class="form-control" errorClass="invalid" placeholder="Text #2"/>
            <span id="helpBlock" class="help-block">
              Minimum length: 5
            </span>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success">Submit</button>
          </div>
        </div>

      </tb:form>

      <p style="margin-top: 10px">
        <a href="${mvc.contextPath}/">Back to index</a>
      </p>

    </div>
  </body>
</html>