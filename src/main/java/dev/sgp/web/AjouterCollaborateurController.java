package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class AjouterCollaborateurController extends HttpServlet {

	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// A ajouter
		// req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean",
		// "Hugues"));

		req.getRequestDispatcher("/WEB-INF/views/collab/ajouterCollaborateurs.jsp").forward(req, resp);
		// utilisation du service
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateOfBirth = req.getParameter("dateOfBirth");
		String adresse = req.getParameter("adresse");
		String securitySocial = req.getParameter("securitySocial");

		if (nom != null && prenom != null && dateOfBirth != null && adresse != null && securitySocial != null) {
			LocalDate dateDeNaissance = LocalDate.parse(dateOfBirth, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			int id = collabService.listeCollaborateurs.size() + 1;
			Collaborateur newClient = new Collaborateur();
			newClient.setNom(nom);
			newClient.setPrenom(prenom);
			newClient.setAdresse(adresse);
			newClient.setDateDeNaissance(dateDeNaissance);
			newClient.setDateHeureCreation(ZonedDateTime.now());
			newClient.setMatricule("M" + id);
			newClient.setEmailPro("id" + " " + id + nom + "." + prenom + "@gmail.com");
			newClient.setPhoto("image");
			collabService.sauvegarderCollaborateur(newClient);
			resp.setContentType("text/html");
			resp.getWriter()
					.write("Liste des collaborateurs" + "nom= " + newClient.getNom() + "prenom=" + newClient.getPrenom()
							+ "Adresse=" + newClient.getAdresse() + "Date de Naissance" + newClient.getDateDeNaissance()
							+ "Matricule=" + newClient.getMatricule() + "Date de l'heure="
							+ newClient.getDateHeureCreation() + "Email=" + newClient.getEmailPro() + "Photo:"
							+ newClient.getPhoto());
		} else {
			resp.sendError(400, "All values are missing");
		}
	}
}