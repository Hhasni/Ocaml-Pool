class water =
	object
		inherit Molecules.molecules "water" ([(new Hydrogen.hydrogen)] @ [(new Hydrogen.hydrogen)] @ [(new Oxygen.oxygen)])
end