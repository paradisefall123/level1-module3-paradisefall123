import info.gridworld.world.World;

public class GridWorld {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		World w=new World();
		w.show();
		Location l=new Location(8,4);
		Bug b=new Bug();
		w.add(l, b);
		
	}

}
