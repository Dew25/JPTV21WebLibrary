
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="w-100 d-flex justify-content-center">Вход в систему</h1>
<div class="w-100 d-flex justify-content-center">
    <div class="card border-0" style="width: 30rem;">
      <div class="card-body">
        <form action="enter" method="POST">
          <div class="mb-2 row">
            <label for="inputLogin" class="col-sm-4 col-form-label d-flex justify-content-end">Логин</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="login" id="inputLogin" value="">
            </div>
          </div>
          <div class="mb-2 row">
            <label for="inputPassword" class="col-sm-4 col-form-label d-flex justify-content-end">Password</label>
            <div class="col-sm-8">
                <input type="password" class="form-control" name="password" id="inputPassword">
            </div>
          </div>
          <div class="mb-2 p-2 row d-flex justify-content-end">
            <input type="submit" class="btn btn-primary col-sm-4" value="Войти" id="inputEnter">
          </div>
        </form>
      </div>
    </div>
</div>
    
