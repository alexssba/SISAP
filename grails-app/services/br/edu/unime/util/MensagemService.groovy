package br.edu.unime.util

import groovy.time.TimeCategory
import wslite.soap.SOAPVersion

class MensagemService {

    //definindo variável de cliente
    def soapClient
    //Defifindo método para servir como cliente
    def calcula(Integer n1, Integer n2) throws Exception {
        def startDate = new Date()
        def response
        try {
            //Associando a URL do webservice ao objeto cliente soapClient
            soapClient.serviceURL = "http://localhost:8080/SISAP/services/sendMail?wsdl"

            //Definindo um retorno à resposta enviada ao WEBSERVICE
            response = soapClient.send() {
                //Atributos do webservice
                soapNamespacePrefix "soap"
                envelopeAttributes "xmlns:util":"http://util.unime.edu.br/"
                //Corpo da mensagem enviada ao WEBSERVICE
                body {
                    //Método do webservice a fazer a chamada
                    calcula("xmlns:util":"http://util.unime.edu.br/"){

                        mkp.yieldUnescaped "<util:numero1>2</util:numero1>"
                        mkp.yieldUnescaped "<util:numero2>2</util:numero2>"


                    }
                }
            }
        } catch (Exception exception) {
            log.error(exception.message)
            throw exception
        }

        println response.body.calculaResponse.return
        return
    }
}
