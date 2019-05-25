
public class Netflix {

	public static void main(String[] args) {
		Movie fg = new Movie("Forrest Gump", 10);
		Movie shrek = new Movie("Shrek", 7);
		Movie mnt = new Movie("My Neighbor Totoro", 9);
		Movie cb = new Movie("Corpse Bribe", 8);
		Movie fn = new Movie("Finding Nemo", 6);
		NetflixQueue nq = new NetflixQueue();
		nq.addMovie(fg);
		nq.addMovie(cb);
		nq.addMovie(mnt);
		nq.addMovie(shrek);
		nq.addMovie(fn);
		nq.sortMoviesByRating();
		nq.printMovies();
		System.out.println("The best movie is "+nq.getBestMovie());
		System.out.println("The second best movie is "+mnt);
		System.out.println(fg.getTicketPrice());
         
	}
}
