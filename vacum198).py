class VacuumCleaner:
    def __init__(self, initial_position=0, environment_size=2):
        self.position = initial_position
        self.environment_size = environment_size
        self.dirty_cells = [1, 1]  # 1 represents dirty, 0 represents clean

    def print_environment(self):
        print("Environment: ", end="")
        for i in range(self.environment_size):
            if self.dirty_cells[i] == 1:
                print(f"[{i+1}: Dirty] ", end="")
            else:
                print(f"[{i+1}: Clean] ", end="")
        print()

    def clean(self):
        self.print_environment()
        while any(self.dirty_cells):
            if self.dirty_cells[self.position] == 1:
                print(f"At position {self.position+1}: Cleaning")
                self.dirty_cells[self.position] = 0
            else:
                print(f"At position {self.position+1}: Already clean")
            self.move()

    def move(self):
        if self.position == 0:
            self.position = 1
        else:
            self.position = 0

# Example usage:
vacuum = VacuumCleaner()
vacuum.clean()
