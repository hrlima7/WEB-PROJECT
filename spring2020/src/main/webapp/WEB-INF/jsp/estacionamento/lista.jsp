<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
  
  <tags:templete title="Lista de estacionamento">
	<h1>Estacionamentos cadastrados</h1>
	${msg}
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Endereço</th>
			<th>Vagas</th>
			<th>Preço</th>
			<th></th>
		</tr>
		<c:forEach items="${estacionamentos }" var="e">
			<tr>
				<td>${e.nome }</td>
				<td>${e.endereco }</td>
				<td>${e.vagas }</td>
				<td>${e.preco }</td>
				<td>
					<c:url value="/estacionamento/editar/${e.codigo }" var="link"/>
					<a href="${link}" class="btn btn-primary btn-sm">Editar</a>
					<button type="button" onclick="codigo.value = ${e.codigo}" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#excluirModal">
	 					Excluir
					</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<!-- Modal -->
	<div class="modal fade" id="excluirModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	       <h3> Realmente deseja excluir o estacionamento?</h3> 
	     
	      </div>
	      <div class="modal-footer">
	      	<c:url value="/estacionamento/excluir" var="action"/>
	      	<form action="${action }" method="post">
	      		<input type="hidden" name="codigo" id="codigo">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
		        <button type="submit" class="btn btn-danger">Excluir</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
	

  </tags:templete>