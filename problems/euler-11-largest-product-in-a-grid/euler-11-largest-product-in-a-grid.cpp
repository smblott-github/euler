#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <sstream>
#include <string>

const int kAdjacentNumbers = 4;

long long get_largest_product(const std::vector<std::vector<int>> &grid)
{
    long long largest_product = 0;
    int rows = grid.size();
    int columns = grid[0].size();

    for (int i = 0; i < rows; ++i)
    {
        for (int j = 0; j < columns; ++j)
        {
            // Horizontal
            if (j + kAdjacentNumbers - 1 < columns)
            {
                long long product = 1;
                for (int k = 0; k < kAdjacentNumbers; ++k)
                {
                    product *= grid[i][j + k];
                }
                largest_product = std::max(largest_product, product);
            }

            // Vertical
            if (i + kAdjacentNumbers - 1 < rows)
            {
                long long product = 1;
                for (int k = 0; k < kAdjacentNumbers; ++k)
                {
                    product *= grid[i + k][j];
                }
                largest_product = std::max(largest_product, product);
            }

            // Diagonal down-right
            if (j + kAdjacentNumbers - 1 < columns && i + kAdjacentNumbers - 1 < rows)
            {
                long long product = 1;
                for (int k = 0; k < kAdjacentNumbers; ++k)
                {
                    product *= grid[i + k][j + k];
                }
                largest_product = std::max(largest_product, product);
            }

            // Diagonal up-right
            if (j + kAdjacentNumbers - 1 < columns && i - kAdjacentNumbers + 1 >= 0)
            {
                long long product = 1;
                for (int k = 0; k < kAdjacentNumbers; ++k)
                {
                    product *= grid[i - k][j + k];
                }
                largest_product = std::max(largest_product, product);
            }
        }
    }

    return largest_product;
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        std::cerr << "Usage: " << argv[0] << " <grid_file>" << std::endl;
        return 1;
    }

    std::ifstream grid_file(argv[1]);
    if (!grid_file.is_open())
    {
        std::cerr << "Error opening grid file: " << argv[1] << std::endl;
        return 1;
    }

    std::vector<std::vector<int>> grid;

    std::string line;
    while (std::getline(grid_file, line))
    {
        std::istringstream iss(line);
        std::vector<int> row;
        int number;
        while (iss >> number)
        {
            row.push_back(number);
        }
        grid.push_back(row);
    }

    grid_file.close();

    long long largest_product = get_largest_product(grid);
    std::cout << "Largest product of " << kAdjacentNumbers << " adjacent numbers: " << largest_product << std::endl;

    return 0;
}
