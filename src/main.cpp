#include "../include/stb_image.h"
#include <cstdint>
#include <cstdio>
#include <string>
#include <iostream>
#include <vector>
#include <math.h>

uint8_t get_intensity(uint8_t *image, int i)
{
    const int channels = 3;
    uint8_t *pixel_offset = image + i * channels;
    uint8_t r = pixel_offset[0];
    uint8_t g = pixel_offset[1];
    uint8_t b = pixel_offset[2];

    return (uint8_t)round(0.299 * r + 0.587 * g + 0.114 * b);
}

int main(int argc, char **argv) {
    /*freopen("output.txt", "w", stdout);*/
    if (argc != 2) {
        std::cout << "Usage: ./ASCII_Image <file_name>";
        return 1;
    }
    std::string file = std::string(argv[1]);

    int width = 10;
    int height = 10;
    int mode = STBI_rgb;
    uint8_t *image = stbi_load(file.c_str(), &width, &height, NULL, mode);
    if (image == NULL) {
        std::cout << "No image found!";
        return 1;
    }

    std::string characters = "       ``.-':_,^=;><+!rc*/z?sLTv)J7(|Fi{C}fI31tlu[Z5Y]2ESwqkP6h9d4VpOGbUAKXHm8RD#$Bg0MNWQ%&@";
    /*std::string characters = " .:-=+*#%@";*/
    /*std::string characters = "    .'`^\",:;Il!i><~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B@$";*/
    std::vector<std::string> output(height, std::string(width, '.'));
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int intensity = get_intensity(image, i * width + j);
            int char_index = (float) intensity / 255 * (characters.size() - 1);
            output[i][j] = (char)characters[char_index];
        }
    }

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            std::cout << output[i][j];
        }
        std::cout << '\n';
    }
    return 0;
}
