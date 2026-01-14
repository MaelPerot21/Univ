package Solvers.Backtrack;

import Datas.CGrille9x9;
import Solvers.Factory.SolverFactory;

import java.util.stream.IntStream;

public class BacktrackSolver implements SolverFactory {

    private final static int NO_VALUE = 0;
    private final static int BOARD_SIZE = 9;
    private final static int SUBSECTION_SIZE = 3;
    private final static int MIN_VALUE = 1;
    private final static int MAX_VALUE = 9;
    private final static int BOARD_START_INDEX = 0;

    public CGrille9x9 solve(CGrille9x9 grid) {
        solver(grid);
        return grid;
    }

    private boolean solver(CGrille9x9 grid) {
        for (int row = BOARD_START_INDEX; row < BOARD_SIZE; row++) {
            for (int column = BOARD_START_INDEX; column < BOARD_SIZE; column++) {
                if (grid.get(column+1, row+1) == NO_VALUE) {
                    for (int k = MIN_VALUE; k <= MAX_VALUE; k++) {
                        grid.set(column+1, row+1, k);
                        if (isValid(grid, row, column) && solver(grid)) {
                            return true;
                        }
                        grid.set(column+1,row+1,NO_VALUE);
                    }
                    return false;
                }
            }
        }
        return true;
        //       }
    }

    private boolean isValid(CGrille9x9 grid, int row, int column) {
        return (rowConstraint(grid, row)
                && columnConstraint(grid, column)
                && subsectionConstraint(grid, row, column));
    }

    private boolean rowConstraint(CGrille9x9 grid, int row) {
        boolean[] constraint = new boolean[BOARD_SIZE];
        return IntStream.range(BOARD_START_INDEX, BOARD_SIZE)
                .allMatch(column -> checkConstraint(grid, row, constraint, column));
    }

    private boolean columnConstraint(CGrille9x9 grid, int column) {
        boolean[] constraint = new boolean[BOARD_SIZE];
        return IntStream.range(BOARD_START_INDEX, BOARD_SIZE)
                .allMatch(row -> checkConstraint(grid, row, constraint, column));
    }

    private boolean subsectionConstraint(CGrille9x9 grid, int row, int column) {
        boolean[] constraint = new boolean[BOARD_SIZE];
        int subsectionRowStart = (row / SUBSECTION_SIZE) * SUBSECTION_SIZE;
        int subsectionRowEnd = subsectionRowStart + SUBSECTION_SIZE;

        int subsectionColumnStart = (column / SUBSECTION_SIZE) * SUBSECTION_SIZE;
        int subsectionColumnEnd = subsectionColumnStart + SUBSECTION_SIZE;

        for (int r = subsectionRowStart; r < subsectionRowEnd; r++) {
            for (int c = subsectionColumnStart; c < subsectionColumnEnd; c++) {
                if (!checkConstraint(grid, r, constraint, c)) return false;
            }
        }
        return true;
    }

    boolean checkConstraint(
            CGrille9x9 grid,
            int row,
            boolean[] constraint,
            int column) {
        if (grid.get(column+1, row+1) != NO_VALUE) {
            if (!constraint[grid.get(column+1, row+1) - 1]) {
                constraint[grid.get(column+1, row+1) - 1] = true;
            } else {
                return false;
            }
        }
        return true;
    }
}
