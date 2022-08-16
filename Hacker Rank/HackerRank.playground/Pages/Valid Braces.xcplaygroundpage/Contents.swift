import Foundation

func validBraces(_ string:String) -> Bool {
	var stack:[String] = []
	var isValid = true
  for caracters in string {
	  //Empilha abrir elemento
	  if ["(","[","{"].contains(caracters) {
		  stack.append(String(caracters))
	  }
	  //Fechando algum elemento
	  if [")","]","}"].contains(caracters) {
		  //Remove ultimo elemento aberto
		  let top = stack.removeLast()
		  //Valida se elementos são compatíveis
		  switch caracters {
		  case ")":
			  isValid = isValid && (top == "(")
		  case "]":
			  isValid = isValid && (top == "[")
		  case "}":
			  isValid = isValid && (top == "{")
		  default:
			  isValid = false
		  }
	  }
  }
	//Pilha tem que estar sem nenhum elemento ainda aberto E
	// todos os pares tem que ser compatíveis
	return isValid && stack.isEmpty
}

validBraces("[)")
