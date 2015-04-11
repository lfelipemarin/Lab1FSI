/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ejercicios.punto5d;

import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import org.jdom2.*;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

/**
 *
 * @author dx
 */
public class CreatorEntity {

    private String nombre;
    private String raiz;
    private final HashMap<String, String> atributos;
    private Document doc;
    private Element root;

    public CreatorEntity() {
        atributos = new HashMap<>();
    }

    /**
     *
     * @return documento jdom xml con el contenido de la entidad
     * @throws IOException si hay un error al guardar el archivo en disco
     */
    public Document crearXML() throws IOException {
        if ("".equals(nombre) || "".equals(raiz) || 0 == atributos.size()) {
            return null;
        }
        root = new Element(raiz);
        doc = new Document(root);
        for (String s : atributos.keySet()) {
            Element e = new Element(s).addContent(atributos.get(s));
            getDoc().getRootElement().addContent(e);
        }
        try {
            // new XMLOutputter().output(doc, System.out);
            XMLOutputter xmlOutput = new XMLOutputter();

            // display nice nice
            xmlOutput.setFormat(Format.getPrettyFormat());
            xmlOutput.output(getDoc(), new FileWriter(nombre + ".xml"));

            System.out.println("Archivo Guardado!");
            return doc;

        } catch (IOException e) {
            System.out.println(e.getMessage());
            return null;
        }

    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the raiz
     */
    public String getRaiz() {
        return raiz;
    }

    /**
     * @param raiz the raiz to set
     */
    public void setRaiz(String raiz) {
        this.raiz = raiz;
    }

    /**
     * @return the atributos
     */
    public HashMap<String, String> getAtributos() {
        return atributos;
    }

    public void addAtribute(String clave, String valor) {
        atributos.put(clave, valor);
    }

    /**
     * @return the doc
     */
    public Document getDoc() {
        return doc;
    }

    /**
     * @return una cadena de texto con el contenido del archivo xml
     */
    public String getText() {
        return new XMLOutputter().outputString(doc);
    }

}
