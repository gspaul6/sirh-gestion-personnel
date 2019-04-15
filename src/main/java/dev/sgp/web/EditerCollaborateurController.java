/**
 * 
 */
package dev.sgp.web;

/**
 * @author gurpr
 *
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// resp.getWriter().write("Hello ListerCollaborateursController");

		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String matriculeParam = req.getParameter("matricule");
		if (matriculeParam != null && !matriculeParam.equals("")) {
			resp.setContentType("text/html");
			resp.getWriter().write("<h1>Liste des collaborateurs</h1>" + "<ul>" + "<li>Matricule=" + matriculeParam);

		} else {

			resp.sendError(400, "un matricule est attendu");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		if (matriculeParam != null && titreParam != null && nomParam != null && prenomParam != null) {
			resp.setStatus(200);
			resp.setContentType("text/html");
			resp.getWriter().write("<h1>Liste des collaborateurs</h1>" + "Matricule=" + matriculeParam + "titre="
					+ titreParam + "nom=" + nomParam + "prenom=" + prenomParam);

		} else {

			if (matriculeParam == null && titreParam != null && nomParam != null && prenomParam != null) {
				resp.sendError(400, "les parameter suivant : matricule est vide");
			}

			else if (matriculeParam == null && titreParam == null && nomParam != null && prenomParam != null) {
				resp.sendError(400, "les parameter suivant:matricule et titre est vide");
			}

			else if (matriculeParam == null && titreParam == null && nomParam == null && prenomParam != null) {
				resp.sendError(400, "les parameter suivant :matricule, titre et nom est vide");
			}

			else if (matriculeParam == null && titreParam == null && nomParam == null && prenomParam == null) {
				resp.sendError(400, "les parameter suivant:matricule, titre, nom,prenom est vide");
			}
		}

	}
}