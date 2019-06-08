import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorld {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		World w = new World();
		Flower f = new Flower();
		Bug b = new Bug();
		Bug t = new Bug(Color.BLUE);
		w.show();
		Location l = new Location(9, 3);
		Location n = new Location(6, 4);
		b.turn();
		for (int i = 0; i < 10; i++) {
			for (int q = 0; q < 10; q++) {
				Location v = new Location(q, i);
				Flower x = new Flower();
				w.add(v, x);
				w.add(l, b);
				w.add(n, t);
			}
		}
	}

}
