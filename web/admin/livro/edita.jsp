<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>
<div class="card">
    <div class="card-header">
        <h5 class="title">Adiciona Livro</h5>
    </div>
    <div class="card-body">
        <!--MODIFICAR PARA ADD-->
        <form action="UploadWS" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="urldestino" value="LivroWS">
            <div class="row">
                <div class="col-md-3 pr-md-1">
                    <div class="form-group">
                        <label>Id</label>
                        <input type="text" class="form-control" name="txtId" placeholder="Id" value="${obj.id}" readonly="true">
                    </div>
                </div>
            </div>
                    <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" name="txtNome" required class="form-control" placeholder="Nome" value="${obj.nome}">
                    </div>
                </div>
            </div>
                    <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Genero</span>
                          </div>
                            <select name ="txtGenero"  > 
                                <c:forEach items ="${lista}" var ="obj">
                                <option value = "${obj.idgenero}">${obj.genero.nome}</option>
                                </c:forEach>
                            </select>
                         
                        </div>
                      </div>
            <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Autor</span>
                          </div>
                            <select name ="txtAutor"  > 
                                <c:forEach items ="${lista}" var ="obj">
                                <option value = "${obj.idautor}">${obj.autor.nome}</option>
                                </c:forEach>
                            </select>
                         
                        </div>
                      </div>
            <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Editora</span>
                          </div>
                            <select name ="txtEditora"  > 
                                <c:forEach items ="${lista}" var ="obj">
                                <option value = "${obj.ideditora}">${obj.editora.nome}</option>
                                </c:forEach>
                            </select>
                         
                        </div>
                      </div>                    
            
            <div class="form-group-file">
                        <label for="file">Classificação</label>
                        <input type="file" name="txtClassificacao" required class="form-control form-control-file">
                    </div>
                    <div class="form-group-file">
                        <label for="file">Foto</label>
                        <input type="file" name="txtFoto" required class="form-control form-control-file">
                    </div>
          
      
                    
            
            <button class="btn btn-primary btn-round text-center" type="submit">
                <i class="tim-icons icon-cloud-upload-94"></i> Salvar
            </button>
            <a class="btn btn-primary btn-round text-center" href="LivroWS?acao=list">
                <i class="tim-icons icon-bullet-list-67"></i> Listar
            </a>
        </form>
    </div>
    <div class="card-footer">
        <c:if test = "${not empty msg}">
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                ${msg}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                </button>
            </div>
        </c:if>
    </div>
</div>
</div>
<%@include file="../rodape.jsp" %>