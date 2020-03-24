package br.com.roma.spring.dao.impl;

import br.com.roma.spring.dao.EstacionamentoDAO;
import br.com.roma.spring.entity.Estacionamento;
import org.springframework.stereotype.Repository;


@Repository
public class EstacionamentoDAOImpl extends GenericDAOImpl<Estacionamento, Integer> implements EstacionamentoDAO{

}