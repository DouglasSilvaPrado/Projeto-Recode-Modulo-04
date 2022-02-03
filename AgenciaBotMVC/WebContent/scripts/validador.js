function validar(){
	let o = frmContato.origem.value
	let d = frmContato.destino.value
	
	if(o === ""){
		alert('prencha o campo origem')
		o.focus()
		frmContato.origem.focus()
		return false
	}else if(d === ""){
		alert('prencha o campo destino')
		frmContato.destino.focus()
		return false
	}else{
		document.forms["frmContato"].submit()
	}
}

function validar2(){
	let n = frmContato2.nome.value
	let c = frmContato2.cpf.value
	
	if(n === ""){
		alert('prencha o campo nome')
		o.focus()
		frmContato2.nome.focus()
		return false
	}else if(c === ""){
		alert('prencha o campo cpf')
		frmContato2.cpf.focus()
		return false
	}else{
		document.forms["frmContato2"].submit()
	}
}
